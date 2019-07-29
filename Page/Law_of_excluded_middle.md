In logic, the LAW OF EXCLUDED MIDDLE (or the PRINCIPLE OF EXCLUDED MIDDLE) states that for any proposition, either that proposition is true or its negation is true. It is one of the so called three laws of thought, along with the law of noncontradiction, and the law of identity. The law of excluded middle is logically equivalent to the law of noncontradiction by De Morgan's laws. However, no system of logic is built on just these laws, and none of these laws provide inference rules, such as modus ponens or De Morgan's laws.

The law is also known as the LAW (or PRINCIPLE) OF THE EXCLUDED THIRD, in Latin _PRINCIPIUM TERTII EXCLUSI_. Another Latin designation for this law is _TERTIUM NON DATUR_: "no third [possibility] is given". It is a tautology.

The principle should not be confused with the semantical principle of bivalence, which states that every proposition is either true or false.


Analogous laws

Some systems of logic have different but analogous laws. For some finite _n_-valued logics, there is an analogous law called the ''law of excluded _n_+1th''. If negation is cyclic and "∨" is a "max operator", then the law can be expressed in the object language by (P ∨ ~P ∨ ~~P ∨ ... ∨ ~...~P), where "~...~" represents _n_−1 negation signs and "∨ ... ∨" _n_−1 disjunction signs. It is easy to check that the sentence must receive at least one of the _n_ truth values (and not a value that is not one of the _n_).

Other systems reject the law entirely.


Examples

For example, if _P_ is the proposition:

    _Socrates is mortal._

then the law of excluded middle holds that the logical disjunction:

    _Either Socrates is mortal, or it is not the case that Socrates is mortal._

is true by virtue of its form alone. That is, the "middle" position, that Socrates is neither mortal nor not-mortal, is excluded by logic, and therefore either the first possibility (_Socrates is mortal_) or its negation (_it is not the case that Socrates is mortal_) must be true.

An example of an argument that depends on the law of excluded middle follows.[1] We seek to prove that there exist two irrational numbers a and b such that

_a_^(_b_)
is rational.

It is known that $\sqrt{2}$ is irrational (see proof). Consider the number

$$\sqrt{2}^{\sqrt{2}}$$
.

Clearly (excluded middle) this number is either rational or irrational. If it is rational, the proof is complete, and

$$a=\sqrt{2}$$
and $b=\sqrt{2}$.

But if $\sqrt{2}^{\sqrt{2}}$ is irrational, then let

$$a=\sqrt{2}^{\sqrt{2}}$$
and $b=\sqrt{2}$.

Then

$$a^b = \left(\sqrt{2}^{\sqrt{2}}\right)^{\sqrt{2}} = \sqrt{2}^{\left(\sqrt{2}\cdot\sqrt{2}\right)} = \sqrt{2}^2 = 2$$
,

and 2 is certainly rational. This concludes the proof.

In the above argument, the assertion "this number is either rational or irrational" invokes the law of excluded middle. An intuitionist, for example, would not accept this argument without further support for that statement. This might come in the form of a proof that the number in question is in fact irrational (or rational, as the case may be); or a finite algorithm that could determine whether the number is rational.

Non-constructive proofs over the infinite

The above proof is an example of a _non-constructive_ proof disallowed by intuitionists: is irrational but there is no known easy proof of that fact.) (Davis 2000:220)}} (Constructive proofs of the specific example above are not hard to produce; for example $a=\sqrt{2}$ and b = log₂9 are both easily shown to be irrational, and a^(b) = 3; a proof allowed by intuitionists).

By _non-constructive_ Davis means that "a proof that there actually are mathematic entities satisfying certain conditions would not have to provide a method to exhibit explicitly the entities in question." (p. 85). Such proofs presume the existence of a totality that is complete, a notion disallowed by intuitionists when extended to the _infinite_—for them the infinite can never be completed:

David Hilbert and Luitzen E. J. Brouwer both give examples of the law of excluded middle extended to the infinite. Hilbert's example: "the assertion that either there are only finitely many prime numbers or there are infinitely many" (quoted in Davis 2000:97); and Brouwer's: "Every mathematical species is either finite or infinite." (Brouwer 1923 in van Heijenoort 1967:336).

