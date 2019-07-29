In logic, a LOGICAL CONNECTIVE (also called a LOGICAL OPERATOR, SENTENTIAL CONNECTIVE, or SENTENTIAL OPERATOR) is a symbol or word used to connect two or more sentences (of either a formal or a natural language) in a grammatically valid way, such that the value of the compound sentence produced depends only on that of the original sentences and on the meaning of the connective.

The most common logical connectives are BINARY CONNECTIVES (also called DYADIC CONNECTIVES) which join two sentences which can be thought of as the function's operands. Also commonly, negation is considered to be a UNARY CONNECTIVE.

Logical connectives along with quantifiers are the two main types of logical constants used in formal systems such as propositional logic and predicate logic. Semantics of a logical connective is often, but not always, presented as a truth function.

A logical connective is similar to but not equivalent to a conditional operator.[1]


In language

Natural language

In the grammar of natural languages two sentences may be joined by a grammatical conjunction to form a _grammatically_ compound sentence. Some but not all such grammatical conjunctions are truth functional. For example, consider the following sentences:

The words _and_ and _so_ are _grammatical_ conjunctions joining the sentences (A) and (B) to form the compound sentences (C) and (D). The _and_ in (C) is a _logical_ connective, since the truth of (C) is completely determined by (A) and (B): it would make no sense to affirm (A) and (B) but deny (C). However, _so_ in (D) is not a logical connective, since it would be quite reasonable to affirm (A) and (B) but deny (D): perhaps, after all, Jill went up the hill to fetch a pail of water, not because Jack had gone up the hill at all.

Various English words and word pairs express logical connectives, and some of them are synonymous. Examples are:

  Word                      Connective                Symbol   Logical gate
  ------------------------- ------------------------- -------- --------------
  and                       conjunction               "∧"      AND
  and then                  conjunction               "∧"      AND
  and then within           conjunction               "∧"      AND
  or                        disjunction               "∨"      OR
  either...or               exclusive disjunction     "⊻"      XOR
  either, but not both      exclusive disjunction     "⊻"      XOR
  implies                   material implication      "→"      IMPLY
  is implied by             converse implication      "←"
  if...then                 material implication      "→"      IMPLY
  ...if                     converse implication      "←"
  if and only if            biconditional             "↔"      XNOR
  just in case              biconditional             "↔"      XNOR
  but                       conjunction               "∧"      AND
  however                   conjunction               "∧"      AND
  not both                  alternative denial        "↑"      NAND
  neither...nor             joint denial              "↓"      NOR
  not, not that             negation                  "¬"      NOT
  it is false that          negation                  "¬"      NOT
  it is not the case that   negation                  "¬"      NOT
  although                  conjunction               "∧"      AND
  even though               conjunction               "∧"      AND
  therefore                 material implication      "→"      IMPLY
  so                        material implication      "→"      IMPLY
  that is to say            biconditional             "↔"      XNOR
  furthermore               conjunction               "∧"      AND
  but not                   material nonimplication   "↛"      NIMPLY
  not...but                 converse nonimplication   "↚"
  no...without              material implication      "→"      IMPLY
  without...there is no     converse implication      "←"

Formal languages

In formal languages, truth functions are represented by unambiguous symbols. These symbols are called _logical connectives_, _logical operators_, _propositional operators_, or, in classical logic, _truth-functional connectives_. See well-formed formula for the rules which allow new well-formed formulas to be constructed by joining other well-formed formulas using truth-functional connectives.

