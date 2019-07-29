Russell,_Whitehead_-_Principia_Mathematica_to_56.jpg ✸54.43: "From this proposition it will follow, when arithmetical addition has been defined, that 1 + 1 = 2." —Volume I, 1st edition, page 379 (page 362 in 2nd edition; page 360 in abridged version). (The proof is actually completed in Volume II, 1st edition, page 86, accompanied by the comment, "The above proposition is occasionally useful." Τhey go on to say "It is used at least three times, in ✸113.66 and ✸120.123.472.")

The _PRINCIPIA MATHEMATICA_ (often abbreviated _PM_) is a three-volume work on the foundations of mathematics written by Alfred North Whitehead and Bertrand Russell and published in 1910, 1912, and 1913. In 1925–27, it appeared in a second edition with an important _Introduction to the Second Edition_, an _Appendix A_ that replaced ✸9 and all-new _Appendix B_ and _Appendix C_. _PM_ is not to be confused with Russell's 1903 _The Principles of Mathematics_. _PM_ was originally conceived as a sequel volume to Russell's 1903 _Principles_, but as _PM_ states, this became an unworkable suggestion for practical and philosophical reasons: "The present work was originally intended by us to be comprised in a second volume of _Principles of Mathematics_... But as we advanced, it became increasingly evident that the subject is a very much larger one than we had supposed; moreover on many fundamental questions which had been left obscure and doubtful in the former work, we have now arrived at what we believe to be satisfactory solutions."

_PM_, according to its introduction, had three aims: (1) to analyze to the greatest possible extent the ideas and methods of mathematical logic and to minimize the number of primitive notions and axioms, and inference rules; (2) to precisely express mathematical propositions in symbolic logic using the most convenient notation that precise expression allows; (3) to solve the paradoxes that plagued logic and set theory at the turn of the 20th-century, like Russell's paradox.[1]

This third aim motivated the adoption of the theory of types in _PM_. The theory of types adopts grammatical restrictions on formulas that rules out the unrestricted comprehension of classes, properties, and functions. The effect of this is that formulas such as would allow the comprehension of objects like the Russell set turn out to be ill-formed: they violate the grammatical restrictions of the system of _PM_.

There is no doubt that _PM_ is of great importance in the history of mathematics and philosophy: as Irvine has noted, it sparked interest in symbolic logic and advanced the subject by popularizing it; it showcased the powers and capacities of symbolic logic; and it showed how advances in philosophy of mathematics and symbolic logic could go hand-in-hand with tremendous fruitfulness.[2] Indeed, _PM_ was in part brought about by an interest in logicism, the view on which all mathematical truths are logical truths. It was in part thanks to the advances made in _PM_ that, despite its defects, numerous advances in meta-logic were made, including Gödel's incompleteness theorems.

For all that, _PM_ is not widely used today: probably the foremost reason for this is its reputation for typographical complexity. Somewhat infamously, several hundred pages of _PM_ precede the proof of the validity of the proposition 1+1=2. Contemporary mathematicians tend to use a modernized form of the system of Zermelo–Fraenkel set theory. Nonetheless, the scholarly, historical, and philosophical interest in _PM_ is great and ongoing: for example, the Modern Library placed it 23rd in a list of the top 100 English-language nonfiction books of the twentieth century.[3]


Scope of foundations laid

The _Principia_ covered only set theory, cardinal numbers, ordinal numbers, and real numbers. Deeper theorems from real analysis were not included, but by the end of the third volume it was clear to experts that a large amount of known mathematics could _in principle_ be developed in the adopted formalism. It was also clear how lengthy such a development would be.

A fourth volume on the foundations of geometry had been planned, but the authors admitted to intellectual exhaustion upon completion of the third.


Theoretical basis

As noted in the criticism of the theory by Kurt Gödel (below), unlike a formalist theory, the "logicistic" theory of _PM_ has no "precise statement of the syntax of the formalism". Another observation is that almost immediately in the theory, _interpretations_ (in the sense of model theory) are presented in terms of _truth-values_ for the behaviour of the symbols "⊢" (assertion of truth), "~" (logical not), and "V" (logical inclusive OR).

TRUTH-VALUES: _PM_ embeds the notions of "truth" and "falsity" in the notion "primitive proposition". A raw (pure) formalist theory would not provide the meaning of the symbols that form a "primitive proposition"—the symbols themselves could be absolutely arbitrary and unfamiliar. The theory would specify only _how the symbols behave based on the grammar of the theory_. Then later, by _assignment_ of "values", a model would specify an _interpretation_ of what the formulas are saying. Thus in the formal Kleene symbol set below, the "interpretation" of what the symbols commonly mean, and by implication how they end up being used, is given in parentheses, e.g., "¬ (not)". But this is not a pure Formalist theory.

Contemporary construction of a formal theory

Principia_Mathematica_List_of_Propositions.pdf

The following formalist theory is offered as contrast to the logicistic theory of _PM_. A contemporary formal system would be constructed as follows:

1.  _Symbols used_: This set is the starting set, and other symbols can appear but only by _definition_ from these beginning symbols. A starting set might be the following set derived from Kleene 1952: _logical symbols_: "→" (implies, IF-THEN, and "⊃"), "&" (and), "V" (or), "¬" (not), "∀" (for all), "∃" (there exists); _predicate symbol_ "=" (equals); _function symbols_ "+" (arithmetic addition), "∙" (arithmetic multiplication), "'" (successor); _individual symbol_ "0" (zero); _variables_ "_a_", "_b_", "_c_", etc.; and _parentheses_ "(" and ")".[4]
2.  _Symbol strings_: The theory will build "strings" of these symbols by concatenation (juxtaposition).[5]
3.  _Formation rules_: The theory specifies the rules of syntax (rules of grammar) usually as a recursive definition that starts with "0" and specifies how to build acceptable strings or "well-formed formulas" (wffs).[6] This includes a rule for "substitution"[7] of strings for the symbols called "variables" (as opposed to the other symbol-types).
4.  _Transformation rule(s)_: The axioms that specify the behaviours of the symbols and symbol sequences.
5.  ''Rule of inference, detachment, _modus ponens_ '': The rule that allows the theory to "detach" a "conclusion" from the "premises" that led up to it, and thereafter to discard the "premises" (symbols to the left of the line │, or symbols above the line if horizontal). If this were not the case, then substitution would result in longer and longer strings that have to be carried forward. Indeed, after the application of modus ponens, nothing is left but the conclusion, the rest disappears forever.

    Contemporary theories often specify as their first axiom the classical or modus ponens or "the rule of detachment":

        _A_, _A_ ⊃ _B_ │ ''B ''

    The symbol "│" is usually written as a horizontal line, here "⊃" means "implies". The symbols _A_ and _B_ are "stand-ins" for strings; this form of notation is called an "axiom schema" (i.e., there is a countable number of specific forms the notation could take). This can be read in a manner similar to IF-THEN but with a difference: given symbol string IF _A_ and _A_ implies _B_ THEN _B_ (and retain only _B_ for further use). But the symbols have no "interpretation" (e.g., no "truth table" or "truth values" or "truth functions") and modus ponens proceeds mechanistically, by grammar alone.