In general, intuitionists allow the use of the law of excluded middle when it is confined to discourse over finite collections (sets), but not when it is used in discourse over infinite sets (e.g. the natural numbers). Thus intuitionists absolutely disallow the blanket assertion: "For all propositions _P_ concerning infinite sets _D_: _P_ or ~_P_" (Kleene 1952:48).

    _For more about the conflict between the intuitionists (e.g. Brouwer) and the formalists (Hilbert) see Foundations of mathematics and Intuitionism._

Putative counterexamples to the law of excluded middle include the liar paradox or Quine's paradox. Certain resolutions of these paradoxes, particularly Graham Priest's dialetheism as formalised in LP, have the law of excluded middle as a theorem, but resolve out the Liar as both true and false. In this way, the law of excluded middle is true, but because truth itself, and therefore disjunction, is not exclusive, it says next to nothing if one of the disjuncts is paradoxical, or both true and false.


History

Aristotle

The earliest known formulation is in Aristotle's discussion of the principle of non-contradiction, first proposed in _On Interpretation,_[2] where he says that of two contradictory propositions (i.e. where one proposition is the negation of the other) one must be true, and the other false.[3] He also states it as a principle in the _Metaphysics_ book 3, saying that it is necessary in every case to affirm or deny,[4] and that it is impossible that there should be anything between the two parts of a contradiction.[5]

Aristotle wrote that ambiguity can arise from the use of ambiguous names, but cannot exist in the facts themselves:

Aristotle's assertion that "...it will not be possible to be and not to be the same thing", which would be written in propositional logic as ¬(_P_ ∧ ¬_P_), is a statement modern logicians could call the law of excluded middle (_P_ ∨ ¬_P_), as distribution of the negation of Aristotle's assertion makes them equivalent, regardless that the former claims that no statement is _both_ true and false, while the latter requires that any statement is _either_ true or false.

However, Aristotle also writes, "since it is impossible that contradictories should be at the same time true of the same thing, obviously contraries also cannot belong at the same time to the same thing" (Book IV, CH 6, p. 531). He then proposes that "there cannot be an intermediate between contradictories, but of one subject we must either affirm or deny any one predicate" (Book IV, CH 7, p. 531). In the context of Aristotle's traditional logic, this is a remarkably precise statement of the law of excluded middle, _P_ ∨ ¬_P_.

Also in On Interpretation, Aristotle seemed to deny the law of excluded middle in the case of future contingents, in his discussion on the sea battle.

Leibniz

Bertrand Russell and _Principia Mathematica_

The principle was stated as a theorem of propositional logic by Russell and Whitehead in _Principia Mathematica_ as:

$\mathbf{*2\cdot11}. \ \  \vdash . \ p \ \vee \thicksim p$.[6]

So just what is "truth" and "falsehood"? At the opening _PM_ quickly announces some definitions:

This is not much help. But later, in a much deeper discussion, ("Definition and systematic ambiguity of Truth and Falsehood" Chapter II part III, p. 41 ff ) _PM_ defines truth and falsehood in terms of a relationship between the "a" and the "b" and the "percipient". For example "This 'a' is 'b'" (e.g. "This 'object a' is 'red'") really means "'object a' is a sense-datum" and "'red' is a sense-datum", and they "stand in relation" to one another and in relation to "I". Thus what we really mean is: "I perceive that 'This object a is red'" and this is an undeniable-by-3rd-party "truth".

_PM_ further defines a distinction between a "sense-datum" and a "sensation":

Russell reiterated his distinction between "sense-datum" and "sensation" in his book _The Problems of Philosophy_ (1912) published at the same time as _PM_ (1910–1913):

Russell further described his reasoning behind his definitions of "truth" and "falsehood" in the same book (Chapter XII _Truth and Falsehood_).

Consequences of the law of excluded middle in _Principia Mathematica_

From the law of excluded middle, formula ✸2.1 in _Principia Mathematica,_ Whitehead and Russell derive some of the most powerful tools in the logician's argumentation toolkit. (In _Principia Mathematica,_ formulas and propositions are identified by a leading asterisk and two numbers, such as "✸2.1".)

✸2.1 ~_p_ ∨ _p_ "This is the Law of excluded middle" (_PM_, p. 101).

The proof of ✸2.1 is roughly as follows: "primitive idea" 1.08 defines _p_ → _q_ = ~_p_ ∨ _q_. Substituting _p_ for _q_ in this rule yields _p_ → _p_ = ~_p_ ∨ _p_. Since _p_ → _p_ is true (this is Theorem 2.08, which is proved separately), then ~_p_ ∨ _p_ must be true.