Logical connectives can be used to link more than two statements, so one can speak about _{{mvar logical connective_.


Common logical connectives

+--------------------+-------------------------------------------------+---------+
| Symbol, name       | Truth                                           | | Venn  |
|                    | table                                           | diagram |
+====================+=================================================+=========+
| Unary connectives  |                                                 |         |
+--------------------+-------------------------------------------------+---------+
|                    |  =                                              | 0       |
+--------------------+-------------------------------------------------+---------+
| ⊤                  | style="text-align:left; | Truth/tautology       |         |
+--------------------+-------------------------------------------------+---------+
|                    | style="text-align:left; | Proposition           |         |
+--------------------+-------------------------------------------------+---------+
| ⊥                  | style="text-align:left; | Falsity/contradiction |         |
+--------------------+-------------------------------------------------+---------+
| ¬                  | style="text-align:left; | Negation              |         |
+--------------------+-------------------------------------------------+---------+
| Binary connectives |                                                 |         |
+--------------------+-------------------------------------------------+---------+
|                    |  =                                              | 0       |
+--------------------+-------------------------------------------------+---------+
|  =                 | 0                                               | 1       |
+--------------------+-------------------------------------------------+---------+
|                    | style="text-align:left; | Proposition           |         |
+--------------------+-------------------------------------------------+---------+
|                    | style="text-align:left; | Proposition           |         |
+--------------------+-------------------------------------------------+---------+
| ∧                  | style="text-align:left; | Conjunction           |         |
+--------------------+-------------------------------------------------+---------+
| ↑                  | style="text-align:left; | Alternative denial    |         |
+--------------------+-------------------------------------------------+---------+
| ∨                  | style="text-align:left; | Disjunction           |         |
+--------------------+-------------------------------------------------+---------+
| ↓                  | style="text-align:left; | Joint denial          |         |
+--------------------+-------------------------------------------------+---------+
| →                  | style="text-align:left; | Material conditional  |         |
+--------------------+-------------------------------------------------+---------+
| ↮                  | style="text-align:left; | Exclusive or          |         |
+--------------------+-------------------------------------------------+---------+
| ↔                  | style="text-align:left; | Biconditional         |         |
+--------------------+-------------------------------------------------+---------+
| ←                  | style="text-align:left; | Converse implication  |         |
+--------------------+-------------------------------------------------+---------+
| More information   |                                                 |         |
+--------------------+-------------------------------------------------+---------+

List of common logical connectives

Commonly used logical connectives include

-   Negation (not): ¬ , N (prefix), ~
-   Conjunction (and): ∧ , K (prefix), & , ∙
-   Disjunction (or): ∨, A (prefix)
-   Material implication (if...then): → , C (prefix), ⇒ , ⊃
-   Biconditional (if and only if): ↔ , E (prefix), ≡ , =

Alternative names for biconditional are _iff_, _xnor_, and _bi-implication_.

For example, the meaning of the statements _it is raining_ and _I am indoors_ is transformed when the two are combined with logical connectives. For statement _P_ = _It is raining_ and _Q_ = _I am indoors_:

-   It is NOT raining (_P_)
-   It is raining '''and ''' I am indoors (P ∧ Q)
-   It is raining OR I am indoors (P ∨ Q)
-   IF it is raining, THEN I am indoors (P → Q)
-   IF I am indoors, THEN it is raining (Q → P)
-   I am indoors IF AND ONLY IF it is raining (P ↔ Q)

It is also common to consider the _always true_ formula and the _always false_ formula to be connective:

-   True formula (⊤, 1, V [prefix], or T)
-   False formula (⊥, 0, O [prefix], or F)

History of notations

-   Negation: the symbol ¬ appeared in Heyting in 1929.[2][3] (compare to Frege's symbol ⫟ in his Begriffsschrift); the symbol ~ appeared in Russell in 1908;[4] an alternative notation is to add a horizontal line on top of the formula, as in $\overline{P}$; another alternative notation is to use a prime symbol as in P'.
-   Conjunction: the symbol ∧ appeared in Heyting in 1929[5] (compare to Peano's use of the set-theoretic notation of intersection ∩[6]); & appeared at least in Schönfinkel in 1924;[7] . comes from Boole's interpretation of logic as an elementary algebra.
-   Disjunction: the symbol ∨ appeared in Russell in 1908[8] (compare to Peano's use of the set-theoretic notation of union ∪); the symbol + is also used, in spite of the ambiguity coming from the fact that the + of ordinary elementary algebra is an exclusive or when interpreted logically in a two-element ring; punctually in the history a + together with a dot in the lower right corner has been used by Peirce,[9]
-   Implication: the symbol → can be seen in Hilbert in 1917;[10] ⊃ was used by Russell in 1908[11] (compare to Peano's inverted C notation); ⇒ was used in Vax.[12]
-   Biconditional: the symbol ≡ was used at least by Russell in 1908;[13] ↔ was used at least by Tarski in 1940;[14] ⇔ was used in Vax; other symbols appeared punctually in the history such as ⊃⊂ in Gentzen,[15] ~ in Schönfinkel[16] or ⊂⊃ in Chazal.[17]
-   True: the symbol 1 comes from Boole's interpretation of logic as an elementary algebra over the two-element Boolean algebra; other notations include ⋀ to be found in Peano.
-   False: the symbol 0 comes also from Boole's interpretation of logic as a ring; other notations include ⋁ to be found in Peano.

Some authors used letters for connectives at some time of the history: U. for conjunction (German's "und" for "and") and O. for disjunction (German's "oder" for "or") in earlier works by Hilbert (1904); N_P_ for negation, K_PQ_ for conjunction, D_PQ_ for alternative denial, A_PQ_ for disjunction, X_PQ_ for joint denial, C_PQ_ for implication, E_PQ_ for biconditional in Łukasiewicz (1929);[18] cf. Polish notation.

Redundancy

Such a logical connective as converse implication "←" is actually the same as material conditional with swapped arguments; thus, the symbol for converse implication is redundant. In some logical calculi (notably, in classical logic) certain essentially different compound statements are logically equivalent. A less trivial example of a redundancy is the classical equivalence between and . Therefore, a classical-based logical system does not need the conditional operator "→" if "¬" (not) and "∨" (or) are already in use, or may use the "→" only as a syntactic sugar for a compound having one negation and one disjunction.

There are sixteen Boolean functions associating the input truth values and with four-digit binary outputs.[19] These correspond to possible choices of binary logical connectives for classical logic. Different implementations of classical logic can choose different functionally complete subsets of connectives.

One approach is to choose a _minimal_ set, and define other connectives by some logical form, as in the example with the material conditional above. The following are the minimal functionally complete sets of operators in classical logic whose arities do not exceed 2:

One element: {↑}, {↓}.
Two elements: {∨,¬}, {∧,¬}, {→,¬}, {←,¬}, {→,⊥}, {←,⊥}, {→, ↮ }, {←, ↮ }, {→, ↛ }, {→, ↚ }, {←, ↛ }, {←, ↚ }, {↛,¬}, {↚,¬}, {↛,⊤}, {↚,⊤}, {↛, ↔ }, {↚, ↔ }.
Three elements: {∨,↔,⊥}, {∨,↔, ↮ }, {∨,↮,⊤}, {∧,↔,⊥}, {∧,↔, ↮ }, {∧,↮,⊤}.

Another approach is to use with equal rights connectives of a certain convenient and functionally complete, but _not minimal_ set. This approach requires more propositional axioms, and each equivalence between logical forms must be either an axiom or provable as a theorem.

The situation, however, is more complicated in intuitionistic logic. Of its five connectives, {∧, ∨, →, ¬, ⊥}, only negation "¬" can be reduced to other connectives (see details). Neither conjunction, disjunction, nor material conditional has an equivalent form constructed of the other four logical connectives.


Properties

Some logical connectives possess properties which may be expressed in the theorems containing the connective. Some of those properties that a logical connective may have are:

Associativity: Within an expression containing two or more of the same associative connectives in a row, the order of the operations does not matter as long as the sequence of the operands is not changed.
Commutativity: The operands of the connective may be swapped preserving logical equivalence to the original expression.
Distributivity: A connective denoted by · distributes over another connective denoted by +, if  for all operands , , .
Idempotence: Whenever the operands of the operation are the same, the compound is logically equivalent to the operand.
Absorption: A pair of connectives ∧, ∨ satisfies the absorption law if a ∧ (a ∨ b) = a for all operands , .
Monotonicity: If _f_(_a_₁, ..., _a__(_n_)) ≤ _f_(_b_₁, ..., _b__(_n_)) for all _a_₁, ..., _a__(_n_), _b_₁, ..., _b__(_n_) ∈ {0,1} such that _a_₁ ≤ _b_₁, _a_₂ ≤ _b_₂, ..., _a__(_n_) ≤ _b__(_n_). E.g., ∨, ∧, ⊤, ⊥.
Affinity: Each variable always makes a difference in the truth-value of the operation or it never makes a difference. E.g., ¬, ↔, ↮, ⊤, ⊥.
Duality: To read the truth-value assignments for the operation from top to bottom on its truth table is the same as taking the complement of reading the table of the same or another connective from bottom to top. Without resorting to truth tables it may be formulated as . E.g., ¬.
Truth-preserving: The compound all those argument are tautologies is a tautology itself. E.g., ∨, ∧, ⊤, →, ↔, ⊂ (see validity).
Falsehood-preserving: The compound all those argument are contradictions is a contradiction itself. E.g., ∨, ∧, ↮, ⊥, ⊄, ⊅ (see validity).
Involutivity (for unary connectives): . E.g. negation in classical logic.

For classical and intuitionistic logic, the "=" symbol means that corresponding implications "…→…" and "…←…" for logical compounds can be both proved as theorems, and the "≤" symbol means that "…→…" for logical compounds is a consequence of corresponding "…→…" connectives for propositional variables. Some many-valued logics may have incompatible definitions of equivalence and order (entailment).

Both conjunction and disjunction are associative, commutative and idempotent in classical logic, most varieties of many-valued logic and intuitionistic logic. The same is true about distributivity of conjunction over disjunction and disjunction over conjunction, as well as for the absorption law.

In classical logic and some varieties of many-valued logic, conjunction and disjunction are dual, and negation is self-dual, the latter is also self-dual in intuitionistic logic.


Order of precedence

As a way of reducing the number of necessary parentheses, one may introduce precedence rules: ¬ has higher precedence than ∧, ∧ higher than ∨, and ∨ higher than →. So for example, P ∨ Q ∧ ¬R → S is short for (P ∨ (Q ∧ (¬R))) → S.

Here is a table that shows a commonly used precedence of logical operators.[20]

$$\begin{array}{c|c}
\text{Operator} & \text{Precedence} \\
\hline
\neg & 1
\\
\land & 2
\\
\vee & 3
\\
\to & 4
\\
\leftrightarrow & 5
\end{array}$$

However, not all compilers use the same order; for instance, an ordering in which disjunction is lower precedence than implication or bi-implication has also been used.[21] Sometimes precedence between conjunction and disjunction is unspecified requiring to provide it explicitly in given formula with parentheses. The order of precedence determines which connective is the "main connective" when interpreting a non-atomic formula.


Computer science

A truth-functional approach to logical operators is implemented as logic gates in digital circuits. Practically all digital circuits (the major exception is DRAM) are built up from NAND, NOR, NOT, and transmission gates; see more details in Truth function in computer science. Logical operators over bit vectors (corresponding to finite Boolean algebras) are bitwise operations.

But not every usage of a logical connective in computer programming has a Boolean semantic. For example, lazy evaluation is sometimes implemented for and , so these connectives are not commutative if either or both of the expressions , have side effects. Also, a conditional, which in some sense corresponds to the material conditional connective, is essentially non-Boolean because for if (P) then Q; the consequent Q is not executed if the antecedent P is false (although a compound as a whole is successful ≈ "true" in such case). This is closer to intuitionist and constructivist views on the material conditional, rather than to classical logic's ones.


See also

-   Boolean domain
-   Boolean function
-   Boolean logic
-   Boolean-valued function
-   List of Boolean algebra topics

-   Logical constant
-   Modal operator
-   Propositional calculus
-   Truth function
-   Truth table
-   Truth values


Notes


References

-   Bocheński, Józef Maria (1959), _A Précis of Mathematical Logic_, translated from the French and German editions by Otto Bird, D. Reidel, Dordrecht, South Holland.
-   -   -   .


Further reading

-


External links

-   -   Lloyd Humberstone (2010), "Sentence Connectives in Formal Logic", Stanford Encyclopedia of Philosophy (An abstract algebraic logic approach to connectives.)
-   John MacFarlane (2005), "Logical constants", Stanford Encyclopedia of Philosophy.

da:Logisk konnektiv he:קשר לוגי

Category:Logical connectives Category:Logic symbols

[1]

[2] Heyting (1929) _Die formalen Regeln der intuitionistischen Logik_.

[3] Denis Roegel,;l,;l.';, (2002), _Petit panorama des notations logiques du 20e siècle_ (see chart on page 2).

[4] Russell (1908) _Mathematical logic as based on the theory of types_ (American Journal of Mathematics 30, p222–262, also in From Frege to Gödel edited by van Heijenoort).

[5]

[6] Peano (1889) _Arithmetices principia, nova methodo exposita_.

[7] Schönfinkel (1924) '' Über die Bausteine der mathematischen Logik'', translated as _On the building blocks of mathematical logic_ in From Frege to Gödel edited by van Heijenoort.

[8]

[9] Peirce (1867) ''On an improvement in Boole's calculus of logic.

[10] Hilbert (1917/1918) _Prinzipien der Mathematik_ (Bernays' course notes).

[11]

[12] Vax (1982) _Lexique logique_, Presses Universitaires de France.

[13]

[14] Tarski (1940) _Introduction to logic and to the methodology of deductive sciences_.

[15] Gentzen (1934) _Untersuchungen über das logische Schließen_.

[16]

[17] Chazal (1996) : Éléments de logique formelle.

[18] See Roegel

[19] Bocheński (1959), _A Précis of Mathematical Logic_, passim.

[20] .

[21] .