Construction

The theory of _PM_ has both significant similarities, and similar differences, to a contemporary formal theory. Kleene states that "this deduction of mathematics from logic was offered as intuitive axiomatics. The axioms were intended to be believed, or at least to be accepted as plausible hypotheses concerning the world".[8] Indeed, unlike a Formalist theory that manipulates symbols according to rules of grammar, _PM_ introduces the notion of "truth-values", i.e., truth and falsity in the _real-world_ sense, and the "assertion of truth" almost immediately as the fifth and sixth elements in the structure of the theory (_PM_ 1962:4–36):

1.  _Variables_
2.  _Uses of various letters_
3.  _The fundamental functions of propositions_: "the Contradictory Function" symbolised by "~" and the "Logical Sum or Disjunctive Function" symbolised by "∨" being taken as primitive and logical implication _defined_ (the following example also used to illustrate 9. _Definition_ below) as
    _p_ ⊃ _q_ .=. ~ _p_ ∨ _q_ DF. (_PM_ 1962:11)
    and logical product defined as
    _p_ . _q_ .=. ~(~_p_ ∨ ~_q_) DF. (_PM_ 1962:12)
4.  _Equivalence_: _Logical_ equivalence, not arithmetic equivalence: "≡" given as a demonstration of how the symbols are used, i.e., "Thus ' _p_ ≡ _q_ ' stands for '( _p_ ⊃ _q_ ) . ( _q_ ⊃ _p_ )'." (_PM_ 1962:7). Notice that to _discuss_ a notation _PM_ identifies a "meta"-notation with "[space] ... [space]":[9]
    Logical equivalence appears again as a _definition_:
    _p_ ≡ _q_ .=. ( _p_ ⊃ _q_ ) . ( _q_ ⊃ _p_ ) (_PM_ 1962:12),
    Notice the appearance of parentheses. This _grammatical_ usage is not specified and appears sporadically; parentheses do play an important role in symbol strings, however, e.g., the notation "(_x_)" for the contemporary "∀_x_".
5.  _Truth-values_: "The 'Truth-value' of a proposition is _truth_ if it is true, and _falsehood_ if it is false" (this phrase is due to Frege) (_PM_ 1962:7).
6.  _Assertion-sign_: "'⊦. _p_' may be read 'it is true that' ... thus '⊦: _p_ .⊃. _q_ ' means 'it is true that _p_ implies _q_ ', whereas '⊦. _p_ .⊃⊦. _q_ ' means ' _p_ is true; therefore _q_ is true'. The first of these does not necessarily involve the truth either of _p_ or of _q_, while the second involves the truth of both" (_PM_ 1962:92).
7.  _Inference_: _PM_ 's version of _modus ponens_. "[If] '⊦. _p_ ' and '⊦ (_p_ ⊃ _q_)' have occurred, then '⊦ . _q_ ' will occur if it is desired to put it on record. The process of the inference cannot be reduced to symbols. Its sole record is the occurrence of '⊦. _q_ ' [in other words, the symbols on the left disappear or can be erased]" (_PM_ 1962:9).
8.  _The use of dots_
9.  _Definitions_: These use the "=" sign with "Df" at the right end.
10. _Summary of preceding statements_: brief discussion of the primitive ideas "~ _p_" and "_p_ ∨ _q_" and "⊦" prefixed to a proposition.
11. _Primitive propositions_: the axioms or postulates. This was significantly modified in the second edition.
12. _Propositional functions_: The notion of "proposition" was significantly modified in the second edition, including the introduction of "atomic" propositions linked by logical signs to form "molecular" propositions, and the use of substitution of molecular propositions into atomic or molecular propositions to create new expressions.
13. _The range of values and total variation_
14. _Ambiguous assertion and the real variable_: This and the next two sections were modified or abandoned in the second edition. In particular, the distinction between the concepts defined in sections 15. _Definition and the real variable_ and 16 _Propositions connecting real and apparent variables_ was abandoned in the second edition.
15. _Formal implication and formal equivalence_
16. _Identity_
17. _Classes and relations_
18. _Various descriptive functions of relations_
19. _Plural descriptive functions_
20. _Unit classes_

Primitive ideas

Cf. _PM_ 1962:90–94, for the first edition:

-   (1) _Elementary propositions_.
-   (2) _Elementary propositions of functions_.
-   (3) _Assertion_: introduces the notions of "truth" and "falsity".
-   (4) _Assertion of a propositional function_.
-   (5) _Negation_: "If _p_ is any proposition, the proposition "not-_p_", or "_p_ is false," will be represented by "~_p_" ".
-   (6) _Disjunction_: "If _p_ and _q_ are any propositions, the proposition "_p_ or _q_, i.e., "either _p_ is true or _q_ is true," where the alternatives are to be not mutually exclusive, will be represented by "_p_ ∨ _q_" ".
-   (cf. section B)

Primitive propositions

The _first_ edition (see discussion relative to the second edition, below) begins with a definition of the sign "⊃"

✸1.01. _p_ ⊃ _q_ .=. ~ _p_ ∨ _q_. DF.

✸1.1. Anything implied by a true elementary proposition is true. PP modus ponens

(✸1.11 was abandoned in the second edition.)

✸1.2. ⊦: _p_ ∨ _p_ .⊃. _p_. PP principle of tautology

✸1.3. ⊦: _q_ .⊃. _p_ ∨ _q_. PP principle of addition

✸1.4. ⊦: _p_ ∨ _q_ .⊃. _q_ ∨ _p_. PP principle of permutation

✸1.5. ⊦: _p_ ∨ ( _q_ ∨ _r_ ) .⊃. _q_ ∨ ( _p_ ∨ _r_ ). PP associative principle

✸1.6. ⊦:. _q_ ⊃ _r_ .⊃: _p_ ∨ _q_ .⊃. _p_ ∨ _r_. PP principle of summation

✸1.7. If _p_ is an elementary proposition, ~_p_ is an elementary proposition. PP

✸1.71. If _p_ and _q_ are elementary propositions, _p_ ∨ _q_ is an elementary proposition. PP

✸1.72. If φ_p_ and ψ_p_ are elementary propositional functions which take elementary propositions as arguments, φ_p_ ∨ ψ_p_ is an elementary proposition. PP

Together with the "Introduction to the Second Edition", the second edition's Appendix A abandons the entire section ✸9. This includes six primitive propositions ✸9 through ✸9.15 together with the Axioms of reducibility.

