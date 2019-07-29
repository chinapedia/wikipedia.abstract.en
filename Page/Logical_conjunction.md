| 1-preserving = {{#switch:Да|Да|да=yes|Нет|нет=no}} | monotone = {{#switch:Нет|Да|да=yes|Нет|нет=no}} | affine = {{#switch:Нет|Да|да=yes|Нет|нет=no}} | self-dual = {{#switch:Да|Да|да=yes|Нет|нет=no}} }}

Circumflex Agent (^)|Lambda {{!}} Capital Lambda (Λ)|Turned V {{!}} Turned V (Λ)}}

Venn_0000_0001.svg

In logic, mathematics and linguistics, And (∧) is the truth-functional operator of LOGICAL CONJUNCTION; the _and_ of a set of operands is true if and only if _all_ of its operands are true. The logical connective that represents this operator is typically written as or .

A ∧ B is true only if A is true and B is true.

An operand of a conjunction is a CONJUNCT.

The term "logical conjunction" is also used for the greatest lower bound in lattice theory.

Related concepts in other fields are:

-   In natural language, the coordinating conjunction "and".
-   In programming languages, the short-circuit and control structure.
-   In set theory, intersection.
-   In predicate logic, universal quantification.


Notation

AND is usually denoted by an infix operator: in mathematics and logic, it is denoted by , or ; in electronics, ; and in programming languages, &, &&, or and. In Jan Łukasiewicz's prefix notation for logic, the operator is K, for Polish _koniunkcja_.[1]


Definition

LOGICAL CONJUNCTION is an operation on two logical values, typically the values of two propositions, that produces a value of _true_ if and only if both of its operands are true.

The conjunctive identity is 1, which is to say that AND-ing an expression with 1 will never change the value of the expression. In keeping with the concept of vacuous truth, when conjunction is defined as an operator or function of arbitrary arity, the empty conjunction (AND-ing over an empty set of operands) is often defined as having the result 1.

Truth table

Multigrade_operator_AND.svg bits form a Sierpinski triangle.]]

The truth table of A ∧ B:

  --- --- -------
  A   B   A ∧ B
  T   T   T
  T   F   F
  F   T   F
  F   F   F
  --- --- -------

Defined by other operators

In systems where logical conjunction is not a primitive, it may be defined as[2]

_A_ ∧ _B_ = ¬(_A_ → ¬_B_)
or

_A_ ∧ _B_ = ¬(¬_A_ ∨ ¬_B_).


Introduction and elimination rules

As a rule of inference, conjunction Introduction is a classically valid, simple argument form. The argument form has two premises, _A_ and _B_. Intuitively, it permits the inference of their conjunction.

    _A_,
    _B_.
    Therefore, _A_ and _B_.

or in logical operator notation:

_A_,

_B_

 ⊢ _A_ ∧ _B_

Here is an example of an argument that fits the form _conjunction introduction_:

    Bob likes apples.
    Bob likes oranges.
    Therefore, Bob likes apples and oranges.

Conjunction elimination is another classically valid, simple argument form. Intuitively, it permits the inference from any conjunction of either element of that conjunction.

    _A_ and _B_.
    Therefore, _A_.

...or alternatively,

    _A_ and _B_.
    Therefore, _B_.

In logical operator notation:

_A_ ∧ _B_

 ⊢ _A_

...or alternatively,

_A_ ∧ _B_

 ⊢ _B_


Negation

Definition

A conjunction A ∧ B is be proven false by establishing either ¬A or ¬B. In terms of the object language, this reads

¬_A_ → ¬(_A_ ∧ _B_)

This formula can be seen as a special case of

(_A_ → _C_) → ((_A_ ∧ _B_) → _C_)

when C is a false proposition.

Other proof strategies

If A implies ¬B, then both ¬A as well as A prove the conjunction false:

(_A_ → ¬_B_) → ¬(_A_ ∧ _B_)
In other words, a conjunction can actually be proven false just by knowing about the relation of its conjuncts and not necessary about their truth values.

This formula can be seen as a special case of

(_A_ → (_B_ → _C_)) → ((_A_ ∧ _B_) → _C_)

