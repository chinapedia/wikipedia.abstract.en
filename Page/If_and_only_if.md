In logic and related fields such as mathematics and philosophy, IF AND ONLY IF (shortened IFF) is a biconditional logical connective between statements, where either both statements are true or both are false.

The connective is biconditional (a statement of MATERIAL EQUIVALENCE ),[1] and can be likened to the standard material conditional ("only if", equal to "if ... then") combined with its reverse ("if"); hence the name. The result is that the truth of either one of the connected statements requires the truth of the other (i.e. either both statements are true, or both are false). It is controversial whether the connective thus defined is properly rendered by the English "if and only if", with its pre-existing meaning.

In writing, phrases commonly used as alternatives to P "if and only if" Q include: _Q is necessary and sufficient for P_, _P is equivalent (or materially equivalent) to Q_ (compare material implication), _P precisely if Q_, _P precisely (or exactly) when Q_, _P exactly in case Q_, and _P just in case Q_.[2] Some authors regard "iff" as unsuitable in formal writing;[3] others consider it a "borderline case" and tolerate its use.[4]

In logical formulae, logical symbols are used instead of these phrases; see the discussion of notation.


Definition

The truth table of _P_ ⇔ _Q_ is as follows:[5][6]

+-----+-----+---+---+---+
| _P_ | _Q_ |   |   |   |
+=====+=====+===+===+===+
| T   | T   | T | T | T |
+-----+-----+---+---+---+
| T   | F   | F | T | F |
+-----+-----+---+---+---+
| F   | T   | T | F | F |
+-----+-----+---+---+---+
| F   | F   | T | T | T |
+-----+-----+---+---+---+

: Truth table

It is equivalent to that produced by the XNOR gate, and opposite to that produced by the XOR gate.


Usage

Notation

The corresponding logical symbols are "↔", "⇔", and "≡", and sometimes "iff". These are usually treated as equivalent. However, some texts of mathematical logic (particularly those on first-order logic, rather than propositional logic) make a distinction between these, in which the first, ↔, is used as a symbol in logic formulas, while ⇔ is used in reasoning about those logic formulas (e.g., in metalogic). In Łukasiewicz's notation, it is the prefix symbol 'E'.

Another term for this logical connective is exclusive nor.

In TeX "if and only if" is shown as a long double arrow: ⇔ via command \iff.

Proofs

In most logical systems, one proves a statement of the form "P iff Q" by proving "if P, then Q" and "if Q, then P". Proving this pair of statements sometimes leads to a more natural proof since there are not obvious conditions in which one would infer a biconditional directly. An alternative is to prove the disjunction "(P and Q) or (not-P and not-Q)", which itself can be inferred directly from either of its disjuncts—that is, because "iff" is truth-functional, "P iff Q" follows if P and Q have both been shown true, or both false.

Origin of iff and pronunciation

Usage of the abbreviation "iff" first appeared in print in John L. Kelley's 1955 book _General Topology_.[7] Its invention is often credited to Paul Halmos, who wrote "I invented 'iff,' for 'if and only if'—but I could never believe I was really its first inventor."[8]

It is somewhat unclear how "iff" was meant to be pronounced. In current practice, the single 'word' "iff" is almost always read as the four words "if and only if". However, in the preface of _General Topology_, Kelley suggests that it should be read differently: "In some cases where mathematical content requires 'if and only if' and euphony demands something less I use Halmos' 'iff'". The authors of one discrete mathematics textbook suggest:[9] "Should you need to pronounce iff, really hang on to the 'ff' so that people hear the difference from 'if'", implying that "iff" could be pronounced as .

Usage in definitions

Technically, definitions are always "if and only if" statements; many texts such as Kelley's _General Topology_ follow the strict demands of logic, and use "if and only if" or _iff_ in definitions of new terms (for instance, from _General Topology_, p. 25: "A set is COUNTABLE iff it is finite or countably infinite" [boldface in original]). However, this usage of "if and only if" is not universal; often, mathematical definitions follow the special convention that "if" is interpreted to mean "if and only if" (for example, one might say, "A topological space is compact if every open cover has a finite subcover").[10]


Distinction from "if" and "only if"

1.  "MADISON WILL EAT THE FRUIT IF IT IS AN APPLE." (equivalent to "ONLY IF MADISON WILL EAT THE FRUIT, CAN IT BE AN APPLE" or "MADISON WILL EAT THE FRUIT _←_ THE FRUIT IS AN APPLE")

        This states that Madison will eat fruits that are apples. It does not, however, exclude the possibility that Madison might also eat bananas or other types of fruit. All that is known for certain is that she will eat any and all apples that she happens upon. That the fruit is an apple is a _sufficient_ condition for Madison to eat the fruit.