The revised theory is made difficult by the introduction of the Sheffer stroke ("|") to symbolise "incompatibility" (i.e., if both elementary propositions _p_ and _q_ are true, their "stroke" _p_ | _q_ is false), the contemporary logical NAND (not-AND). In the revised theory, the Introduction presents the notion of "atomic proposition", a "datum" that "belongs to the philosophical part of logic". These have no parts that are propositions and do not contain the notions "all" or "some". For example: "this is red", or "this is earlier than that". Such things can exist _ad finitum_, i.e., even an "infinite enumeration" of them to replace "generality" (i.e., the notion of "for all").[10] _PM_ then "advance[s] to molecular propositions" that are all linked by "the stroke". Definitions give equivalences for "~", "∨", "⊃", and ".".

The new introduction defines "elementary propositions" as atomic and molecular positions together. It then replaces all the primitive propositions ✸1.2 to ✸1.72 with a single primitive proposition framed in terms of the stroke:

    "If _p_, _q_, _r_ are elementary propositions, given _p_ and _p_|(_q_|_r_), we can infer _r_. This is a primitive proposition."

The new introduction keeps the notation for "there exists" (now recast as "sometimes true") and "for all" (recast as "always true"). Appendix A strengthens the notion of "matrix" or "predicative function" (a "primitive idea", _PM_ 1962:164) and presents four new Primitive propositions as ✸8.1–✸8.13.

✸88. Multiplicative axiom

✸120. Axiom of infinity


Ramified types and the axiom of reducibility

In simple type theory objects are elements of various disjoint "types". Types are implicitly built up as follows. If τ₁,...,τ_(_m_) are types then there is a type (τ₁,...,τ_(_m_)) that can be thought of as the class of propositional functions of τ₁,...,τ_(_m_) (which in set theory is essentially the set of subsets of τ₁×...×τ_(_m_)). In particular there is a type () of propositions, and there may be a type ι (iota) of "individuals" from which other types are built. Russell and Whitehead's notation for building up types from other types is rather cumbersome, and the notation here is due to Church.

In the RAMIFIED TYPE THEORY of PM all objects are elements of various disjoint ramified types. Ramified types are implicitly built up as follows. If τ₁,...,τ_(_m_),σ₁,...,σ_(_n_) are ramified types then as in simple type theory there is a type (τ₁,...,τ_(_m_),σ₁,...,σ_(_n_)) of "predicative" propositional functions of τ₁,...,τ_(_m_),σ₁,...,σ_(_n_). However, there are also ramified types (τ₁,...,τ_(_m_)|σ₁,...,σ_(_n_)) that can be thought of as the classes of propositional functions of τ₁,...τ_(_m_) obtained from propositional functions of type (τ₁,...,τ_(_m_),σ₁,...,σ_(_n_)) by quantifying over σ₁,...,σ_(_n_). When _n_=0 (so there are no σs) these propositional functions are called predicative functions or matrices. This can be confusing because current mathematical practice does not distinguish between predicative and non-predicative functions, and in any case PM never defines exactly what a "predicative function" actually is: this is taken as a primitive notion.

Russell and Whitehead found it impossible to develop mathematics while maintaining the difference between predicative and non-predicative functions, so they introduced the axiom of reducibility, saying that for every non-predicative function there is a predicative function taking the same values. In practice this axiom essentially means that the elements of type (τ₁,...,τ_(_m_)|σ₁,...,σ_(_n_)) can be identified with the elements of type (τ₁,...,τ_(_m_)), which causes the hierarchy of ramified types to collapse down to simple type theory. (Strictly speaking this is not quite correct, because PM allows two propositional functions to be different even if they take the same values on all arguments; this differs from current mathematical practice where one normally identifies two such functions.)

In Zermelo set theory one can model the ramified type theory of PM as follows. One picks a set ι to be the type of individuals. For example, ι might be the set of natural numbers, or the set of atoms (in a set theory with atoms) or any other set one is interested in. Then if τ₁,...,τ_(_m_) are types, the type (τ₁,...,τ_(_m_)) is the power set of the product τ₁×...×τ_(_m_), which can also be thought of informally as the set of (propositional predicative) functions from this product to a 2-element set {true,false}. The ramified type (τ₁,...,τ_(_m_)|σ₁,...,σ_(_n_)) can be modeled as the product of the type (τ₁,...,τ_(_m_),σ₁,...,σ_(_n_)) with the set of sequences of _n_ quantifiers (∀ or ∃) indicating which quantifier should be applied to each variable σ_(_i_). (One can vary this slightly by allowing the σs to be quantified in any order, or allowing them to occur before some of the τs, but this makes little difference except to the bookkeeping.)


Notation

One author[11] observes that "The notation in that work has been superseded by the subsequent development of logic during the 20th century, to the extent that the beginner has trouble reading PM at all"; while much of the symbolic content can be converted to modern notation, the original notation itself is "a subject of scholarly dispute", and some notation "embodies substantive logical doctrines so that it cannot simply be replaced by contemporary symbolism".[12]

Kurt Gödel was harshly critical of the notation:

    "It is to be regretted that this first comprehensive and thorough-going presentation of a mathematical logic and the derivation of mathematics from it [is] so greatly lacking in formal precision in the foundations (contained in ✸1–✸21 of _Principia_ [i.e., sections ✸1–✸5 (propositional logic), ✸8–14 (predicate logic with identity/equality), ✸20 (introduction to set theory), and ✸21 (introduction to relations theory)]) that it represents in this respect a considerable step backwards as compared with Frege. What is missing, above all, is a precise statement of the syntax of the formalism. Syntactical considerations are omitted even in cases where they are necessary for the cogency of the proofs".[13]

This is reflected in the example below of the symbols "_p_", "_q_", "_r_" and "⊃" that can be formed into the string "_p_ ⊃ _q_ ⊃ _r_". _PM_ requires a _definition_ of what this symbol-string means in terms of other symbols; in contemporary treatments the "formation rules" (syntactical rules leading to "well formed formulas") would have prevented the formation of this string.

SOURCE OF THE NOTATION: Chapter I "Preliminary Explanations of Ideas and Notations" begins with the source of the elementary parts of the notation (the symbols =⊃≡−ΛVε and the system of dots):

    "The notation adopted in the present work is based upon that of Peano, and the following explanations are to some extent modeled on those which he prefixes to his _Formulario Mathematico_ [i.e., Peano 1889]. His use of dots as brackets is adopted, and so are many of his symbols" (_PM_ 1927:4).[14]

PM changed Peano's Ɔ to ⊃, and also adopted a few of Peano's later symbols, such as ℩ and ι, and Peano's practice of turning letters upside down.

_PM_ adopts the assertion sign "⊦" from Frege's 1879 _Begriffsschrift_:[15]

    "(I)t may be read 'it is true that'"[16]

Thus to assert a proposition _p_ _PM_ writes:

    "⊦. _p_." (_PM_ 1927:92)

