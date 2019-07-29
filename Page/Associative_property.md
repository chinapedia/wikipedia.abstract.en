In mathematics, the ASSOCIATIVE PROPERTY[1] is a property of some binary operations. In propositional logic, ASSOCIATIVITY is a valid rule of replacement for expressions in logical proofs.

Within an expression containing two or more occurrences in a row of the same associative operator, the order in which the operations are performed does not matter as long as the sequence of the operands is not changed. That is, (after rewriting the expression with parentheses and in infix notation if necessary) rearranging the parentheses in such an expression will not change its value. Consider the following equations:

(2 + 3) + 4 = 2 + (3 + 4) = 9 

2 × (3 × 4) = (2 × 3) × 4 = 24.

Even though the parentheses were rearranged on each line, the values of the expressions were not altered. Since this holds true when performing addition and multiplication on any real numbers, it can be said that "addition and multiplication of real numbers are associative operations".

Associativity is not the same as commutativity, which addresses whether or not the order of two operands changes the result. For example, the order does not matter in the multiplication of real numbers, that is, , so we say that the multiplication of real numbers is a commutative operation.

Associative operations are abundant in mathematics; in fact, many algebraic structures (such as semigroups and categories) explicitly require their binary operations to be associative.

However, many important and interesting operations are non-associative; some examples include subtraction, exponentiation, and the vector cross product. In contrast to the theoretical properties of real numbers, the addition of floating point numbers in computer science is not associative, and the choice of how to associate an expression can have a significant effect on rounding error.


Definition

Semigroup_associative.svg. That is, when the two paths from _S_×_S_×_S_ to _S_ compose to the same function from _S_×_S_×_S_ to _S_.]] Formally, a binary operation ∗ on a set _S_ is called ASSOCIATIVE if it satisfies the ASSOCIATIVE LAW:

    (_x_ ∗ _y_) ∗ _z_ = _x_ ∗ (_y_ ∗ _z_) for all _x_, _y_, _z_ in _S_.

Here, ∗ is used to replace the symbol of the operation, which may be any symbol, and even the absence of symbol (juxtaposition) as for multiplication.

    (_xy_)_z_ = _x_(_yz_) = _xyz_ for all _x_, _y_, _z_ in _S_.

The associative law can also be expressed in functional notation thus: .


Generalized associative law

Tamari_lattice.svg of order four, possibly different products.]] If a binary operation is associative, repeated application of the operation produces the same result regardless how valid pairs of parenthesis are inserted in the expression.[2] This is called the GENERALIZED ASSOCIATIVE LAW. For instance, a product of four elements may be written, without changing the order of the factors, in five possible ways:

    ((ab)c)d
    (ab)(cd)
    (a(bc))d
    a((bc)d)
    a(b(cd))

If the product operation is associative, the generalized associative law says that all these formulas will yield the same result. So unless the formula with omitted parentheses already has a different meaning (see below), the parentheses can be considered unnecessary and "the" product can be written unambiguously as

_a__b__c__d_.

As the number of elements increases, the number of possible ways to insert parentheses grows quickly, but they remain unnecessary for disambiguation.

An example where this does not work is the logical biconditional ↔. It is associative, thus A↔(B↔C) is equivalent to (A↔B)↔C, but A↔B↔C most commonly means (A↔B and B↔C), which is not equivalent.


Examples

Associativity_of_binary_operations_(without_question_marks).svg Associativity_of_real_number_addition.svg Some examples of associative operations include the following.

-   The concatenation of the three strings "hello", " ", "world" can be computed by concatenating the first two strings (giving "hello ") and appending the third string ("world"), or by joining the second and third string (giving " world") and concatenating the first string ("hello") with the result. The two methods produce the same result; string concatenation is associative (but not commutative).
-   In arithmetic, addition and multiplication of real numbers are associative; i.e.,





\left. \begin{matrix} (x+y)+z=x+(y+z)=x+y+z\quad \\ (x\,y)z=x(y\,z)=x\,y\,z\qquad\qquad\qquad\quad\ \ \, \end{matrix} \right\} \mbox{for all }x,y,z\in\mathbb{R}.

    Because of associativity, the grouping parentheses can be omitted without ambiguity.