✸2.11 _p_ ∨ ~_p_ (Permutation of the assertions is allowed by axiom 1.4)
✸2.12 _p_ → ~(~_p_) (Principle of double negation, part 1: if "this rose is red" is true then it's not true that "'this rose is not-red' is true".)
✸2.13 _p_ ∨ ~{~(~_p_)} (Lemma together with 2.12 used to derive 2.14)
✸2.14 ~(~_p_) → _p_ (Principle of double negation, part 2)
✸2.15 (~_p_ → _q_) → (~_q_ → _p_) (One of the four "Principles of transposition". Similar to 1.03, 1.16 and 1.17. A very long demonstration was required here.)
✸2.16 (_p_ → _q_) → (~_q_ → ~_p_) (If it's true that "If this rose is red then this pig flies" then it's true that "If this pig doesn't fly then this rose isn't red.")
✸2.17 ( ~_p_ → ~_q_ ) → (_q_ → _p_) (Another of the "Principles of transposition".)
✸2.18 (~_p_ → _p_) → _p_ (Called "The complement of _reductio ad absurdum_. It states that a proposition which follows from the hypothesis of its own falsehood is true" (_PM_, pp. 103–104).)

Most of these theorems—in particular ✸2.1, ✸2.11, and ✸2.14—are rejected by intuitionism. These tools are recast into another form that Kolmogorov cites as "Hilbert's four axioms of implication" and "Hilbert's two axioms of negation" (Kolmogorov in van Heijenoort, p. 335).

Propositions ✸2.12 and ✸2.14, "double negation": The intuitionist writings of L. E. J. Brouwer refer to what he calls "the _principle of the reciprocity of the multiple species_, that is, the principle that for every system the correctness of a property follows from the impossibility of the impossibility of this property" (Brouwer, ibid, p. 335).

This principle is commonly called "the principle of double negation" (_PM_, pp. 101–102). From the law of excluded middle (✸2.1 and ✸2.11), _PM_ derives principle ✸2.12 immediately. We substitute ~_p_ for _p_ in 2.11 to yield ~_p_ ∨ ~(~_p_), and by the definition of implication (i.e. 1.01 p → q = ~p ∨ q) then ~p ∨ ~(~p)= p → ~(~p). QED (The derivation of 2.14 is a bit more involved.)

Reichenbach

It is correct, at least for bivalent logic—i.e. it can be seen with a Karnaugh map—that this law removes "the middle" of the inclusive-or used in his law (3). And this is the point of Reichenbach's demonstration that some believe the _exclusive_-or should take the place of the _inclusive_-or.

About this issue (in admittedly very technical terms) Reichenbach observes:



        The tertium non datur
        29. (_x_)[_f_(_x_) ∨ ~_f_(_x_)]
        is not exhaustive in its major terms and is therefore an inflated formula. This fact may perhaps explain why some people consider it unreasonable to write (29) with the inclusive-'or', and want to have it written with the sign of the _exclusive_-'or'



        30. (_x_)[_f_(_x_) ⊕ ~_f_(_x_)], where the symbol "⊕" signifies exclusive-or[7]
        in which form it would be fully exhaustive and therefore nomological in the narrower sense. (Reichenbach, p. 376)

In line (30) the "(x)" means "for all" or "for every", a form used by Russell and Reichenbach; today the symbolism is usually ∀ _x_. Thus an example of the expression would look like this:

-   (_pig_): (_Flies_(_pig_) ⊕ ~_Flies_(_pig_))
-   (For all instances of "pig" seen and unseen): ("Pig does fly" or "Pig does not fly" but not both simultaneously)

Logicists versus the intuitionists

In late 1800s through the 1930s a bitter, persistent debate raged between Hilbert and his followers versus Hermann Weyl and L. E. J. Brouwer. Brouwer's philosophy, called intuitionism, started in earnest with Leopold Kronecker in the late 1800s.

Hilbert intensely disliked Kronecker's ideas:

The debate had a profound effect on Hilbert. Reid indicates that Hilbert's second problem (one of Hilbert's problems from the Second International Conference in Paris in 1900) evolved from this debate (italics in the original):



        In his second problem [Hilbert] had asked for a _mathematical proof_ of the consistency of the axioms of the arithmetic of real numbers.
        To show the significance of this problem, he added the following observation:
        "If contradictory attributes be assigned to a concept, I say that _mathematically the concept does not exist_"... (Reid p. 71)

