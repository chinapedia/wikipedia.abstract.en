EULER'S CONJECTURE is a disproved conjecture in mathematics related to Fermat's last theorem. It was proposed by Leonhard Euler in 1769. It states that for all integers and greater than 1, if the sum of th powers of positive integers is itself a th power, then is greater than or equal to :

    _b_}} ⇒

The conjecture represents an attempt to generalize Fermat's last theorem, which is the special case 2}}: if _b_}}, then .

Although the conjecture holds for the case 3}} (which follows from Fermat's last theorem for the third powers), it was disproved for 4}} and 5}}. It is unknown whether the conjecture fails or holds for any value .


Background

Euler was aware of the equality 133 + 134}} involving sums of four fourth powers; this however is not a counterexample because no term is isolated on one side of the equation. He also provided a complete solution to the four cubes problem as in Plato's number 6}} or the taxicab number 1729.[1][2] The general solution of the equation

_x_₁³ + _x_₂³ = _x_₃³ + _x_₄³
is

_x_₁ = 1 − (_a_ − 3_b_)(_a_² + 3_b_²), _x_₂ = (_a_ + 3_b_)(_a_² + 3_b_²) − 1

_x_₃ = (_a_ + 3_b_) − (_a_² + 3_b_²)², _x_₄ = (_a_² + 3_b_²)² − (_a_ − 3_b_)
where and are any integers.


Counterexamples

Euler's conjecture was disproven by L. J. Lander and T. R. Parkin in 1966 when, through a direct computer search on a CDC 6600, they found a counterexample for 5}}.[3] A total of three primitive (that is, in which the summands do not all have a common factor) counterexamples are known:



        144⁵}} (Lander & Parkin, 1966),

        ⁵}} (Scher & Seidl, 1996), and

        ⁵}} (Frye, 2004).

In 1986, Noam Elkies found a method to construct an infinite series of counterexamples for the 4}} case.[4] His smallest counterexample was



        ⁴}}.

A particular case of Elkies' solutions can be reduced to the identity[5][6]



        (357_v_² − 204_v_ + 363)⁴}}

where



         + _v_ − _v_² + _v_³ − _v_⁴}}.

This is an elliptic curve with a rational point at −}}. From this initial rational point, one can compute an infinite collection of others. Substituting into the identity and removing common factors gives the numerical example cited above.

In 1988, Roger Frye found the smallest possible counterexample



        ⁴}}

for 4}} by a direct computer search using techniques suggested by Elkies. This solution is the only one with values of the variables below 1,000,000.[7]


Generalizations

In 1967, L. J. Lander, T. R. Parkin, and John Selfridge conjectured[8] that if and

$$\sum_{i=1}^{n} a_i^k = \sum_{j=1}^{m} b_j^k$$
, where are positive integers for all and , then . In the special case 1}}, the conjecture states that if

$$\sum_{i=1}^{n} a_i^k = b^k$$
(under the conditions given above) then .

The special case may be described as the problem of giving a partition of a perfect power into few like powers. For 4, 5, 7, 8}} and _k_}} or , there are many known solutions. Some of these are listed below. As of 2002, there are no solutions for k = 6 whose final term is ≤ 730000.[9]

 3}}



        6}} (Plato's number 216)

    This is the case _a_=1, _b_=0 of Srinivasa Ramanujan's formula

(3_a_² + 5_a__b_ − 5_b_²)³ + (4_a_² − 4_a__b_ + 6_b_²)³ + (5_a_² − 5_a__b_ − 3_b_²)³ = (6_a_² − 4_a__b_ + 4_b_²)³.
[10]

    A cube as the sum of three cubes can also be parameterized as

_a_³(_a_³ + _b_³)³ = _b_³(_a_³ + _b_³)³ + _a_³(_a_³ − 2_b_³)³ + _b_³(2_a_³ − _b_³)³

    or as

_a_³(_a_³ + 2_b_³)³ = _a_³(_a_³ − _b_³)³ + _b_³(_a_³ − _b_³)³ + _b_³(2_a_³ + _b_³)³.
[11]

    The number 2 100 000³ can be expressed as the sum of three cubes in nine different ways.[12]

 4}}



        ⁴}} (R. Frye, 1988)[13]



        353⁴}} (R. Norrie, 1911)[14]

This is the smallest solution to the problem by R. Norrie.

 5}}



        144⁵}} (Lander & Parkin, 1966)[15]



        72⁵}} (Lander, Parkin, Selfridge, smallest, 1967)[16]



        107⁵}} (Sastry, 1934, third smallest)[17]

 7}}



        568⁷}} (M. Dodrill, 1999)

 8}}



        1409⁸}} (S. Chase, 2000)


See also

-   Jacobi–Madden equation
-   Prouhet–Tarry–Escott problem
-   Beal's conjecture
-   Pythagorean quadruple
-   Generalized taxicab number
-   Sums of powers, a list of related conjectures and theorems


References


External links

-   Tito Piezas III, A Collection of Algebraic Identities
-   Jaroslaw Wroblewski, Equal Sums of Like Powers
-   Ed Pegg Jr., Math Games, Power Sums
-   James Waldby, A Table of Fifth Powers equal to a Fifth Power (2009)
-   R. Gerbicz, J.-C. Meyrignac, U. Beckert, All solutions of the Diophantine equation _a_⁶ + _b_⁶ = _c_⁶ + _d_⁶ + _e_⁶ + _f_⁶ + _g_⁶ for _a_,_b_,_c_,_d_,_e_,_f_,_g_ < 250000 found with a distributed Boinc project
-   EulerNet: Computing Minimal Equal Sums Of Like Powers
-   -   -   -   Euler's Conjecture at library.thinkquest.org
-   A simple explanation of Euler's Conjecture at Maths Is Good For You!

Category:Diophantine equations Category:Disproved conjectures Category:Leonhard Euler

[1]

[2]

[3]

[4]

[5]

[6]

[7]

[8]

[9] Giovanni Resta and Jean-Charles Meyrignac (2002). The Smallest Solutions to the Diophantine Equation a⁶ + b⁶ + c⁶ + d⁶ + e⁶ = x⁶ + y⁶, Mathematics of Computation, v. 72, p. 1054 (See FURTHER WORK section).

[10] Math world : Diophantine Equation--3rd Powers

[11]

[12]

[13]

[14]

[15]

[16]

[17]