(Observe that, as in the original, the left dot is square and of greater size than the period on the right.)

Most of the rest of the notation in PM was invented by Whitehead.

An introduction to the notation of "Section A Mathematical Logic" (formulas ✸1–✸5.71)

_PM_ 's dots[17] are used in a manner similar to parentheses. Each dot (or multiple dot) represents either a left or right parenthesis or the logical symbol ∧. More than one dot indicates the "depth" of the parentheses, for example, ".", ":" or ":.", "::". However the position of the matching right or left parenthesis is not indicated explicitly in the notation but has to be deduced from some rules that are complex and at times ambiguous. Moreover, when the dots stand for a logical symbol ∧ its left and right operands have to be deduced using similar rules. First one has to decide based on context whether the dots stand for a left or right parenthesis or a logical symbol. Then one has to decide how far the other corresponding parenthesis is: here one carries on until one meets either a larger number of dots, or the same number of dots next that have equal or greater "force", or the end of the line. Dots next to the signs ⊃, ≡,∨, =Df have greater force than dots next to (_x_), (∃_x_) and so on, which have greater force than dots indicating a logical product ∧.

Example 1. The line

    ✸3.4. ⊢ : p . q . ⊃ . p ⊃ q

corresponds to

    ⊢ ((p ∧ q) ⊃ (p ⊃ q)).

The two dots standing together immediately following the assertion-sign indicate that what is asserted is the entire line: since there are two of them, their scope is greater than that of any of the single dots to their right. They are replaced by a left parenthesis standing where the dots are and a right parenthesis at the end of the formula, thus:

    ⊢ (p . q . ⊃ . p ⊃ q).

(In practice, these outermost parentheses, which enclose an entire formula, are usually suppressed.) The first of the single dots, standing between two propositional variables, represents conjunction. It belongs to the third group and has the narrowest scope. Here it is replaced by the modern symbol for conjunction "∧", thus

    ⊢ (p ∧ q . ⊃ . p ⊃ q).

The two remaining single dots pick out the main connective of the whole formula. They illustrate the utility of the dot notation in picking out those connectives which are relatively more important than the ones which surround them. The one to the left of the "⊃" is replaced by a pair of parentheses, the right one goes where the dot is and the left one goes as far to the left as it can without crossing a group of dots of greater force, in this case the two dots which follow the assertion-sign, thus

    ⊢ ((p ∧ q) . ⊃ . p ⊃ q)

The dot to the right of the "⊃" is replaced by a left parenthesis which goes where the dot is and a right parenthesis which goes as far to the right as it can without going beyond the scope already established by a group of dots of greater force (in this case the two dots which followed the assertion-sign). So the right parenthesis which replaces the dot to the right of the "⊃" is placed in front of the right parenthesis which replaced the two dots following the assertion-sign, thus

    ⊢ ((p ∧ q) ⊃ (p ⊃ q)).

Example 2, with double, triple, and quadruple dots:

    ✸9.521. ⊢ : : (∃x). φx . ⊃ . q : ⊃ : . (∃x). φx . v . r : ⊃ . q v r

stands for

    ((((∃x)(φx)) ⊃ (q)) ⊃ ((((∃x) (φx)) v (r)) ⊃ (q v r)))

Example 3, with a double dot indicating a logical symbol (from volume 1, page 10):

    _p_⊃_q_:_q_⊃_r_.⊃._p_⊃_r_

stands for

    ((_p_⊃_q_) ∧ (_q_⊃_r_))⊃(_p_⊃_r_)

where the double dot represents the logical symbol ∧ and can be viewed as having the same priority as a non-logical single dot.

Later in section ✸14, brackets "[ ]" appear, and in sections ✸20 and following, braces "{ }" appear. Whether these symbols have specific meanings or are just for visual clarification is unclear. Unfortunately the single dot (but also ":", ":.", "::", etc.) is also used to symbolise "logical product" (contemporary logical AND often symbolised by "&" or "∧").

Logical implication is represented by Peano's "Ɔ" simplified to "⊃", logical negation is symbolised by an elongated tilde, i.e., "~" (contemporary "~" or "¬"), the logical OR by "v". The symbol "=" together with "Df" is used to indicate "is defined as", whereas in sections ✸13 and following, "=" is defined as (mathematically) "identical with", i.e., contemporary mathematical "equality" (cf. discussion in section ✸13). Logical equivalence is represented by "≡" (contemporary "if and only if"); "elementary" propositional functions are written in the customary way, e.g., "_f_(_p_)", but later the function sign appears directly before the variable without parenthesis e.g., "φ_x_", "χ_x_", etc.

Example, _PM_ introduces the definition of "logical product" as follows:

    ✸3.01. _p_ . _q_ .=. ~(~_p_ v ~_q_) DF.

        where "_p_ . _q_" is the logical product of _p_ and _q_.

    ✸3.02. _p_ ⊃ _q_ ⊃ _r_ .=. _p_ ⊃ _q_ . _q_ ⊃ _r_ DF.

        This definition serves merely to abbreviate proofs.

TRANSLATION OF THE FORMULAS INTO CONTEMPORARY SYMBOLS: Various authors use alternate symbols, so no definitive translation can be given. However, because of criticisms such as that of Kurt Gödel below, the best contemporary treatments will be very precise with respect to the "formation rules" (the syntax) of the formulas.

The first formula might be converted into modern symbolism as follows:[18]

    (_p_ & _q_) =_(df) (~(~_p_ v ~_q_))

alternately

    (_p_ & _q_) =_(df) (¬(¬_p_ v ¬_q_))

alternately

    (_p_ ∧ _q_) =_(df) (¬(¬_p_ v ¬_q_))

etc.

The second formula might be converted as follows:

    (_p_ → _q_ → _r_) =_(df) (_p_ → _q_) & (_q_ → _r_)

But note that this is not (logically) equivalent to (_p_ → (_q_ → _r_)) nor to ((_p_ → _q_) → _r_), and these two are not logically equivalent either.

An introduction to the notation of "Section B Theory of Apparent Variables" (formulas ✸8–✸14.34)

These sections concern what is now known as predicate logic, and predicate logic with identity (equality).

:* NB: As a result of criticism and advances, the second edition of _PM_ (1927) replaces ✸9 with a new ✸8 (Appendix A). This new section eliminates the first edition's distinction between real and apparent variables, and it eliminates "the primitive idea 'assertion of a propositional function'.[19] To add to the complexity of the treatment, ✸8 introduces the notion of substituting a "matrix", and the Sheffer stroke:

:::* MATRIX: In contemporary usage, _PM_ 's _matrix_ is (at least for propositional functions), a truth table, i.e., _all_ truth-values of a propositional or predicate function.