Thus Hilbert was saying: "If _p_ and ~_p_ are both shown to be true, then _p_ does not exist" and he was thereby invoking the law of excluded middle cast into the form of the law of contradiction.

The rancorous debate continued through the early 1900s into the 1920s; in 1927 Brouwer complained about "polemicizing against it [intuitionism] in sneering tones" (Brouwer in van Heijenoort, p. 492). However, the debate had been fertile: it had resulted in _Principia Mathematica_ (1910–1913), and that work gave a precise definition to the law of excluded middle, and all this provided an intellectual setting and the tools necessary for the mathematicians of the early twentieth century:

Brouwer reduced the debate to the use of proofs designed from "negative" or "non-existence" versus "constructive" proof:



        According to Brouwer, a statement that an object exists having a given property means that, and is only proved, when a method is known which in principle at least will enable such an object to be found or constructed...
        Hilbert naturally disagreed.
        "...pure existence proofs have been the most important landmarks in the historical development of our science," he maintained. (Reid p. 155)



        Brouwer ... refused to accept the logical principle of the excluded middle... His argument was the following:



        "Suppose that A is the statement "There exists a member of the set _S_ having the property _P_." If the set is finite, it is possible—in principle—to examine each member of _S_ and determine whether there is a member of _S_ with the property _P_ or that every member of _S_ lacks the property _P_. For finite sets, therefore, Brouwer accepted the principle of the excluded middle as valid. He refused to accept it for infinite sets because if the set _S_ is infinite, we cannot—even in principle—examine each member of the set. If, during the course of our examination, we find a member of the set with the property _P_, the first alternative is substantiated; but if we never find such a member, the second alternative is still not substantiated.
        Since mathematical theorems are often proved by establishing that the negation would involve us in a contradiction, this third possibility which Brouwer suggested would throw into question many of the mathematical statements currently accepted.
        "Taking the Principle of the Excluded Middle from the mathematician," Hilbert said, "is the same as ... prohibiting the boxer the use of his fists."
        "The possible loss did not seem to bother Weyl... Brouwer's program was the coming thing, he insisted to his friends in Zürich." (Reid, p. 149)}}

In his lecture in 1941 at Yale and the subsequent paper Gödel proposed a solution: "...that the negation of a universal proposition was to be understood as asserting the existence ... of a counterexample" (Dawson, p. 157))

Gödel's approach to the law of excluded middle was to assert that objections against "the use of 'impredicative definitions'" "carried more weight" than "the law of excluded middle and related theorems of the propositional calculus" (Dawson p. 156). He proposed his "system Σ ... and he concluded by mentioning several applications of his interpretation. Among them were a proof of the consistency with intuitionistic logic of the principle ~ (∀A: (A ∨ ~A)) (despite the inconsistency of the assumption ∃ A: ~ (A ∨ ~A)..." (Dawson, p. 157)

The debate seemed to weaken: mathematicians, logicians and engineers continue to use the law of excluded middle (and double negation) in their daily work.

Intuitionist definitions of the law (principle) of excluded middle

The following highlights the deep mathematical and philosophic problem behind what it means to "know", and also helps elucidate what the "law" implies (i.e. what the law really means). Their difficulties with the law emerges: that they do not want to accept as true, implications drawn from that which is unverifiable (untestable, unknowable) or from the impossible or the false. (All quotes are from van Heijenoort, italics added).

_Brouwer_ offers his definition of "principle of excluded middle"; we see here also the issue of "testability":



        On the basis of the testability just mentioned, there hold, for properties conceived within a specific finite main system, the "principle of excluded middle", that is, _the principle that for every system every property is either correct [richtig] or impossible_, and in particular the principle of the reciprocity of the complementary species, that is, the principle that for every system the correctness of a property follows from the impossibility of the impossibility of this property. (335)

_Kolmogorov_'s definition cites Hilbert's two axioms of negation