-   The trivial operation (that is, the result is the first argument, no matter what the second argument is) is associative but not commutative. Likewise, the trivial operation (that is, the result is the second argument, no matter what the first argument is) is associative but not commutative.
-   Addition and multiplication of complex numbers and quaternions are associative. Addition of octonions is also associative, but multiplication of octonions is non-associative.
-   The greatest common divisor and least common multiple functions act associatively.





\left. \begin{matrix} \operatorname{gcd}(\operatorname{gcd}(x,y),z)= \operatorname{gcd}(x,\operatorname{gcd}(y,z))= \operatorname{gcd}(x,y,z)\ \quad \\ \operatorname{lcm}(\operatorname{lcm}(x,y),z)= \operatorname{lcm}(x,\operatorname{lcm}(y,z))= \operatorname{lcm}(x,y,z)\quad \end{matrix} \right\}\mbox{ for all }x,y,z\in\mathbb{Z}.

-   Taking the intersection or the union of sets:





\left. \begin{matrix} (A\cap B)\cap C=A\cap(B\cap C)=A\cap B\cap C\quad \\ (A\cup B)\cup C=A\cup(B\cup C)=A\cup B\cup C\quad \end{matrix} \right\}\mbox{for all sets }A,B,C.

-   If _M_ is some set and _S_ denotes the set of all functions from _M_ to _M_, then the operation of function composition on _S_ is associative:



        (f ∘ g) ∘ h = f ∘ (g ∘ h) = f ∘ g ∘ h  for all f, g, h ∈ S.

-   Slightly more generally, given four sets _M_, _N_, _P_ and _Q_, with _h_: _M_ to _N_, _g_: _N_ to _P_, and _f_: _P_ to _Q_, then



        (f ∘ g) ∘ h = f ∘ (g ∘ h) = f ∘ g ∘ h

    as before. In short, composition of maps is always associative.

-   Consider a set with three elements, A, B, and C. The following operation:

    {| class="wikitable" style="text-align:center"

|- ! × !! A !! B !! C |- ! A | A || A || A |- ! B | A || B || C |- ! C | A || A || A |}

    is associative. Thus, for example, A(BC)=(AB)C = A. This operation is not commutative.

-   Because matrices represent linear functions, and matrix multiplication represents function composition, one can immediately conclude that matrix multiplication is associative. [3]


Propositional logic

Rule of replacement

In standard truth-functional propositional logic, _association_,[4][5] or _associativity_[6] are two valid rules of replacement. The rules allow one to move parentheses in logical expressions in logical proofs. The rules (using logical connectives notation) are:

(_P_ ∨ (_Q_ ∨ _R_)) ⇔ ((_P_ ∨ _Q_) ∨ _R_)
and

(_P_ ∧ (_Q_ ∧ _R_)) ⇔ ((_P_ ∧ _Q_) ∧ _R_),
where "⇔" is a metalogical symbol representing "can be replaced in a proof with."

Truth functional connectives

_Associativity_ is a property of some logical connectives of truth-functional propositional logic. The following logical equivalences demonstrate that associativity is a property of particular connectives. The following are truth-functional tautologies. [7]

ASSOCIATIVITY OF DISJUNCTION:

((_P_ ∨ _Q_) ∨ _R_) ↔ (_P_ ∨ (_Q_ ∨ _R_))

(_P_ ∨ (_Q_ ∨ _R_)) ↔ ((_P_ ∨ _Q_) ∨ _R_)
ASSOCIATIVITY OF CONJUNCTION:

((_P_ ∧ _Q_) ∧ _R_) ↔ (_P_ ∧ (_Q_ ∧ _R_))

(_P_ ∧ (_Q_ ∧ _R_)) ↔ ((_P_ ∧ _Q_) ∧ _R_)
ASSOCIATIVITY OF EQUIVALENCE:

((_P_ ↔ _Q_) ↔ _R_) ↔ (_P_ ↔ (_Q_ ↔ _R_))

(_P_ ↔ (_Q_ ↔ _R_)) ↔ ((_P_ ↔ _Q_) ↔ _R_)