:::* SHEFFER STROKE: Is the contemporary logical NAND (NOT-AND), i.e., "incompatibility", meaning:



        "Given two propositions _p_ and _q_, then ' _p_ | _q_ ' means "proposition _p_ is incompatible with proposition _q_", i.e., if both propositions _p_ and _q_ evaluate as true, then and only then _p_ | _q_ evaluates as false." After section ✸8 the Sheffer stroke sees no usage.

Section ✸10: THE EXISTENTIAL AND UNIVERSAL "OPERATORS": _PM_ adds "(_x_)" to represent the contemporary symbolism "for all _x_ " i.e., " ∀_x_", and it uses a backwards serifed E to represent "there exists an _x_", i.e., "(Ǝx)", i.e., the contemporary "∃x". The typical notation would be similar to the following:

    "(_x_) . φ_x_" means "for all values of variable _x_, function φ evaluates to true"
    "(Ǝ_x_) . φ_x_" means "for some value of variable _x_, function φ evaluates to true"

Sections ✸10, ✸11, ✸12: PROPERTIES OF A VARIABLE EXTENDED TO ALL INDIVIDUALS: section ✸10 introduces the notion of "a property" of a "variable". _PM_ gives the example: φ is a function that indicates "is a Greek", and ψ indicates "is a man", and χ indicates "is a mortal" these functions then apply to a variable _x_. _PM_ can now write, and evaluate:

    (_x_) . ψ_x_

The notation above means "for all _x_, _x_ is a man". Given a collection of individuals, one can evaluate the above formula for truth or falsity. For example, given the restricted collection of individuals { Socrates, Plato, Russell, Zeus } the above evaluates to "true" if we allow for Zeus to be a man. But it fails for:

    (_x_) . φ_x_

because Russell is not Greek. And it fails for

    (_x_) . χ_x_

because Zeus is not a mortal.

Equipped with this notation _PM_ can create formulas to express the following: "If all Greeks are men and if all men are mortals then all Greeks are mortals". (_PM_ 1962:138)

    (_x_) . φ_x_ ⊃ ψ_x_ :(_x_). ψ_x_ ⊃ χ_x_ :⊃: (_x_) . φ_x_ ⊃ χ_x_

Another example: the formula:

    ✸10.01. (Ǝ_x_). φ_x_ . = . ~(_x_) . ~φ_x_ DF.

means "The symbols representing the assertion 'There exists at least one _x_ that satisfies function φ' is defined by the symbols representing the assertion 'It's not true that, given all values of _x_, there are no values of _x_ satisfying φ'".

The symbolisms ⊃_(_x_) and "≡_(_x_)" appear at ✸10.02 and ✸10.03. Both are abbreviations for universality (i.e., for all) that bind the variable _x_ to the logical operator. Contemporary notation would have simply used parentheses outside of the equality ("=") sign:

    ✸10.02 φ_x_ ⊃_(_x_) ψ_x_ .=. (_x_). φ_x_ ⊃ ψ_x_ DF

        Contemporary notation: ∀_x_(φ(_x_) → ψ(_x_)) (or a variant)

    ✸10.03 φ_x_ ≡_(_x_) ψ_x_ .=. (_x_). φ_x_ ≡ ψ_x_ DF

        Contemporary notation: ∀_x_(φ(_x_) ↔ ψ(_x_)) (or a variant)

_PM_ attributes the first symbolism to Peano.

Section ✸11 applies this symbolism to two variables. Thus the following notations: ⊃_(_x_), ⊃_(_y_), ⊃_(_x,\ y_) could all appear in a single formula.

Section ✸12 reintroduces the notion of "matrix" (contemporary truth table), the notion of logical types, and in particular the notions of _first-order_ and _second-order_ functions and propositions.

New symbolism "φ ! _x_" represents any value of a first-order function. If a circumflex "＾" is placed over a variable, then this is an "individual" value of _y_, meaning that "_ŷ_" indicates "individuals" (e.g., a row in a truth table); this distinction is necessary because of the matrix/extensional nature of propositional functions.