when C is a false proposition.

Either of the above are constructively valid proofs by contradiction.


Properties

COMMUTATIVITY: YES

  -------------- ----------- --------------
  A ∧ B              ⇔       B ∧ A
  Venn0001.svg       ⇔       Venn0001.svg
  -------------- ----------- --------------

ASSOCIATIVITY: YES

  -------------------- --------- -------------------- ----------- -------------------- ----------- -------------------- --------- --------------------
   A                      ∧      (B ∧ C)                  ⇔                                        (A ∧ B)                 ∧       C
  Venn_0101_0101.svg      ∧      Venn_0000_0011.svg       ⇔       Venn_0000_0001.svg       ⇔       Venn_0001_0001.svg      ∧      Venn_0000_1111.svg
  -------------------- --------- -------------------- ----------- -------------------- ----------- -------------------- --------- --------------------

DISTRIBUTIVITY: with various operations, especially with _or_

  -------------------- --- -------------------- ----------- -------------------- ----------- -------------------- --- --------------------
   A                   ∧   (B ∨ C)                  ⇔                                        (A ∧ B)              ∨   (A ∧ C)

  Venn_0101_0101.svg   ∧   Venn_0011_1111.svg       ⇔       Venn_0001_0101.svg       ⇔       Venn_0001_0001.svg   ∨   Venn_0000_0101.svg
  -------------------- --- -------------------- ----------- -------------------- ----------- -------------------- --- --------------------

+--------------------------------------------------------------------------------------------------------------------------------------------+
| others                                                                                                                                     |
+============================================================================================================================================+
| with exclusive or:                                                                                                                         |
|                                                                                                                                            |
|   -------------------- --- -------------------- ----------- -------------------- ----------- -------------------- --- -------------------- |
|    A                   ∧   (B ⊕ C)                  ⇔                                        (A ∧ B)              ⊕   (A ∧ C)              |
|                                                                                                                                            |
|   Venn_0101_0101.svg   ∧   Venn_0011_1100.svg       ⇔       Venn_0001_0100.svg       ⇔       Venn_0001_0001.svg   ⊕   Venn_0000_0101.svg   |
|   -------------------- --- -------------------- ----------- -------------------- ----------- -------------------- --- -------------------- |
|                                                                                                                                            |
| with material nonimplication:                                                                                                              |
|                                                                                                                                            |
|   -------------------- --- -------------------- ----------- -------------------- ----------- -------------------- --- -------------------- |
|    A                   ∧   (B ↛ C)                  ⇔                                        (A ∧ B)              ↛   (A ∧ C)              |
|                                                                                                                                            |
|   Venn_0101_0101.svg   ∧   Venn_0011_0000.svg       ⇔       Venn_0001_0000.svg       ⇔       Venn_0001_0001.svg   ↛   Venn_0000_0101.svg   |
|   -------------------- --- -------------------- ----------- -------------------- ----------- -------------------- --- -------------------- |
|                                                                                                                                            |
| with itself:                                                                                                                               |
|                                                                                                                                            |
|   -------------------- --- -------------------- ----------- -------------------- ----------- -------------------- --- -------------------- |
|    A                   ∧   (B ∧ C)                  ⇔                                        (A ∧ B)              ∧   (A ∧ C)              |
|                                                                                                                                            |
|   Venn_0101_0101.svg   ∧   Venn_0000_0011.svg       ⇔       Venn_0000_0001.svg       ⇔       Venn_0001_0001.svg   ∧   Venn_0000_0101.svg   |
|   -------------------- --- -------------------- ----------- -------------------- ----------- -------------------- --- -------------------- |
+--------------------------------------------------------------------------------------------------------------------------------------------+

IDEMPOTENCY: YES
{| style="text-align: center; border: 1px solid darkgray;" |- | A  | ∧  | A  |    ⇔     |A  |- |Venn01.svg | ∧  |Venn01.svg |    ⇔     |Venn01.svg |}

