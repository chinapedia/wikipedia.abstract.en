An INTEGER (from the Latin _integer_ meaning "whole") is a number that can be written without a fractional component. For example, 21, 4, 0, and −2048 are integers, while 9.75, , and  are not.

The set of integers consists of zero (), the positive natural numbers (, , , …), also called _whole numbers_ or _counting numbers_,[1][2] and their additive inverses (the NEGATIVE INTEGERS, i.e., −1, −2, −3, …). The set of integers is often denoted by a boldface Z ("") or blackboard bold ℤ (Unicode U+2124 ℤ) standing for the German word _Zahlen_ (, "numbers").[3][4]

is a subset of the set of all rational numbers , in turn a subset of the real numbers . Like the natural numbers, is countably infinite.

The integers form the smallest group and the smallest ring containing the natural numbers. In algebraic number theory, the integers are sometimes qualified as RATIONAL INTEGERS to distinguish them from the more general algebraic integers. In fact, the (rational) integers are the algebraic integers that are also rational numbers.


Symbol

The symbol can be annotated to denote various sets, with varying usage amongst different authors: , or for the positive integers, for non-negative integers, for non-zero integers. Some authors use for non-zero integers, others use it for non-negative integers, or for . Additionally, is used to denote either the set of [[integers_modulo_n|integers modulo |- !scope="row" |Commutativity: | _b_ + _a_}} | _b_ × _a_}} |- !scope="row" |Existence of an identity element: | _a_}} | _a_}} |- !scope="row" |Existence of inverse elements: | 0}} |The only invertible integers (called units) are and . |- !scope="row" |Distributivity: |colspan=2 align=center | (_a_ × _b_) + (_a_ × _c_)}}and (_a_ × _c_) + (_b_ × _c_)}} |- !scope="row" |No zero divisors: | || | If 0}}, then 0}} or 0}} (or both) |}

In the language of abstract algebra, the first five properties listed above for addition say that under addition is an abelian group. It is also a cyclic group, since every non-zero integer can be written as a finite sum or . In fact, under addition is the _only_ infinite cyclic group, in the sense that any infinite cyclic group is isomorphic to .

The first four properties listed above for multiplication say that under multiplication is a commutative monoid. However, not every integer has a multiplicative inverse; e.g., there is no integer such that 1}}. This means that under multiplication is not a group.

All the rules from the above property table, except for the last, taken together say that together with addition and multiplication is a commutative ring with unity. It is the prototype of all objects of such algebraic structure. Only those equalities of expressions are true in  for all values of variables, which are true in any unital commutative ring. Note that certain non-zero integers map to zero in certain rings.

The lack of zero divisors in the integers (last property in the table) means that the commutative ring  is an integral domain.

The lack of multiplicative inverses, which is equivalent to the fact that is not closed under division, means that is _not_ a field. The smallest field containing the integers as a subring is the field of rational numbers. The process of constructing the rationals from the integers can be mimicked to form the field of fractions of any integral domain. And back, starting from an algebraic number field (an extension of rational numbers), its ring of integers can be extracted, which includes as its subring.

Although ordinary division is not defined on , the division "with remainder" is defined on them. It is called Euclidean division and possesses the following important property: that is, given two integers and with , there exist unique integers and such that _q_ × _b_ + _r_}} and  _b_ {{!}}}}, where  _b_ {{!}}}} denotes the absolute value of . The integer is called the _quotient_ and is called the _remainder_ of the division of by . The Euclidean algorithm for computing greatest common divisors works by a sequence of Euclidean divisions.

Again, in the language of abstract algebra, the above says that Z is a Euclidean domain. This implies that is a principal ideal domain and any positive integer can be written as the products of primes in an essentially unique way.[5] This is the fundamental theorem of arithmetic.


Order-theoretic properties

is a totally ordered set without upper or lower bound. The ordering of is given by: An integer is _positive_ if it is greater than zero and _negative_ if it is less than zero. Zero is defined as neither negative nor positive.

The ordering of integers is compatible with the algebraic operations in the following way:

1.  if and , then
2.  if and , then .

It follows that together with the above ordering is an ordered ring.

The integers are the only nontrivial totally ordered abelian group whose positive elements are well-ordered.[6] This is equivalent to the statement that any Noetherian valuation ring is either a field or a discrete valuation ring.


Construction

Red points represent ordered pairs of natural numbers. Linked red points are equivalence classes representing the blue integers at the end of the line.|upright=1.5 In elementary school teaching, integers are often intuitively defined as the (positive) natural numbers, zero, and the negations of the natural numbers. However, this style of definition leads to many different cases (each arithmetic operation needs to be defined on each combination of types of integer) and makes it tedious to prove that these operations obey the laws of arithmetic.[7] Therefore, in modern set-theoretic mathematics a more abstract construction,[8] which allows one to define the arithmetical operations without any case distinction, is often used instead.[9] The integers can thus be formally constructed as the equivalence classes of ordered pairs of natural numbers .[10]

The intuition is that stands for the result of subtracting from .[11] To confirm our expectation that and denote the same number, we define an equivalence relation on these pairs with the following rule:

(_a_, _b_) ∼ (_c_, _d_)
precisely when

_a_ + _d_ = _b_ + _c_.

Addition and multiplication of integers can be defined in terms of the equivalent operations on the natural numbers;[12] denoting by the equivalence class having as a member, one has:

[(_a_, _b_)] + [(_c_, _d_)] := [(_a_ + _c_, _b_ + _d_)].