5.  _A_ → (~_A_ → _B_)
6.  (_A_ → _B_) → { (~_A_ → _B_) → _B_}



        Hilbert's first axiom of negation, "anything follows from the false", made its appearance only with the rise of symbolic logic, as did the first axiom of implication.... while... the axiom under consideration [axiom 5] asserts something about the consequences of something impossible: we have to accept _B_ if the true judgment _A_ is regarded as false...
        Hilbert's second axiom of negation expresses the principle of excluded middle. The principle is expressed here in the form in which is it used for derivations: if _B_ follows from _A_ as well as from ~_A_, then _B_ is true. Its usual form, "every judgment is either true or false" is equivalent to that given above".
        From the first interpretation of negation, that is, the interdiction from regarding the judgment as true, it is impossible to obtain the certitude that the principle of excluded middle is true... Brouwer showed that in the case of such transfinite judgments the principle of excluded middle cannot be considered obvious
        footnote 9: "This is Leibniz's very simple formulation (see _Nouveaux Essais_, IV,2). The formulation "_A_ is either _B_ or not-_B_" has nothing to do with the logic of judgments.
        footnote 10: "Symbolically the second form is expessed thus

    _A_ ∨ ~_A_

where ∨ means "or". The equivalence of the two forms is easily proved... (p. 421)


Criticisms

Many modern logic systems replace the law of excluded middle with the concept of negation as failure. Instead of a proposition's being either true or false, a proposition is either true or not able to be proved true.[8] These two dichotomies only differ in logical systems that are not complete. The principle of negation as failure is used as a foundation for autoepistemic logic, and is widely used in logic programming. In these systems, the programmer is free to assert the law of excluded middle as a true fact, but it is not built-in _a priori_ into these systems.

Mathematicians such as L. E. J. Brouwer and Arend Heyting have also contested the usefulness of the law of excluded middle in the context of modern mathematics.[9]

In mathematical logic

In modern mathematical logic, the excluded middle has been shown to result in possible self-contradiction. It is possible in logic to make well-constructed propositions that can be neither true nor false; a common example of this is the "Liar's paradox",[10] the statement "this statement is false", which can itself be neither true nor false. In set theory, such a self-referential paradox can be constructed by examining the set "the set of all sets that do not contain themselves". This set is unambiguously defined, but leads to a Russell's paradox[11][12]: does the set contain, as one of its elements, itself? However, in the modern Zermelo–Fraenkel set theory, this type of contradiction is no longer admitted.


See also

-   Brouwer–Hilbert controversy: an account on the formalist-intuitionist divide around the Law of the excluded middle
-   _Consequentia mirabilis_
-   Diaconescu's theorem
-   Law of excluded fourth
-   Law of excluded middle is untrue in many-valued logics such as ternary logic and fuzzy logic
-   Laws of thought
-   Limited principle of omniscience
-   Logical graphs: a graphical syntax for propositional logic
-   Peirce's law: another way of turning intuition classical
-   Logical determinism: the application excluded middle to modal propositions
-   Non-affirming negation in the Prasangika school of Buddhism, another system in which the law of excluded middle is untrue


Footnotes


References

