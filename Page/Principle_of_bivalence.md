In logic, the semantic PRINCIPLE (OR LAW) OF BIVALENCE states that every declarative sentence expressing a proposition (of a theory under inspection) has exactly one truth value, either true or false.[1][2] A logic satisfying this principle is called a TWO-VALUED LOGIC[3] or BIVALENT LOGIC.[4][5]

In formal logic, the principle of bivalence becomes a property that a semantics may or may not possess. It is not the same as the law of excluded middle, however, and a semantics may satisfy that law without being bivalent.[6]

The principle of bivalence is studied in philosophical logic to address the question of which natural-language statements have a well-defined truth value. Sentences which predict events in the future, and sentences which seem open to interpretation, are particularly difficult for philosophers who hold that the principle of bivalence applies to all declarative natural-language statements.[7] Many-valued logics formalize ideas that a realistic characterization of the notion of consequence requires the admissibility of premises which, owing to vagueness, temporal or quantum indeterminacy, or reference-failure, cannot be considered classically bivalent. Reference failures can also be addressed by free logics.[8]


Relationship to the law of the excluded middle

The principle of bivalence is related to the law of excluded middle though the latter is a syntactic expression of the language of a logic of the form "P ∨ ¬P". The difference between the principle and the law is important because there are logics which validate the law but which do not validate the principle.[9] For example, the three-valued Logic of Paradox (LP) validates the law of excluded middle, but not the law of non-contradiction, ¬(P ∧ ¬P), and its intended semantics is not bivalent.[10] In classical two-valued logic both the law of excluded middle and the law of non-contradiction hold.[11]

Many modern logic programming systems replace the law of the excluded middle with the concept of negation as failure. The programmer may wish to add the law of the excluded middle by explicitly asserting it as true; however, it is not assumed _a priori_.


Classical logic

The intended semantics of classical logic is bivalent, but this is not true of every semantics for classical logic. In Boolean-valued semantics (for classical propositional logic), the truth values are the elements of an arbitrary Boolean algebra, "true" corresponds to the maximal element of the algebra, and "false" corresponds to the minimal element. Intermediate elements of the algebra correspond to truth values other than "true" and "false". The principle of bivalence holds only when the Boolean algebra is taken to be the two-element algebra, which has no intermediate elements.

Assigning Boolean semantics to classical predicate calculus requires that the model be a complete Boolean algebra because the universal quantifier maps to the infimum operation, and the existential quantifier maps to the supremum;[12] this is called a Boolean-valued model. All finite Boolean algebras are complete.


Suszko's thesis

In order to justify his claim that true and false are the only logical values, Suszko (1977) observes that every structural Tarskian many-valued propositional logic can be provided with a bivalent semantics.[13]


Criticisms

Future contingents

A famous example[14] is the _contingent sea battle_ case found in Aristotle's work, _De Interpretatione_, chapter 9:

    Imagine P refers to the statement "There will be a sea battle tomorrow."

The principle of bivalence here asserts:

    Either it is true that there will be a sea battle tomorrow, or it is false that there will be a sea battle tomorrow.

Aristotle to embrace bivalence for such future contingents; Chrysippus, the Stoic logician, did embrace bivalence for this and all other propositions. The controversy continues to be of central importance in both the philosophy of time and the philosophy of logic.

One of the early motivations for the study of many-valued logics has been precisely this issue. In the early 20th century, the Polish formal logician Jan Łukasiewicz proposed three truth-values: the true, the false and the _as-yet-undetermined_. This approach was later developed by Arend Heyting and L. E. J. Brouwer;[15] see Łukasiewicz logic.

Issues such as this have also been addressed in various temporal logics, where one can assert that "_Eventually_, either there will be a sea battle tomorrow, or there won't be." (Which is true if "tomorrow" eventually occurs.)

Vagueness

Such puzzles as the Sorites paradox and the related continuum fallacy have raised doubt as to the applicability of classical logic and the principle of bivalence to concepts that may be vague in their application. Fuzzy logic and some other multi-valued logics have been proposed as alternatives that handle vague concepts better. Truth (and falsity) in fuzzy logic, for example, comes in varying degrees. Consider the following statement in the circumstance of sorting apples on a moving belt:

    This apple is red.[16]