MONOTONICITY: YES

  -------------------- ----------- -------------------- ----------- -------------------- --- --------------------
  A → B                    ⇒                                        (A ∧ C)              →   (B ∧ C)
  Venn_1011_1011.svg       ⇒       Venn_1111_1011.svg       ⇔       Venn_0000_0101.svg   →   Venn_0000_0011.svg
  -------------------- ----------- -------------------- ----------- -------------------- --- --------------------

TRUTH-PRESERVING: YES
When all inputs are true, the output is true.

+--------------+-----------+--------------+
| A ∧ B        |     ⇒     | A ∧ B        |
+--------------+-----------+--------------+
| Venn0001.svg |     ⇒     | Venn0001.svg |
+--------------+-----------+--------------+
|              |           |              |
+--------------+-----------+--------------+

FALSEHOOD-PRESERVING: YES
When all inputs are false, the output is false.

+--------------+-----------+--------------+
| A ∧ B        |     ⇒     | A ∨ B        |
+--------------+-----------+--------------+
| Venn0001.svg |     ⇒     | Venn0111.svg |
+--------------+-----------+--------------+
|              |           |              |
+--------------+-----------+--------------+

WALSH SPECTRUM: (1,-1,-1,1)

NONLINEARITY: 1 (the function is bent)

If using binary values for true (1) and false (0), then _logical conjunction_ works exactly like normal arithmetic multiplication.


Applications in computer engineering

AND_Gate_diagram.svg]] In high-level computer programming and digital electronics, logical conjunction is commonly represented by an infix operator, usually as a keyword such as "AND", an algebraic multiplication, or the ampersand symbol "&". Many languages also provide short-circuit control structures corresponding to logical conjunction.

Logical conjunction is often used for bitwise operations, where 0 corresponds to false and 1 to true:

-   0 AND 0  =  0,
-   0 AND 1  =  0,
-   1 AND 0  =  0,
-   1 AND 1  =  1.

The operation can also be applied to two binary words viewed as bitstrings of equal length, by taking the bitwise AND of each pair of bits at corresponding positions. For example:

-   11000110 AND 10100011  =  10000010.

This can be used to select part of a bitstring using a bit mask. For example, 10011101 AND 00001000  =  00001000 extracts the fifth bit of an 8-bit bitstring.

In computer networking, bit masks are used to derive the network address of a subnet within an existing network from a given IP address, by ANDing the IP address and the subnet mask.

Logical conjunction "AND" is also used in SQL operations to form database queries.

The Curry–Howard correspondence relates logical conjunction to product types.


Set-theoretic correspondence

The membership of an element of an intersection set in set theory is defined in terms of a logical conjunction: _x_ ∈ _A_ ∩ _B_ if and only if (_x_ ∈ _A_) ∧ (_x_ ∈ _B_). Through this correspondence, set-theoretic intersection shares several properties with logical conjunction, such as associativity, commutativity, and idempotence.


Natural language

As with other notions formalized in mathematical logic, the logical conjunction _and_ is related to, but not the same as, the grammatical conjunction _and_ in natural languages.

English "and" has properties not captured by logical conjunction. For example, "and" sometimes implies order. For example, "They got married and had a child" in common discourse means that the marriage came before the child. The word "and" can also imply a partition of a thing into parts, as "The American flag is red, white, and blue." Here it is not meant that the flag is _at once_ red, white, and blue, but rather that it has a part of each color.


See also

-   And-inverter graph
-   AND gate
-   Bitwise AND
-   Boolean algebra (logic)
-   Boolean algebra topics
-   Boolean conjunctive query
-   Boolean domain
-   Boolean function
-   Boolean-valued function
-   Conjunction introduction
-   Conjunction elimination
-   De Morgan's laws
-   First-order logic
-   Fréchet inequalities
-   Grammatical conjunction
-   Logical disjunction
-   Logical negation
-   Logical graph
-   Logical value
-   Operation
-   Peano–Russell notation
-   Propositional calculus


References


External links

-   -   Wolfram MathWorld: Conjunction
-

Category:Logical connectives

[1] Józef Maria Bocheński (1959), _A Précis of Mathematical Logic_, translated by Otto Bird from the French and German editions, Dordrecht, North Holland: D. Reidel, passim.

[2]