2.  "MADISON WILL EAT THE FRUIT ONLY IF IT IS AN APPLE." (equivalent to "IF MADISON WILL EAT THE FRUIT, THEN IT IS AN APPLE" or "MADISON WILL EAT THE FRUIT _→_ THE FRUIT IS AN APPLE")

        This states that the only fruit Madison will eat is an apple. It does not, however, exclude the possibility that Madison will refuse an apple if it is made available, in contrast with (1), which requires Madison to eat any available apple. In this case, that a given fruit is an apple is a _necessary_ condition for Madison to be eating it. It is not a sufficient condition since Madison might not eat all the apples she is given.

3.  "MADISON WILL EAT THE FRUIT IF AND ONLY IF IT IS AN APPLE" (equivalent to "MADISON WILL EAT THE FRUIT _↔_ THE FRUIT IS AN APPLE")

        This statement makes it clear that Madison will eat all and only those fruits that are apples. She will not leave any apple uneaten, and she will not eat any other type of fruit. That a given fruit is an apple is both a _necessary_ and a _sufficient_ condition for Madison to eat the fruit.

Sufficiency is the converse of necessity. That is to say, given _P_→_Q_ (i.e. if _P_ then _Q_), _P_ would be a sufficient condition for _Q_, and _Q_ would be a necessary condition for _P_. Also, given _P_→_Q_, it is true that _¬Q_→_¬P_ (where ¬ is the negation operator, i.e. "not"). This means that the relationship between _P_ and _Q_, established by _P_→_Q_, can be expressed in the following, all equivalent, ways:

    _P_ is sufficient for _Q_
    _Q_ is necessary for _P_
    _¬Q_ is sufficient for _¬P_
    _¬P_ is necessary for _¬Q_

As an example, take (1), above, which states _P_→_Q_, where _P_ is "the fruit in question is an apple" and _Q_ is "Madison will eat the fruit in question". The following are four equivalent ways of expressing this very relationship:

    If the fruit in question is an apple, then Madison will eat it.
    Only if Madison will eat the fruit in question, is it an apple.
    If Madison will not eat the fruit in question, then it is not an apple.
    Only if the fruit in question is not an apple, will Madison not eat it.

So we see that (2), above, can be restated in the form of _if...then_ as "If Madison will eat the fruit in question, then it is an apple"; taking this in conjunction with (1), we find that (3) can be stated as "If the fruit in question is an apple, then Madison will eat it; _and_ if Madison will eat the fruit, then it is an apple".


In terms of Euler diagrams

File:Example of A is a proper subset of B.svg|A is a proper subset of B. A number is in A only if it is in B; a number is in B if it is in A. File:Example of C is no proper subset of B.svg|C is a subset but not a proper subset of B. A number is in B if and only if it is in C, and a number is in C if and only if it is in B.

Euler diagrams show logical relationships among events, properties, and so forth. "P only if Q", "if P then Q", and "P→Q" all mean that P is a subset, either proper or improper, of Q. "P if Q", "if Q then P", and Q→P all mean that Q is a proper or improper subset of P. "P if and only if Q" and "Q if and only if P" both mean that the sets P and Q are identical to each other.


More general usage

Iff is used outside the field of logic. Wherever logic is applied, especially in mathematical discussions, it has the same meaning as above: it is an abbreviation for _if and only if_, indicating that one statement is both necessary and sufficient for the other. This is an example of mathematical jargon. (However, as noted above, _if_, rather than _iff_, is more often used in statements of definition.)

The elements of _X_ are _all and only_ the elements of _Y_ is used to mean: "for any _z_ in the domain of discourse, _z_ is in _X_ if and only if _z_ is in _Y_."


See also

-   Covariance
-   Logical biconditional
-   Logical equality
-   Necessary and sufficient condition
-   Polysyllogism


References


External links

-   -   Language Log: "Just in Case"
-   Southern California Philosophy for philosophy graduate students: "Just in Case"

Category:Logical connectives Category:Mathematical terminology Category:Necessity and sufficiency

[1]

[2] Weisstein, Eric W. "Iff." From MathWorld--A Wolfram Web Resource. http://mathworld.wolfram.com/Iff.html

[3] E.g.

[4]

[5] p <=> q. Wolfram

[6]

[7] _General Topology,_ reissue

[8]

[9]

[10]