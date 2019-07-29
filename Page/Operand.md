In mathematics an OPERAND is the object of a mathematical operation, i.e., it is the object or quantity that is operated on.[1]


Example

The following arithmetic expression shows an example of operators and operands:

3 + 6 = 9

In the above example, '+' is the symbol for the operation called addition.

The OPERAND '3' is one of the inputs (quantities) followed by the addition operator, and the operand '6' is the other input necessary for the operation.

The result of the operation is 9. (The number '9' is also called the sum of the augend 3 and the addend 6.)

An operand, then, is also referred to as "one of the inputs (quantities) for an operation".


Notation

Expressions as operands

Operands may be complex, and may consist of expressions also made up of operators with operands.

(3 + 5) × 2

In the above expression '(3 + 5)' is the first operand for the multiplication operator and '2' the second. The operand '(3 + 5)' is an expression in itself, which contains an addition operator, with the operands '3' and '5'.

Order of operations

Rules of precedence affect which values form operands for which operators:[2]

3 + 5 × 2

In the above expression, the multiplication operator has the higher precedence than the addition operator, so the multiplication operator has operands of '5' and '2'. The addition operator has operands of '3' and '5 × 2'.

Positioning of operands

Depending on the mathematical notation being used the position of an operator in relation to its operand(s) may vary. In everyday usage infix notation is the most common,[3] however other notations also exist, such as the prefix and postfix notations. These alternate notations are most common within computer science.

Below is a comparison of three different notations — all represent an addition of the numbers '1' and '2'

1 + 2
(infix notation)

+ 1 2
(prefix notation)

1 2 +
(postfix notation)

Infix notation and the order of operation

In a mathematical expression, the order of operation is carried out from left to right. Start with the leftmost value and seek the first operation to be carried out in accordance with the order specified above (i.e., start with parentheses and end with the addition/subtraction group). For example, in the expression

4 × 2² − (2 + 2²)
,

the first operation to be acted upon is any and all expressions found inside a parenthesis. So beginning at the left and moving to the right, find the first (and in this case, the only) parenthesis, that is, (2 + 2²). Within the parenthesis itself is found the expression 2². The reader is required to find the value of 2² before going any further. The value of 2² is 4. Having found this value, the remaining expression looks like this:

4 × 2² − (2 + 4)

The next step is to calculate the value of expression inside the parenthesis itself, that is, (2 + 4) = 6. Our expression now looks like this:

4 × 2² − 6

Having calculated the parenthetical part of the expression, we start over again beginning with the left most value and move right. The next order of operation (according to the rules) is exponents. Start at the left most value, that is, 4, and scan your eyes to the right and search for the first exponent you come across. The first (and only) expression we come across that is expressed with an exponent is 2². We find the value of 2², which is 4. What we have left is the expression

4 × 4 − 6
.

The next order of operation is multiplication. 4 × 4 is 16. Now our expression looks like this:

16 − 6

The next order of operation according to the rules is division. However, there is no division operator sign (÷) in the expression, 16 − 6. So we move on to the next order of operation, i.e., addition and subtraction, which have the same precedence and are done left to right.

16 − 6 = 10
.

So the correct value for our original expression, 4 × 2² − (2 + 2²), is 10.

It is important to carry out the order of operation in accordance with rules set by convention. If the reader evaluates an expression but does not follow the correct order of operation, the reader will come forth with a different value. The different value will be the incorrect value because the order of operation was not followed. The reader will arrive at the correct value for the expression if and only if each operation is carried out in the proper order.

Arity

The number of operands of an operator is called its arity.[4] Based on arity, operators are classified as nullary (no operands), unary (1 operand), binary (2 operands), ternary (3 operands), etc.


Computer science

In computer programming languages, the definitions of operator and OPERAND are almost the same as in mathematics.

In computing, an OPERAND is the part of a computer instruction which specifies what data is to be manipulated or operated on, while at the same time representing the data itself.[5] A computer instruction describes an operation such as add or multiply X, while the operand (or operands, as there can be more than one) specify on which X to operate as well as the value of X.

Additionally, in assembly language, an OPERAND is a value (an argument) on which the instruction, named by mnemonic, operates. The operand may be a processor register, a memory address, a literal constant, or a label. A simple example (in the x86 architecture) is

    MOV DS, AX

where the value in register operand AX is to be moved (MOV) into register DS. Depending on the instruction, there may be zero, one, two, or more operands.


See also

-   Instruction set
-   Opcode


References

Category:Algebra Category:Mathematical notation Category:Operators (programming) Category:Machine code

[1] American Heritage Dictionary

[2]

[3]

[4] : "Each connective has associated with it a natural number, called its _rank_, or _arity_."

[5]