Joint denial is an example of a truth functional connective that is _not_ associative.


Non-associative operation

A binary operation * on a set _S_ that does not satisfy the associative law is called NON-ASSOCIATIVE. Symbolically,

(_x_ * _y_) * _z_ ≠ _x_ * (_y_ * _z_)  for some _x_, _y_, _z_ ∈ _S_.

For such an operation the order of evaluation _does_ matter. For example:

-   Subtraction

(5 − 3) − 2 ≠ 5 − (3 − 2)

-   Division

(4/2)/2 ≠ 4/(2/2)

-   Exponentiation

2^((1²)) ≠ (2¹)²
Also note that infinite sums are not generally associative, for example:

(1 +  − 1) + (1 +  − 1) + (1 +  − 1) + (1 +  − 1) + (1 +  − 1) + (1 +  − 1) + … = 0
whereas

1 + ( − 1 + 1) + ( − 1 + 1) + ( − 1 + 1) + ( − 1 + 1) + ( − 1 + 1) + ( − 1 + 1) + … = 1

The study of non-associative structures arises from reasons somewhat different from the mainstream of classical algebra. One area within non-associative algebra that has grown very large is that of Lie algebras. There the associative law is replaced by the Jacobi identity. Lie algebras abstract the essential nature of infinitesimal transformations, and have become ubiquitous in mathematics.

There are other specific types of non-associative structures that have been studied in depth; these tend to come from some specific applications or areas such as combinatorial mathematics. Other examples are Quasigroup, Quasifield, Non-associative ring, Non-associative algebra and Commutative non-associative magmas.

Nonassociativity of floating point calculation

In mathematics, addition and multiplication of real numbers is associative. By contrast, in computer science, the addition and multiplication of floating point numbers is _not_ associative, as rounding errors are introduced when dissimilar-sized values are joined together.[8]

To illustrate this, consider a floating point representation with a 4-bit mantissa:
(1.000₂×2⁰ + 1.000₂×2⁰) + 1.000₂×2⁴ = 1.000₂×2¹ + 1.000₂×2⁴ = 1.00₂×2⁴
1.000₂×2⁰ + (1.000₂×2⁰ + 1.000₂×2⁴) = 1.000₂×2⁰ + 1.00₂×2⁴ = 1.00₂×2⁴

Even though most computers compute with a 24 or 53 bits of mantissa,[9] this is an important source of rounding error, and approaches such as the Kahan summation algorithm are ways to minimise the errors. It can be especially problematic in parallel computing.[10][11]

Notation for non-associative operations

In general, parentheses must be used to indicate the order of evaluation if a non-associative operation appears more than once in an expression (unless the notation specifies the order in another way, like $\dfrac{2}{3/4}$). However, mathematicians agree on a particular order of evaluation for several common non-associative operations. This is simply a notational convention to avoid parentheses.

A LEFT-ASSOCIATIVE operation is a non-associative operation that is conventionally evaluated from left to right, i.e.,

$$\left.
\begin{matrix}
x*y*z=(x*y)*z\qquad\qquad\quad\,
\\
w*x*y*z=((w*x)*y)*z\quad
\\
\mbox{etc.}\qquad\qquad\qquad\qquad\qquad\qquad\ \ \,
\end{matrix}
\right\}
\mbox{for all }w,x,y,z\in S$$
while a RIGHT-ASSOCIATIVE operation is conventionally evaluated from right to left:

$$\left.
\begin{matrix}
x*y*z=x*(y*z)\qquad\qquad\quad\,
\\
w*x*y*z=w*(x*(y*z))\quad
\\
\mbox{etc.}\qquad\qquad\qquad\qquad\qquad\qquad\ \ \,
\end{matrix}
\right\}
\mbox{for all }w,x,y,z\in S$$
Both left-associative and right-associative operations occur. Left-associative operations include the following:

-   Subtraction and division of real numbers:[12][13][14][15][16]

_x_ − _y_ − _z_ = (_x_ − _y_) − _z_

_x_/_y_/_z_ = (_x_/_y_)/_z_

-   Function application:

(_f_ _x_ _y_) = ((_f_ _x_) _y_)

    This notation can be motivated by the currying isomorphism.

Right-associative operations include the following:

-   Exponentiation of real numbers in superscript notation:

_x_^(_y_^(_z_)) = _x_^((_y_^(_z_)))

    Exponentiation is commonly used with brackets or right-associatively because a repeated left-associative exponentiation operation is of little use. Repeated powers would mostly be rewritten with multiplication:

(_x_^(_y_))^(_z_) = _x_^((_y__z_))

    Formatted correctly, the superscript inherently behaves as a set of parentheses; e.g. in the expression 2^(x + 3) the addition is performed before the exponentiation despite there being no explicit parentheses 2^((x + 3)) wrapped around it. Thus given an expression such as x^(y^(z)), the full exponent y^(z) of the base x is evaluated first. However, in some contexts, especially in handwriting, the difference between x^(y)^(z) = (x^(y))^(z), x^(yz) = x^((yz)) and x^(y^(z)) = x^((y^(z))) can be hard to see. In such a case, right-associativity is usually implied.

-   Function definition

$$\mathbb{Z} \rarr \mathbb{Z} \rarr \mathbb{Z} = \mathbb{Z} \rarr (\mathbb{Z} \rarr \mathbb{Z})$$

_x_ ↦ _y_ ↦ _x_ − _y_ = _x_ ↦ (_y_ ↦ _x_ − _y_)

    Using right-associative notation for these operations can be motivated by the Curry-Howard correspondence and by the currying isomorphism.

Non-associative operations for which no conventional evaluation order is defined include the following.

-   Exponentiation of real numbers in infix notation:[17]

(_x_^(∧)_y_)^(∧)_z_ ≠ _x_^(∧)(_y_^(∧)_z_)

-   Knuth's Up-arrow operators:

_a_ ↑  ↑ (_b_ ↑  ↑ _c_) ≠ (_a_ ↑  ↑ _b_) ↑  ↑ _c_

_a_ ↑  ↑  ↑ (_b_ ↑  ↑  ↑ _c_) ≠ (_a_ ↑  ↑  ↑ _b_) ↑  ↑  ↑ _c_

    usw.

-   Taking the cross product of three vectors:

_a⃗_ × (_b⃗_ × _c⃗_) ≠ (_a⃗_ × _b⃗_) × _c⃗_   for some _a⃗_, _b⃗_, _c⃗_ ∈ ℝ³

-   Taking the pairwise average of real numbers:

$${(x+y)/2+z\over2}\ne{x+(y+z)/2\over2} \qquad \mbox{for all }x,y,z\in\mathbb{R} \mbox{ with }x\ne z.$$

-   Taking the relative complement of sets (A ∖ B) ∖ C is not the same as A ∖ (B ∖ C). (Compare material nonimplication in logic.)


See also

-   Light's associativity test
-   Telescoping series, the use of addition associativity for cancelling terms in an infinite series
-   A semigroup is a set with a associative binary operation.
-   Commutativity and distributivity are two other frequently discussed properties of binary operations.
-   Power associativity, alternativity, flexibility and N-ary associativity are weak forms of associativity.
-   Moufang identities also provide a weak form of associativity.


References

Category:Abstract algebra *Associativity Category:Elementary algebra Category:Functional analysis Category:Rules of inference

[1]

[2]

[3]

[4] Moore and Parker

[5] Copi and Cohen

[6] Hurley

[7] 1

[8] Knuth, Donald, The Art of Computer Programming, Volume 3, section 4.2.2

[9]

[10]

[11]  (2, 3)

[12] George Mark Bergman: Order of arithmetic operations

[13] Education Place: The Order of Operations

[14] Khan Academy: The Order of Operations, timestamp 5m40s

[15] Virginia Department of Education: Using Order of Operations and Exploring Properties, section 9

[16] Bronstein: :de:Taschenbuch der Mathematik, pages 115-120, chapter: 2.4.1.1,

[17] Exponentiation Associativity and Standard Math Notation Codeplea. 23 Aug 2016. Retrieved 20 Sep 2016.