Upon observation, the apple is an undetermined color between yellow and red, or it is motled both colors. Thus the color falls into neither category " red " nor " yellow ", but these are the only categories available to us as we sort the apples. We might say it is "50% red". This could be rephrased: it is 50% true that the apple is red. Therefore, P is 50% true, and 50% false. Now consider:

    This apple is red and it is not-red.

In other words, P and not-P. This violates the law of noncontradiction and, by extension, bivalence. However, this is only a partial rejection of these laws because P is only partially true. If P were 100% true, not-P would be 100% false, and there is no contradiction because P and not-P no longer holds.

However, the law of the excluded middle is retained, because P and not-P implies P or not-P, since "or" is inclusive. The only two cases where P and not-P is false (when P is 100% true or false) are the same cases considered by two-valued logic, and the same rules apply.

EXAMPLE OF A 3-VALUED LOGIC APPLIED TO VAGUE (UNDETERMINED) CASES: Kleene 1952[17] (§64, pp. 332–340) offers a 3-valued logic for the cases when algorithms involving partial recursive functions may not return values, but rather end up with circumstances "u" = undecided. He lets "t" = "true", "f" = "false", "u" = "undecided" and redesigns all the propositional connectives. He observes that:

The following are his "strong tables":[18]

  ---- --- --- -- ----- --- --- --- --- -- ----- --- --- --- --- -- ----- --- --- --- --- -- ----- --- --- --- ---
  ~Q              QVR   R   t   f   u      Q&R   R   t   f   u      Q→R   R   t   f   u      Q=R   R   t   f   u
  Q    t   f      Q     t   t   t   t      Q     t   t   f   u      Q     t   t   f   u      Q     t   t   f   u
       f   t            f   t   f   u            f   f   f   f            f   t   t   t            f   f   t   u
       u   u            u   t   u   u            u   u   f   u            u   t   u   u            u   u   u   u
  ---- --- --- -- ----- --- --- --- --- -- ----- --- --- --- --- -- ----- --- --- --- --- -- ----- --- --- --- ---

For example, if a determination cannot be made as to whether an apple is red or not-red, then the truth value of the assertion Q: " This apple is red " is " u ". Likewise, the truth value of the assertion R " This apple is not-red " is " u ". Thus the AND of these into the assertion Q AND R, i.e. " This apple is red AND this apple is not-red " will, per the tables, yield " u ". And, the assertion Q OR R, i.e. " This apple is red OR this apple is not-red " will likewise yield " u ".


See also


References


Further reading

-   .

-   Betti Arianna (2002) The Incomplete Story of Łukasiewicz and Bivalence in T. Childers (ed.) _The Logica 2002 Yearbook_, Prague: The Czech Academy of Sciences—Filosofia, pp. 21–26
-   Jean-Yves Béziau (2003) "Bivalence, excluded middle and non contradiction", in _The Logica Yearbook 2003_, L.Behounek (ed), Academy of Sciences, Prague, pp. 73–84.
-


External links

-

Category:Logic Category:Principles Category:2 (number) Category:Semantics

[1]

[2]

[3]

[4]

[5]

[6]

[7]

[8]

[9]

[10]

[11]

[12]

[13]

[14]

[15]

[16] Note the use of the (extremely) definite article: "This" as opposed to a more-vague "The". If "The" is used, it would have to be accompanied with a pointing-gesture to make it definitive. Ff _Principia Mathematica_ (2nd edition), p. 91. Russell & Whitehead observe that this " this " indicates "something given in sensation" and as such it shall be considered "elementary".

[17] Stephen C. Kleene 1952 _Introduction to Metamathematics_, 6th Reprint 1971, North-Holland Publishing Company, Amsterdam NY, .

[18] "Strong tables" is Kleene's choice of words. Note that even though " u " may appear for the value of Q or R, " t " or " f " may, in those occasions, appear as a value in " Q V R ", " Q & R " and " Q → R ". "Weak tables" on the other hand, are "regular", meaning they have " u " appear in all cases when the value " u " is applied to either Q or R or both. Kleene notes that these tables are _not_ the same as the original values of the tables of Łukasiewicz 1920. (Kleene gives these differences on page 335). He also concludes that " u " can mean any or all of the following: "undefined", "unknown (or value immaterial)", "value disregarded for the moment", i.e. it is a third category that does not (ultimately) exclude " t " and " f " (page 335).