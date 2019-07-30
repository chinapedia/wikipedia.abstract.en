In logic and mathematics, OR is the truth-functional operator of (INCLUSIVE) DISJUNCTION, also known as ALTERNATION; the _or_ of a set of operands is true if and only if _one or more_ of its operands is true. The logical connective that represents this operator is typically written as ∨ or +.

A ∨ B is true if A is true, or if B is true, or if both A and B are true.

In logic, _or_ by itself means the _inclusive_ _or_, distinguished from an exclusive or, which is false when both of its arguments are true, while an "or" is true in that case.

An operand of a disjunction is called a DISJUNCT.

Related concepts in other fields are:

-   In natural language, the coordinating conjunction "or".
-   In programming languages, the short-circuit or control structure.
-   In set theory, union.
-   In predicate logic, existential quantification.


Notation

OR is usually expressed with an infix operator: in mathematics and logic, ∨; in electronics, +; and in most programming languages, |, ||, or OR. In Jan Łukasiewicz's prefix notation for logic, the operator is A, for Polish _alternatywa_ (English: alternative).[1]


Definition

LOGICAL DISJUNCTION is an operation on two logical values, typically the values of two propositions, that has a value of _false_ if and only if both of its operands are false. More generally, a disjunction is a logical formula that can have one or more literals separated only by 'or's. A single literal is often considered to be a degenerate disjunction.

The disjunctive identity is false, which is to say that the _or_ of an expression with false has the same value as the original expression. In keeping with the concept of vacuous truth, when disjunction is defined as an operator or function of arbitrary arity, the empty disjunction (OR-ing over an empty set of operands) is generally defined as false.

Truth table

The truth table of A ∨ B:

  --- --- -------
  A   B   A ∨ B
  T   T   T
  T   F   T
  F   T   T
  F   F   F
  --- --- -------


Properties

The following properties apply to disjunction:

-   associativity: a ∨ (b ∨ c) ≡ (a ∨ b) ∨ c
-   commutativity: a ∨ b ≡ b ∨ a
-   distributivity: (a ∨ (b ∧ c)) ≡ ((a ∨ b) ∧ (a ∨ c))

(_a_ ∨ (_b_ ∨ _c_)) ≡ ((_a_ ∨ _b_) ∨ (_a_ ∨ _c_))

(_a_ ∨ (_b_ ≡ _c_)) ≡ ((_a_ ∨ _b_) ≡ (_a_ ∨ _c_))

-   idempotency: a ∨ a ≡ a
-   monotonicity: (a → b) → ((c ∨ a) → (c ∨ b))

(_a_ → _b_) → ((_a_ ∨ _c_) → (_b_ ∨ _c_))

-   TRUTH-PRESERVING: The interpretation under which all variables are assigned a truth value of 'true' produces a truth value of 'true' as a result of disjunction.
-   FALSEHOOD-PRESERVING: The interpretation under which all variables are assigned a truth value of 'false' produces a truth value of 'false' as a result of disjunction.


Symbol

The mathematical symbol for logical disjunction varies in the literature. In addition to the word "or", and the formula "A_pq_", the symbol "∨", deriving from the Latin word _vel_ (“either”, “or”) is commonly used for disjunction. For example: "_A_ ∨ _B_ " is read as "_A_ or _B_ ". Such a disjunction is false if both _A_ and _B_ are false. In all other cases it is true.

All of the following are disjunctions:

    A ∨ B
    ¬A ∨ B
    A ∨ ¬B ∨ ¬C ∨ D ∨ ¬E.

The corresponding operation in set theory is the set-theoretic union.


Applications in computer science

]] Operators corresponding to logical disjunction exist in most programming languages.

Bitwise operation

Disjunction is often used for bitwise operations. Examples:

-   0 or 0 = 0
-   0 or 1 = 1
-   1 or 0 = 1
-   1 or 1 = 1
-   1010 or 1100 = 1110

The or operator can be used to set bits in a bit field to 1, by or-ing the field with a constant field with the relevant bits set to 1. For example, x = x | 0b00000001 will force the final bit to 1 while leaving other bits unchanged.

Logical operation

Many languages distinguish between bitwise and logical disjunction by providing two distinct operators; in languages following C, bitwise disjunction is performed with the single pipe (|) and logical disjunction with the double pipe (||) operators.

Logical disjunction is usually short-circuited; that is, if the first (left) operand evaluates to true then the second (right) operand is not evaluated. The logical disjunction operator thus usually constitutes a sequence point.

In a parallel (concurrent) language, it is possible to short-circuit both sides: they are evaluated in parallel, and if one terminates with value true, the other is interrupted. This operator is thus called the PARALLEL OR.

Although in most languages the type of a logical disjunction expression is boolean and thus can only have the value true or false, in some (such as Python and JavaScript) the logical disjunction operator returns one of its operands: the first operand if it evaluates to a true value, and the second operand otherwise.

Constructive disjunction

The Curry–Howard correspondence relates a constructivist form of disjunction to tagged union types.


Union

The membership of an element of a union set in set theory is defined in terms of a logical disjunction: _x_ ∈ _A_ ∪ _B_ if and only if (_x_ ∈ _A_) ∨ (_x_ ∈ _B_). Because of this, logical disjunction satisfies many of the same identities as set-theoretic union, such as associativity, commutativity, distributivity, and de Morgan's laws, identifying logical conjunction with set intersection, logical negation with set complement.


Natural language

As with other notions formalized in mathematical logic, the meaning of the natural-language coordinating conjunction _or_ is closely related to but different from the logical _or_. For example, "Please ring me or send an email" likely means "do one or the other, but not both". On the other hand, "Her grades are so good that either she's very bright or she studies hard" does not exclude the possibility of both. In other words, in ordinary language "or" (even if used with "either") can mean either the inclusive "or" [inclusive-]or the exclusive "or."


See also

-   Affirming a disjunct
-   Bitwise OR
-   Boolean algebra (logic)
-   Boolean algebra topics
-   Boolean domain

-   Boolean function
-   Boolean-valued function
-   Disjunctive syllogism
-   Disjunction elimination
-   Disjunction introduction
-   First-order logic
-   Fréchet inequalities

-   Logical graph
-   Logical value
-   Operation
-   Operator (programming)
-   OR gate
-   Propositional calculus


Notes

-   George Boole, closely following analogy with ordinary mathematics, premised, as a necessary condition to the definition of "x + y", that x and y were mutually exclusive. Jevons, and practically all mathematical logicians after him, advocated, on various grounds, the definition of "logical addition" in a form which does not necessitate mutual exclusiveness.


References


External links

-   -   -   Eric W. Weisstein. "Disjunction." From MathWorld—A Wolfram Web Resource

Category:Logical connectives

[1] Józef Maria Bocheński (1959), _A Précis of Mathematical Logic_, translated by Otto Bird from the French and German editions, Dordrecht, North Holland: D. Reidel, passim.