Now equipped with the matrix notion, _PM_ can assert its controversial axiom of reducibility: a function of one or two variables (two being sufficient for _PM_ 's use) _where all its values are given_ (i.e., in its matrix) is (logically) equivalent ("≡") to some "predicative" function of the same variables. The one-variable definition is given below as an illustration of the notation (_PM_ 1962:166–167):

✸12.1 ⊢: (Ǝ _f_): φ_x_ .≡_(_x_). _f_ ! _x_ PP;



        PP is a "Primitive proposition" ("Propositions assumed without proof") (_PM_ 1962:12, i.e., contemporary "axioms"), adding to the 7 defined in section ✸1 (starting with ✸1.1 modus ponens). These are to be distinguished from the "primitive ideas" that include the assertion sign "⊢", negation "~", logical OR "V", the notions of "elementary proposition" and "elementary propositional function"; these are as close as _PM_ comes to rules of notational formation, i.e., syntax.

This means: "We assert the truth of the following: There exists a function _f_ with the property that: given all values of _x_, their evaluations in function φ (i.e., resulting their matrix) is logically equivalent to some _f_ evaluated at those same values of _x_. (and vice versa, hence logical equivalence)". In other words: given a matrix determined by property φ applied to variable _x_, there exists a function _f_ that, when applied to the _x_ is logically equivalent to the matrix. Or: every matrix φ_x_ can be represented by a function _f_ applied to _x_, and vice versa.

'''✸13: The identity operator "=" ''': This is a definition that uses the sign in two different ways, as noted by the quote from _PM_:

    ✸13.01. _x_ = _y_ .=: (φ): φ ! _x_ . ⊃ . φ ! _y_ DF

means:

    "This definition states that _x_ and _y_ are to be called identical when every predicative function satisfied by _x_ is also satisfied by _y_ ... Note that the second sign of equality in the above definition is combined with "Df", and thus is not really the same symbol as the sign of equality which is defined."

The not-equals sign "≠" makes its appearance as a definition at ✸13.02.

✸14: DESCRIPTIONS:

    "A _description_ is a phrase of the form "the term _y_ which satisfies φ_ŷ_, where φ_ŷ_ is some function satisfied by one and only one argument."[20]

From this _PM_ employs two new symbols, a forward "E" and an inverted iota "℩". Here is an example:

    ✸14.02. E ! ( ℩_y_) (φ_y_) .=: ( Ǝ_b_):φ_y_ . ≡_(_y_) . _y_ = _b_ DF.

This has the meaning:

    "The _y_ satisfying φ_ŷ_ exists," which holds when, and only when φ_ŷ_ is satisfied by one value of _y_ and by no other value." (_PM_ 1967:173–174)

Introduction to the notation of the theory of classes and relations

The text leaps from section ✸14 directly to the foundational sections ✸20 GENERAL THEORY OF CLASSES and ✸21 GENERAL THEORY OF RELATIONS. "Relations" are what is known in contemporary set theory as sets of ordered pairs. Sections ✸20 and ✸22 introduce many of the symbols still in contemporary usage. These include the symbols "ε", "⊂", "∩", "∪", "–", "Λ", and "V": "ε" signifies "is an element of" (_PM_ 1962:188); "⊂" (✸22.01) signifies "is contained in", "is a subset of"; "∩" (✸22.02) signifies the intersection (logical product) of classes (sets); "∪" (✸22.03) signifies the union (logical sum) of classes (sets); "–" (✸22.03) signifies negation of a class (set); "Λ" signifies the null class; and "V" signifies the universal class or universe of discourse.

Small Greek letters (other than "ε", "ι", "π", "φ", "ψ", "χ", and "θ") represent classes (e.g., "α", "β", "γ", "δ", etc.) (_PM_ 1962:188):

    _x_ ε α

        "The use of single letter in place of symbols such as _ẑ_(φ_z_) or _ẑ_(φ ! _z_) is practically almost indispensable, since otherwise the notation rapidly becomes intolerably cumbrous. Thus ' _x_ ε α' will mean ' _x_ is a member of the class α'". (_PM_ 1962:188)

    α ∪ –α = V

        The union of a set and its inverse is the universal (completed) set.[21]

    α ∩ –α = Λ

        The intersection of a set and its inverse is the null (empty) set.

When applied to relations in section ✸23 CALCULUS OF RELATIONS, the symbols "⊂", "∩", "∪", and "–" acquire a dot: for example: "⊍", "∸".[22]

THE NOTION, AND NOTATION, OF "A CLASS" (SET): In the first edition _PM_ asserts that no new primitive ideas are necessary to define what is meant by "a class", and only two new "primitive propositions" called the axioms of reducibility for classes and relations respectively (_PM_ 1962:25).[23] But before this notion can be defined, _PM_ feels it necessary to create a peculiar notation "_ẑ_(φ_z_)" that it calls a "fictitious object". (_PM_ 1962:188)

    ⊢: _x_ ε _ẑ_(φ_z_) .≡. (φ_x_)

        "i.e., ' _x_ is a member of the class determined by (φ_ẑ_)' is [logically] equivalent to ' _x_ satisfies (φ_ẑ_),' or to '(φ_x_) is true.'". (_PM_ 1962:25)

At least _PM_ can tell the reader how these fictitious objects behave, because "A class is wholly determinate when its membership is known, that is, there cannot be two different classes having the same membership" (_PM_ 1962:26). This is symbolised by the following equality (similar to ✸13.01 above:

    _ẑ_(φ_z_) = _ẑ_(ψ_z_) . ≡ : (_x_): φ_x_ .≡. ψ_x_

        "This last is the distinguishing characteristic of classes, and justifies us in treating _ẑ_(ψ_z_) as the class determined by [the function] ψ_ẑ_." (_PM_ 1962:188)

Perhaps the above can be made clearer by the discussion of classes in _Introduction to the Second Edition_, which disposes of the _Axiom of Reducibility_ and replaces it with the notion: "All functions of functions are extensional" (_PM_ 1962:xxxix), i.e.,

    φ_x_ ≡_(_x_) ψ_x_ .⊃. (_x_): ƒ(φ_ẑ_) ≡ ƒ(ψ_ẑ_) (_PM_ 1962:xxxix)

This has the reasonable meaning that "IF for all values of _x_ the _truth-values_ of the functions φ and ψ of _x_ are [logically] equivalent, THEN the function ƒ of a given φ_ẑ_ and ƒ of ψ_ẑ_ are [logically] equivalent." _PM_ asserts this is "obvious":

    "This is obvious, since φ can only occur in ƒ(φ_ẑ_) by the substitution of values of φ for _p, q, r, ..._ in a [logical-] function, and, if φ_x_ ≡ ψ_x_, the substitution of φ_x_ for _p_ in a [logical-] function gives the same truth-value to the truth-function as the substitution of ψ_x_. Consequently there is no longer any reason to distinguish between functions classes, for we have, in virtue of the above,
    φ_x_ ≡_(_x_) ψ_x_ .⊃. (_x_). φ_ẑ_ = . ψ_ẑ_".

Observe the change to the equality "=" sign on the right. _PM_ goes on to state that will continue to hang onto the notation "_ẑ_(φ_z_)", but this is merely equivalent to φ_ẑ_, and this is a class. (all quotes: _PM_ 1962:xxxix).


Consistency and criticisms

According to Carnap's "Logicist Foundations of Mathematics", Russell wanted a theory that could plausibly be said to derive all of mathematics from purely logical axioms. However, Principia Mathematica required, in addition to the basic axioms of type theory, three further axioms that seemed to not be true as mere matters of logic, namely the axiom of infinity, the axiom of choice, and the axiom of reducibility. Since the first two were existential axioms, Russell phrased mathematical statements depending on them as conditionals. But reducibility was required to be sure that the formal statements even properly express statements of real analysis, so that statements depending on it could not be reformulated as conditionals. Frank P. Ramsey tried to argue that Russell's ramification of the theory of types was unnecessary, so that reducibility could be removed, but these arguments seemed inconclusive.

Beyond the status of the axioms as logical truths, one can ask the following questions about any system such as PM:

-   whether a contradiction could be derived from the axioms (the question of inconsistency), and
-   whether there exists a mathematical statement which could neither be proven nor disproven in the system (the question of completeness).

Propositional logic itself was known to be consistent, but the same had not been established for _Principia_'s axioms of set theory. (See Hilbert's second problem.) Russell and Whitehead suspected that the system in PM is incomplete: for example, they pointed out that it does not seem powerful enough to show that the cardinal ℵ_(ω) exists. However, one can ask if some recursively axiomatizable extension of it is complete and consistent.

Gödel 1930, 1931

In 1930, Gödel's completeness theorem showed that first-order predicate logic itself was complete in a much weaker sense—that is, any sentence that is unprovable from a given set of axioms must actually be false in some model of the axioms. However, this is not the stronger sense of completeness desired for Principia Mathematica, since a given system of axioms (such as those of Principia Mathematica) may have many models, in some of which a given statement is true and in others of which that statement is false, so that the statement is left undecided by the axioms.

Gödel's incompleteness theorems cast unexpected light on these two related questions.

Gödel's first incompleteness theorem showed that no recursive extension of _Principia_ could be both consistent and complete for arithmetic statements. (As mentioned above, Principia itself was already known to be incomplete for some non-arithmetic statements.) According to the theorem, within every sufficiently powerful recursive logical system (such as _Principia_), there exists a statement _G_ that essentially reads, "The statement _G_ cannot be proved." Such a statement is a sort of Catch-22: if _G_ is provable, then it is false, and the system is therefore inconsistent; and if _G_ is not provable, then it is true, and the system is therefore incomplete.

Gödel's second incompleteness theorem (1931) shows that no formal system extending basic arithmetic can be used to prove its own consistency. Thus, the statement "there are no contradictions in the _Principia_ system" cannot be proven in the _Principia_ system unless there _are_ contradictions in the system (in which case it can be proven both true and false).

Wittgenstein 1919, 1939

By the second edition of _PM_, Russell had removed his _axiom of reducibility_ to a new axiom (although he does not state it as such). Gödel 1944:126 describes it this way:

    "This change is connected with the new axiom that functions can occur in propositions only "through their values", i.e., extensionally . . . [this is] quite unobjectionable even from the constructive standpoint . . . provided that quantifiers are always restricted to definite orders". This change from a quasi-_intensional_ stance to a fully _extensional_ stance also restricts predicate logic to the second order, i.e. functions of functions: "We can decide that mathematics is to confine itself to functions of functions which obey the above assumption" (_PM_ 2nd edition p. 401, Appendix C).

This new proposal resulted in a dire outcome. An "extensional stance" and restriction to a second-order predicate logic means that a propositional function extended to all individuals such as "All 'x' are blue" now has to list all of the 'x' that satisfy (are true in) the proposition, listing them in a possibly infinite conjunction: e.g. _x₁_ ∧ _x₂_ ∧ . . . ∧ _x_(n)_ ∧ . . .. Ironically, this change came about as the result of criticism from Wittgenstein in his 1919 _Tractatus Logico-Philosophicus_. As described by Russell in the Introduction to the Second Edition of _PM_:

    "There is another course, recommended by Wittgenstein† (†_Tractatus Logico-Philosophicus_, *5.54ff) for philosophical reasons. This is to assume that functions of propositions are always truth-functions, and that a function can only occur in a proposition through its values. [...] [Working through the consequences] it appears that everything in Vol. I remains true (though often new proofs are required); the theory of inductive cardinals and ordinals survives; but it seems that the theory of infinite Dedekindian and well-ordered series largely collapses, so that irrationals, and real numbers generally, can no longer be adequately dealt with. Also Cantor's proof that 2^(n) > _n_ breaks down unless _n_ is finite." (_PM_ 2nd edition reprinted 1962:xiv, also cf. new Appendix C).

In other words, the fact that an infinite list cannot realistically be specified means that the concept of "number" in the infinite sense (i.e. the continuum) cannot be described by the new theory proposed in _PM Second Edition_.

Wittgenstein in his _Lectures on the Foundations of Mathematics, Cambridge 1939_ criticised _Principia_ on various grounds, such as:

-   It purports to reveal the fundamental basis for arithmetic. However, it is our everyday arithmetical practices such as counting which are fundamental; for if a persistent discrepancy arose between counting and _Principia_, this would be treated as evidence of an error in _Principia_ (e.g., that Principia did not characterise numbers or addition correctly), not as evidence of an error in everyday counting.
-   The calculating methods in _Principia_ can only be used in practice with very small numbers. To calculate using large numbers (e.g., billions), the formulae would become too long, and some short-cut method would have to be used, which would no doubt rely on everyday techniques such as counting (or else on non-fundamental and hence questionable methods such as induction). So again _Principia_ depends on everyday techniques, not vice versa.

Wittgenstein did, however, concede that _Principia_ may nonetheless make some aspects of everyday arithmetic clearer.

Gödel 1944

In his 1944 _Russell's mathematical logic_, Gödel offers a "critical but sympathetic discussion of the logicistic order of ideas":[24]

    "It is to be regretted that this first comprehensive and thorough-going presentation of a mathematical logic and the derivation of mathematics from it [is] so greatly lacking in formal precision in the foundations (contained in *1-*21 of _Principia_) that it represents in this respect a considerable step backwards as compared with Frege. What is missing, above all, is a precise statement of the syntax of the formalism. Syntactical considerations are omitted even in cases where they are necessary for the cogency of the proofs . . . The matter is especially doubtful for the rule of substitution and of replacing defined symbols by their _definiens_ . . . it is chiefly the rule of substitution which would have to be proved" (Gödel 1944:124)[25]


Contents

Part I Mathematical logic. Volume I ✸1 to ✸43

This section describes the propositional and predicate calculus, and gives the basic properties of classes, relations, and types.

Part II Prolegomena to cardinal arithmetic. Volume I ✸50 to ✸97

This part covers various properties of relations, especially those needed for cardinal arithmetic.

Part III Cardinal arithmetic. Volume II ✸100 to ✸126

This covers the definition and basic properties of cardinals. A cardinal is defined to be an equivalence class of similar classes (as opposed to ZFC, where a cardinal is a special sort of von Neumann ordinal). Each type has its own collection of cardinals associated with it, and there is a considerable amount of bookkeeping necessary for comparing cardinals of different types. PM define addition, multiplication and exponentiation of cardinals, and compare different definitions of finite and infinite cardinals. ✸120.03 is the Axiom of infinity.

Part IV Relation-arithmetic. Volume II ✸150 to ✸186

A "relation-number" is an equivalence class of isomorphic relations. PM defines analogues of addition, multiplication, and exponentiation for arbitrary relations. The addition and multiplication is similar to the usual definition of addition and multiplication of ordinals in ZFC, though the definition of exponentiation of relations in PM is not equivalent to the usual one used in ZFC.

Part V Series. Volume II ✸200 to ✸234 and volume III ✸250 to ✸276

This covers series, which is PM's term for what is now called a totally ordered set. In particular it covers complete series, continuous functions between series with the order topology (though of course they do not use this terminology), well-ordered series, and series without "gaps" (those with a member strictly between any two given members).

Part VI Quantity. Volume III ✸300 to ✸375

This section constructs the ring of integers, the fields of rational and real numbers, and "vector-families", which are related to what are now called torsors over abelian groups.


Comparison with set theory

This section compares the system in PM with the usual mathematical foundations of ZFC. The system of PM is roughly comparable in strength with Zermelo set theory (or more precisely a version of it where the axiom of separation has all quantifiers bounded).

-   The system of propositional logic and predicate calculus in PM is essentially the same as that used now, except that the notation and terminology has changed.
-   The most obvious difference between PM and set theory is that in PM all objects belong to one of a number of disjoint types. This means that everything gets duplicated for each (infinite) type: for example, each type has its own ordinals, cardinals, real numbers, and so on. This results in a lot of bookkeeping to relate the various types with each other.
-   In ZFC functions are normally coded as sets of ordered pairs. In PM functions are treated rather differently. First of all, "function" means "propositional function", something taking values true or false. Second, functions are not determined by their values: it is possible to have several different functions all taking the same values (for example, one might regard 2_x_+2 and 2(_x_+1) as different functions on grounds that the computer programs for evaluating them are different). The functions in ZFC given by sets of ordered pairs correspond to what PM call "matrices", and the more general functions in PM are coded by quantifying over some variables. In particular PM distinguishes between functions defined using quantification and functions not defined using quantification, whereas ZFC does not make this distinction.
-   PM has no analogue of the axiom of replacement, though this is of little practical importance as this axiom is used very little in mathematics outside set theory.
-   PM emphasizes relations as a fundamental concept, whereas in current mathematical practice it is functions rather than relations that are treated as more fundamental; for example, category theory emphasizes morphisms or functions rather than relations. (However, there is an analogue of categories called allegories that models relations rather than functions, and is quite similar to the type system of PM.)
-   In PM, cardinals are defined as classes of similar classes, whereas in ZFC cardinals are special ordinals. In PM there is a different collection of cardinals for each type with some complicated machinery for moving cardinals between types, whereas in ZFC there is only 1 sort of cardinal. Since PM does not have any equivalent of the axiom of replacement, it is unable to prove the existence of cardinals greater than ℵ_(ω).
-   In PM ordinals are treated as equivalence classes of well-ordered sets, and as with cardinals there is a different collection of ordinals for each type. In ZFC there is only one collection of ordinals, usually defined as von Neumann ordinals. One strange quirk of PM is that they do not have an ordinal corresponding to 1, which causes numerous unnecessary complications in their theorems. The definition of ordinal exponentiation α^(β) in PM is not equivalent to the usual definition in ZFC and has some rather undesirable properties: for example, it is not continuous in β and is not well ordered (so is not even an ordinal).
-   The constructions of the integers, rationals and real numbers in ZFC have been streamlined considerably over time since the constructions in PM.


Differences between editions

Apart from corrections of misprints, the main text of PM is unchanged between the first and second editions. The main text in Volumes 1 and 2 was reset, so that it occupies fewer pages in each. In the second edition, Volume 3 was not reset, being photographically reprinted with the same page numbering; corrections were still made. The total number of pages (excluding the endpapers) in the first edition is 1,996; in the second, 2,000. Volume 1 has five new additions:

-   A 54-page introduction by Russell describing the changes they would have made had they had more time and energy. The main change he suggests is the removal of the controversial axiom of reducibility, though he admits that he knows no satisfactory substitute for it. He also seems more favorable to the idea that a function should be determined by its values (as is usual in current mathematical practice).
-   Appendix A, numbered as *8, 15 pages, about the Sheffer stroke.
-   Appendix B, numbered as *89, discussing induction without the axiom of reducibility.
-   Appendix C, 8 pages, discussing propositional functions.
-   An 8-page list of definitions at the end, giving a much-needed index to the 500 or so notations used.

In 1962, Cambridge University Press published a shortened paperback edition containing parts of the second edition of Volume 1: the new introduction (and the old), the main text up to *56, and Appendices A and C.


See also

-   Axiomatic set theory
-   _Begriffsschrift_
-   Boolean algebra (logic)
-   Information Processing Language – first computational demonstration of theorems in PM


Footnotes


References

PRIMARY:

-   -   -   -   -   -   -

The first edition was reprinted in 2009 by Merchant Books, , , .

SECONDARY:

-   Stephen Kleene 1952 _Introduction to Meta-Mathematics_, 6th Reprint, North-Holland Publishing Company, Amsterdam NY, .
    -

-   Ivor Grattan-Guinness (2000) _The Search for Mathematical Roots 1870–1940_, Princeton University Press, Princeton N.J., (alk. paper).
-   Ludwig Wittgenstein 2009 _Major Works: Selected Philosophical Writings_, HarperrCollins, NY, NY, . In particular:



        _Tractatus Logico-Philosophicus_ (Vienna 1918, original publication in German).

-   Jean van Heijenoort editor 1967 _From Frege to Gödel: A Source book in Mathematical Logic, 1879–1931_, 3rd printing, Harvard University Press, Cambridge MA, (pbk.)
-   Michel Weber and Will Desmond (eds.). _Handbook of Whiteheadian Process Thought_, Frankfurt / Lancaster, Ontos Verlag, Process Thought X1 & X2, 2008.


External links

-   Stanford Encyclopedia of Philosophy:
    -   _Principia Mathematica_— by A. D. Irvine
    -   The Notation in _Principia Mathematica_—by Bernard Linsky.
-   Proposition ✸54.43 in a more modern notation (Metamath)

Category:Large-scale mathematical formalization projects Category:1910 books Category:1912 books Category:1913 books Category:1910 in science Category:1912 in science Category:1913 in science Category:Books by Bertrand Russell Category:Works by Alfred North Whitehead Category:Philosophy of mathematics literature

[1]

[2]

[3]

[4] This set is taken from Kleene 1952:69 substituting → for ⊃.

[5] Kleene 1952:71, Enderton 2001:15

[6] Enderton 2001:16

[7] This is the word used by Kleene 1952:78

[8] Quote from Kleene 1952:45. See discussion LOGICISM at pages 43–46.

[9] In his section 8.5.4 _Groping towards metalogic_ Grattan-Guinness 2000:454ff discusses the American logicians' critical reception of the second edition of _PM_. For instance Sheffer "puzzled that ' _In order to give an account of logic, we must presuppose and employ logic_ ' " (p. 452). And Bernstein ended his 1926 review with the comment that "This distinction between the propositional logic as a mathematical system and as a language must be made, if serious errors are to be avoided; this distinction the _Principia_ does not make" (p.454).

[10] This idea is due to Wittgenstein's _Tractatus_. See the discussion at _PM_ 1962:xiv–xv)

[11]

[12]

[13] Kurt Gödel 1944 "Russell's mathematical logic" appearing at page 120 in Feferman et al. 1990 _Kurt Gödel Collected Works Volume II_, Oxford University Press, NY, (v.2.pbk.) .

[14] For comparison, see the translated portion of Peano 1889 in van Heijenoort 1967:81ff.

[15] This work can be found at van Heijenoort 1967:1ff.

[16] And see footnote, both at PM 1927:92

[17] The original typography is a square of a heavier weight than the conventional period.

[18] The first example comes from plato.stanford.edu (loc.cit.).

[19] page xiii of 1927 appearing in the 1962 paperback edition to ✸56.

[20] The original typography employs an _x_ with a circumflex rather than _ŷ_; this continues below

[21] See the ten postulates of Huntington, in particular postulates IIa and IIb at _PM_ 1962:205 and discussion at page 206.

[22] The "⊂" sign has a dot inside it, and the intersection sign "∩" has a dot above it; these are not available in the "Arial Unicode MS" font.

[23] Wiener 1914 "A simplification of the logic of relations" (van Heijenoort 1967:224ff) disposed of the second of these when he showed how to reduce the theory of relations to that of classes

[24] Kleene 1952:46.

[25] Gödel 1944 _Russell's mathematical logic_ in _Kurt Gödel: Collected Works Volume II_, Oxford University Press, New York, NY, .