[(_a_, _b_)] ⋅ [(_c_, _d_)] := [(_a__c_ + _b__d_, _a__d_ + _b__c_)].

The negation (or additive inverse) of an integer is obtained by reversing the order of the pair:

 − [(_a_, _b_)] := [(_b_, _a_)].

Hence subtraction can be defined as the addition of the additive inverse:

[(_a_, _b_)] − [(_c_, _d_)] := [(_a_ + _d_, _b_ + _c_)].

The standard ordering on the integers is given by:

[(_a_, _b_)] < [(_c_, _d_)]
iff a + d < b + c.

It is easily verified that these definitions are independent of the choice of representatives of the equivalence classes.

Every equivalence class has a unique member that is of the form or (or both at once). The natural number is identified with the class (in other words the natural numbers are embedded into the integers by map sending to ), and the class is denoted (this covers all remaining classes, and gives the class a second time since 0.}}

Thus, is denoted by

$$\begin{cases} a - b, & \mbox{if }  a \ge b  \\ -(b - a),  & \mbox{if } a < b. \end{cases}$$

If the natural numbers are identified with the corresponding integers (using the embedding mentioned above), this convention creates no ambiguity.

This notation recovers the familiar representation of the integers as }.

Some examples are:

$$\begin{align}
 0 &= [(0,0)] &= [(1,1)] &= \cdots & &= [(k,k)] \\
 1 &= [(1,0)] &= [(2,1)] &= \cdots & &= [(k+1,k)] \\
-1 &= [(0,1)] &= [(1,2)] &= \cdots & &= [(k,k+1)] \\
 2 &= [(2,0)] &= [(3,1)] &= \cdots & &= [(k+2,k)] \\
-2 &= [(0,2)] &= [(1,3)] &= \cdots & &= [(k,k+2)].
\end{align}$$

In theoretical computer science, other approaches for the construction of integers are used by automated theorem provers and term rewrite engines. Integers are represented as algebraic terms built using a few basic operations (such as ZERO, SUCC, PRED, etc.) and, possibly, using natural numbers, which are assumed to be already constructed (e.g., using the Peano approach).

There exist at least ten such constructions of signed integers.[13] These constructions differ in several ways: the number of basic operations used for the construction, the number (usually, between 0 and 2) and the types of arguments accepted by these operations; the presence or absence of natural numbers as arguments of some of these operations, and the fact that these operations are free constructors or not, i.e., that the same integer can be represented using only one or many algebraic terms.

The technique for the construction of integers presented above in this section corresponds to the particular case where there is a single basic operation PAIR(x, y) that takes as arguments two natural numbers x and y, and returns an integer (equal to x − y). This operation is not free since the integer 0 can be written PAIR(0,0), or PAIR(1,1), or PAIR(2,2), etc. This technique of construction is used by the proof assistant Isabelle; however, many other tools use alternative construction techniques, notable those based upon free constructors, which are simpler and can be implemented more efficiently in computers.


Computer science

An integer is often a primitive data type in computer languages. However, integer data types can only represent a subset of all integers, since practical computers are of finite capacity. Also, in the common two's complement representation, the inherent definition of sign distinguishes between "negative" and "non-negative" rather than "negative, positive, and 0". (It is, however, certainly possible for a computer to determine whether an integer value is truly positive.) Fixed length integer approximation data types (or subsets) are denoted _int_ or Integer in several programming languages (such as Algol68, C, Java, Delphi, etc.).

Variable-length representations of integers, such as bignums, can store any integer that fits in the computer's memory. Other integer data types are implemented with a fixed size, usually a number of bits which is a power of 2 (4, 8, 16, etc.) or a memorable number of decimal digits (e.g., 9 or 10).


Cardinality

The cardinality of the set of integers is equal to (aleph-null). This is readily demonstrated by the construction of a bijection, that is, a function that is injective and surjective from to . If {0, 1, 2, …}}} then consider the function:

$$f(x) = \begin{cases} 2|x|,  & \mbox{if } x \leq 0\\ 2x-1, & \mbox{if }  x > 0. \end{cases}$$
}

If {1, 2, 3, ...}}} then consider the function:

$$g(x) = \begin{cases} 2|x|,  & \mbox{if } x < 0 \\ 2x+1, & \mbox{if }  x \ge 0. \end{cases}$$
}

If the domain is restricted to then each and every member of has one and only one corresponding member of N and by the definition of cardinal equality the two sets have equal cardinality.


See also

-   0.999...
-   Canonical representation of a positive integer
-   Hyperinteger
-   Integer lattice
-   Integer part
-   Integer sequence
-   Integer-valued function
-   Mathematical symbols
-   Parity (mathematics)
-   Profinite integer


Notes


References


Sources

-   Bell, E.T., _Men of Mathematics._ New York: Simon & Schuster, 1986. (Hardcover; )/(Paperback; )
-   Herstein, I.N., _Topics in Algebra_, Wiley; 2 edition (June 20, 1975), .
-   Mac Lane, Saunders, and Garrett Birkhoff; _Algebra_, American Mathematical Society; 3rd edition (1999). .


External links

-   -   The Positive Integers – divisor tables and numeral representation tools
-   On-Line Encyclopedia of Integer Sequences cf OEIS
-

Category:Elementary mathematics Category:Abelian group theory Category:Ring theory Integers Category:Elementary number theory Category:Algebraic number theory

[1]

[2]

[3]

[4]

[5]

[6] .

[7] .

[8] Ivorra Castillo: _Álgebra_

[9] .

[10]

[11]

[12]

[13]