-   Aquinas, Thomas, "Summa Theologica", Fathers of the English Dominican Province (trans.), Daniel J. Sullivan (ed.), vols. 19–20 in Robert Maynard Hutchins (ed.), _Great Books of the Western World_, Encyclopædia Britannica, Inc., Chicago, IL, 1952. Cited as GB 19–20.
-   Aristotle, "Metaphysics", W.D. Ross (trans.), vol. 8 in Robert Maynard Hutchins (ed.), _Great Books of the Western World_, Encyclopædia Britannica, Inc., Chicago, IL, 1952. Cited as GB 8. 1st published, W.D. Ross (trans.), _The Works of Aristotle_, Oxford University Press, Oxford, UK.
-   Martin Davis 2000, ''Engines of Logic: Mathematicians and the Origin of the Computer", W. W. Norton & Company, NY, pbk.
-   Dawson, J., _Logical Dilemmas, The Life and Work of Kurt Gödel_, A.K. Peters, Wellesley, MA, 1997.
-   van Heijenoort, J., _From Frege to Gödel, A Source Book in Mathematical Logic, 1879–1931_, Harvard University Press, Cambridge, MA, 1967. Reprinted with corrections, 1977.
-   Luitzen Egbertus Jan Brouwer, 1923, _On the significance of the principle of excluded middle in mathematics, especially in function theory_ [reprinted with commentary, p. 334, van Heijenoort]
-   Andrei Nikolaevich Kolmogorov, 1925, _On the principle of excluded middle_, [reprinted with commentary, p. 414, van Heijenoort]
-   Luitzen Egbertus Jan Brouwer, 1927, _On the domains of definitions of functions_,[reprinted with commentary, p. 446, van Heijenoort] Although not directly germane, in his (1923) Brouwer uses certain words defined in this paper.
-   Luitzen Egbertus Jan Brouwer, 1927(2), _Intuitionistic reflections on formalism_,[reprinted with commentary, p. 490, van Heijenoort]
-   Stephen C. Kleene 1952 original printing, 1971 6th printing with corrections, 10th printing 1991, _Introduction to Metamathematics_, North-Holland Publishing Company, Amsterdam NY, .
-   Kneale, W. and Kneale, M., _The Development of Logic_, Oxford University Press, Oxford, UK, 1962. Reprinted with corrections, 1975.
-   Alfred North Whitehead and Bertrand Russell, _Principia Mathematica to *56_, Cambridge at the University Press 1962 (Second Edition of 1927, reprinted). Extremely difficult because of arcane symbolism, but a must-have for serious logicians.
-   Bertrand Russell, _An Inquiry Into Meaning and Truth_. The William James Lectures for 1940 Delivered at Harvard University.
-   Bertrand Russell, _The Problems of Philosophy, With a New Introduction by John Perry_, Oxford University Press, New York, 1997 edition (first published 1912). Very easy to read: Russell was a wonderful writer.
-   Bertrand Russell, _The Art of Philosophizing and Other Essays_, Littlefield, Adams & Co., Totowa, NJ, 1974 edition (first published 1968). Includes a wonderful essay on "The Art of drawing Inferences".
-   Hans Reichenbach, _Elements of Symbolic Logic_, Dover, New York, 1947, 1975.
-   Tom Mitchell, _Machine Learning_, WCB McGraw-Hill, 1997.
-   Constance Reid, _Hilbert_, Copernicus: Springer-Verlag New York, Inc. 1996, first published 1969. Contains a wealth of biographical information, much derived from interviews.
-   Bart Kosko, _Fuzzy Thinking: The New Science of Fuzzy Logic_, Hyperion, New York, 1993. Fuzzy thinking at its finest. But a good introduction to the concepts.
-   David Hume, _An Inquiry Concerning Human Understanding_, reprinted in Great Books of the Western World Encyclopædia Britannica, Volume 35, 1952, p. 449 ff. This work was published by Hume in 1758 as his rewrite of his "juvenile" _Treatise of Human Nature: Being An attempt to introduce the experimental method of Reasoning into Moral Subjects Vol. I, Of The Understanding_ first published 1739, reprinted as: David Hume, _A Treatise of Human Nature_, Penguin Classics, 1985. Also see: David Applebaum, _The Vision of Hume_, Vega, London, 2001: a reprint of a portion of _An Inquiry_ starts on p. 94 ff


External links

-   "Contradiction" entry in the Stanford Encyclopedia of Philosophy

Category:Classical logic Category:Articles containing proofs Category:Theorems in propositional logic

[1] This well-known example of a non-constructive proof depending on the law of excluded middle can be found in many places, for example: and Davis 2000:220, footnote 2.

[2] Geach p. 74

[3] _On Interpretation_, c. 9

[4] ''Metaphysics 2, 996b 26–30

[5] ''Metaphysics 7, 1011b 26–27

[6]

[7] The original symbol as used by Reichenbach is an upside down V, nowadays used for AND. The AND for Reichenbach is the same as that used in Principia Mathematica – a "dot" cf p. 27 where he shows a truth table where he defines "a.b". Reichenbach defines the exclusive-or on p. 35 as "the negation of the equivalence". One sign used nowadays is a circle with a + in it, i.e. ⊕ (because in binary, a ⊕ b yields modulo-2 addition – addition without carry). Other signs are ≢ (not identical to), or ≠ (not equal to).

[8]

[9] "Proof and Knowledge in Mathematics" by Michael Detlefsen

[10] Graham Priest, "Paradoxical Truth", _The New York Times,_ November 28, 2010.

[11] Kevin C. Klement,

[12] Graham Priest, "The Logical Paradoxes and the Law of Excluded Middle", _The Philosophical Quarterly_, Vol. 33, No. 131, Apr., 1983, pp. 160–165. DOI: 10.2307/2218742. (abstract at JSTOR._