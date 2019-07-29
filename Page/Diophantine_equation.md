Rtriangle.svg is equivalent to solving the Diophantine equation _c_²}}.]]

In mathematics, a DIOPHANTINE EQUATION is a polynomial equation, usually in two or more unknowns, such that only the integer solutions are sought or studied (an integer solution is such that all the unknowns take integer values). A LINEAR DIOPHANTINE EQUATION equates the sum of two or more monomials, each of degree 1 in one of the variables, to a constant. An EXPONENTIAL DIOPHANTINE EQUATION is one in which exponents on terms can be unknowns.

DIOPHANTINE PROBLEMS have fewer equations than unknown variables and involve finding integers that work correctly for all equations. In more technical language, they define an algebraic curve, algebraic surface, or more general object, and ask about the lattice points on it.

The word _Diophantine_ refers to the Hellenistic mathematician of the 3rd century, Diophantus of Alexandria, who made a study of such equations and was one of the first mathematicians to introduce symbolism into algebra. The mathematical study of Diophantine problems that Diophantus initiated is now called DIOPHANTINE ANALYSIS.

While individual equations present a kind of puzzle and have been considered throughout history, the formulation of general theories of Diophantine equations (beyond the theory of quadratic forms) was an achievement of the twentieth century.


Examples

In the following Diophantine equations, , , , and are the unknowns and the other letters are given constants:

+---------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 1}}           | This is a linear Diophantine equation.                                                                                                                                                                                                                                                               |
+---------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| _y_³ + _z_³}} | The smallest nontrivial solution in positive integers is 12³ + 1³ = 9³ + 10³ = 1729. It was famously given as an evident property of 1729, a taxicab number (also named Hardy–Ramanujan number) by Ramanujan to Hardy while meeting in 1917.[1] There are infinitely many nontrivial solutions.[2]   |
+---------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| _z^(n)_}}     | For = 2 there are infinitely many solutions : the Pythagorean triples. For larger integer values of , Fermat's Last Theorem (initially claimed in 1637 by Fermat and proved by Andrew Wiles in 1995[3]) states there are no positive integer solutions .                                             |
+---------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| ±1}}          | This is Pell's equation, which is named after the English mathematician John Pell. It was studied by Brahmagupta in the 7th century, as well as by Fermat in the 17th century.                                                                                                                       |
+---------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| + + }}        | The Erdős–Straus conjecture states that, for every positive integer ≥ 2, there exists a solution in , , and , all as positive integers. Although not usually stated in polynomial form, this example is equivalent to the polynomial equation _yzn_ + _xzn_ + _xyn_ {{=}} _n_(_yz_ + _xz_ + _xy_)}}. |
+---------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| _w_⁴}}        | Conjectured incorrectly by Euler to have no nontrivial solutions. Proved by Elkies to have infinitely many nontrivial solutions, with a computer search by Frye determining the smallest nontrivial solution.[4]                                                                                     |
+---------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+


Linear Diophantine equations

One equation

The simplest linear Diophantine equation takes the form _c_}}, where , and are given integers. The solutions are described by the following theorem:

    _This Diophantine equation has a solution_ (where and are integers) _if and only if_ _is a multiple of the greatest common divisor of_ _and_ . _Moreover, if_ _is a solution, then the other solutions have the form_ , _where_ _is an arbitrary integer, and_ _and_ _are the quotients of_ _and_ _(respectively) by the greatest common divisor of_ _and_ .

PROOF: If is this greatest common divisor, Bézout's identity asserts the existence of integers and such that _d_}}. If is a multiple of , then _dh_}} for some integer , and is a solution. On the other hand, for every pair of integers and , the greatest common divisor of and divides . Thus, if the equation has a solution, then must be a multiple of . If _ud_}} and _vd_}}, then for every solution , we have

    _ax_ + _by_ + _k_(_av_ − _bu_) {{=}} _ax_ + _by_ + _k_(_udv_ − _vdu_) {{=}} _ax_ + _by_}},

showing that is another solution. Finally, given two solutions such that _ax_₂ + _by_₂ {{=}} _c_}}, one deduces that 0}}. As and are coprime, Euclid's lemma shows that divides , and thus that there exists an integer such that _kv_}} and −_ku_}}. Therefore, _x_₁ + _kv_}} and _y_₁ − _ku_}}, which completes the proof.

Chinese remainder theorem

The Chinese remainder theorem describes an important class of linear Diophantine systems of equations: let be pairwise coprime integers greater than one, be arbitrary integers, and be the product . The Chinese remainder theorem asserts that the following linear Diophantine system has exactly one solution such that , and that the other solutions are obtained by adding to a multiple of :

$$\begin{align}
x&= a_1 + n_1\,x_1\\
&\vdots\\
x&=a_k+n_k\,x_k
\end{align}$$

System of linear Diophantine equations

More generally, every system of linear Diophantine equations may be solved by computing the Smith normal form of its matrix, in a way that is similar to the use of the reduced row echelon form to solve a system of linear equations over a field. Using matrix notation every system of linear Diophantine equations may be written

    _C_}},

where is an matrix of integers, is an column matrix of unknowns and is an column matrix of integers.

The computation of the Smith normal form of provides two unimodular matrices (that is matrices that are invertible over the integers and have ±1 as determinant) and of respective dimensions and , such that the matrix

    [_b_] {{=}} _UAV_}}

is such that is not zero for not greater than some integer , and all the other entries are zero. The system to be solved may thus be rewritten as

    _UC_}}.

Calling the entries of and those of _UC_}}, this leads to the system

    _d__(_i_)}} for ,

    _d__(_i_)}} for .

This system is equivalent to the given one in the following sense: A column matrix of integers is a solution of the given system if and only if _Vy_}} for some column matrix of integers such that _D_}}.

It follows that the system has a solution if and only if divides for and 0}} for . If this condition is fulfilled, the solutions of the given system are

$$V\,\left[
\begin{array}{c}
\frac{d_1}{b_{1,1}}\\
\vdots\\
\frac{d_k}{b_{k,k}}\\
h_{k+1}\\
\vdots\\
h_n
\end{array}
\right]\,,$$
where are arbitrary integers.

Hermite normal form may also be used for solving systems of linear Diophantine equations. However, Hermite normal form does not directly provide the solutions; to get the solutions from the Hermite normal form, one has to successively solve several linear equations. Nevertheless, Richard Zippel wrote that the Smith normal form "is somewhat more than is actually needed to solve linear diophantine equations. Instead of reducing the equation to diagonal form, we only need to make it triangular, which is called the Hermite normal form. The Hermite normal form is substantially easier to compute than the Smith normal form."[5]

Integer linear programming amounts to finding some integer solutions (optimal in some sense) of linear systems that include also inequations. Thus systems of linear Diophantine equations are basic in this context, and textbooks on integer programming usually have a treatment of systems of linear Diophantine equations.[6]


Homogeneous equations

A homogeneous Diophantine equation is a Diophantine equation that is defined by a homogeneous polynomial. A typical such equation is the equation of Fermat's Last Theorem

_x_^(_d_) + _y_^(_d_) − _z_^(_d_) = 0.

As a homogeneous polynomial in indeterminates defines a hypersurface in the projective space of dimension , solving a homogeneous Diophantine equation is the same as finding the rational points of a projective hypersurface.

Solving a homogeneous Diophantine equation is generally a very difficult problem, even in the simplest non-trivial case of three indeterminates (in the case of two indeterminates the problem is equivalent with testing if a rational number is the th power of another rational number). A witness of the difficulty of the problem is Fermat's Last Theorem (for , there is no integer solution of the above equation), which needed more than three centuries of mathematicians efforts for being solved.

For degrees higher than three, most known results are theorems asserting that there are no solutions (for example Fermat's Last Theorem) or that the number of solutions is finite (for example Falting's theorem).

For the degree three, there are general solving methods, which work on almost all equations that are encountered in practice, but no algorithm is known that works for every cubic equation.

Degree two

Homogeneous Diophantine equations of degree two are easier to solve. The standard solving method proceed in two steps. One has first to find one solution, or to prove that there is no solution. When a solution has been found, all solutions are then deduced.

For proving that there is no solution, one may reduce the equation [[modular_arithmetic|modulo {a_n}\right).

If this rational point is a singular point, that is if all partial derivatives are zero at , all lines passing through are contained in the hypersurface, and one has a cone. The change of variables

_y__(_i_) = _x__(_i_) − _r__(_i_)
does not change the rational points, and transforms into a homogeneous polynomial in variables. In this case, the problem may thus be solved by applying the method to an equation with fewer variables.

If the polynomial is a product of linear polynomials (possibly with non-rational coefficients), then it defines two hyperplanes. The intersection of these hyperplanes is a rational flat, and contains rational singular points. This case is thus a special instance of the preceding case.

In the general case, let consider the parametric equation of a line passing through :

$$\begin{align}
x_2&= r_2+t_2(x_1-r_1)\\
\vdots&\\
x_{n-1}&= r_{n-1}+t_{n-1}(x_1-r_1).
\end{align}$$
Substituting this in , one gets a polynomial of degree two in x₁, that is zero for x₁ = r₁. It is thus divisible by x₁ − r₁,. The quotient is linear in x₁, and may be solved for expressing x₁ as a quotient of two polynomials of degree at most two in t₂, …, t_(n − 1), with integer coefficients:

$$x_1=\frac{f_1(t_2, \ldots, t_{n-1})}{f_n(t_2, \ldots, t_{n-1})}.$$
Substituting this in the expressions for x₂, …, x_(n − 1), one gets, for ,

$$x_i=\frac{f_i(t_2, \ldots, t_{n-1})}{f_n(t_2, \ldots, t_{n-1})},$$
where f₁, …, f_(n) are polynomials of degree at most two with integer coefficients.

Then, one can return to the homogeneous case. Let, for ,

$$F_i(t_1, \ldots, t_{n-1})=t_1^2 f_i\left(\frac{t_2}{t_1}, \ldots, \frac{t_{n-1}}{t_1} \right),$$
be the homogenization of f_(i). These quadratic polynomials with integer coefficients form a parameterization of the projective hypersurface defined by :

$$\begin{align}
x_1&= F_1(t_1, \ldots, t_{n-1})\\
\vdots&\\
x_n&= F_n(t_1, \ldots, t_{n-1}).
\end{align}$$

A point of the projective hypersurface defined by is rational if and only if it may be obtained from rational values of t₁, …, t_(n − 1). As F₁, …, F_(n) are homogeneous polynomials, the point is not changed if all t_(i) are multiplied by the same rational number. Thus, one may suppose that t₁, …, t_(n − 1) are coprime integers. It follows that the integer solutions of the Diophantine equation are exactly the sequences (x₁, …, x_(n)) where, for ,

$$x_i= k\,\frac{F_i(t_1, \ldots, t_{n-1})}{d},$$
where is an integer, t₁, …, t_(n − 1) are coprime integers, and is the greatest common divisor of the integers F_(i)(t₁, …, t_(n − 1)).

One could hope that the coprimality of the t_(i) could imply that . Unfortunately this is not the case, as shown in the next section.

Example of Pythagorean triples

The equation

_x_² + _y_² − _z_² = 0
is probably the first homogeneous Diophantine equation of degree two that has been studied. Its solutions are the Pythagorean triples. This is also the homogeneous equation of the unit circle. In this section, we show how the above method allows retrieving Euclid's formula for generating Pythagorean triples.

For retrieving exactly Euclid's formula, we start from the solution , corresponding to the point of the unit circle. A line passing through this point may be parameterized by its slope:

_y_ = _t_(_x_ + 1).
Putting this in the circle equation

_x_² + _y_² − 1 = 0,
one gets

_x_² − 1 + _t_²(_x_ + 1)² = 0.
Dividing by , results in

_x_ − 1 + _t_²(_x_ + 1) = 0,
which is easy to solve in :

$$x=\frac{1-t^2}{1+t^2}.$$
It follows

$$y=t(x+1) = \frac{2t}{1+t^2}.$$
Homogenizing as described above one gets all solutions as

$$\begin{align}
x&=k\,\frac{s^2-t^2}{d}\\
y&=k\,\frac{2st}{d}\\
z&=k\,\frac{s^2+t^2}{d},
\end{align}$$
where is any integer, and are coprime integers, and is the greatest common divisor of the three numerators. In fact, if and are both odd, and if one is odd and the other is even.

The _primitive triples_ are the solutions where and .

This description of the solutions differs slightly from Euclid's formula because Euclid's formula considers only the solutions such that and are all positive, and does not distinguish between two triples that differ by the exchange of and ,


Diophantine analysis

Typical questions

The questions asked in Diophantine analysis include:

1.  Are there any solutions?
2.  Are there any solutions beyond some that are easily found by inspection?
3.  Are there finitely or infinitely many solutions?
4.  Can all solutions be found in theory?
5.  Can one in practice compute a full list of solutions?

These traditional problems often lay unsolved for centuries, and mathematicians gradually came to understand their depth (in some cases), rather than treat them as puzzles.

Typical problem

The given information is that a father's age is 1 less than twice that of his son, and that the digits making up the father's age are reversed in the son's age (i.e. ). This leads to the equation 2(10_B_ + _A_) − 1}}, thus 1}}. Inspection gives the result 7}}, 3}}, and thus equals 73 years and equals 37 years. One may easily show that there is not any other solution with and positive integers less than 10.

Many well known puzzles in the field of recreational mathematics lead to diophantine equations. Examples include the Cannonball problem, Archimedes's cattle problem and The monkey and the coconuts.

17th and 18th centuries

In 1637, Pierre de Fermat scribbled on the margin of his copy of _Arithmetica_: "It is impossible to separate a cube into two cubes, or a fourth power into two fourth powers, or in general, any power higher than the second into two like powers." Stated in more modern language, "The equation _c_^(_n_)}} has no solutions for any higher than 2." And then he wrote, intriguingly: "I have discovered a truly marvelous proof of this proposition, which this margin is too narrow to contain." Such a proof eluded mathematicians for centuries, however, and as such his statement became famous as Fermat's Last Theorem. It wasn't until 1995 that it was proven by the British mathematician Andrew Wiles.

In 1657, Fermat attempted to solve the Diophantine equation _y_²}} (solved by Brahmagupta over 1000 years earlier). The equation was eventually solved by Euler in the early 18th century, who also solved a number of other Diophantine equations. The smallest solution of this equation in positive integers is 226153980}}, 1766319049}} (see Chakravala method).

Hilbert's tenth problem

In 1900, David Hilbert proposed the solvability of all Diophantine equations as the tenth of his fundamental problems. In 1970, Yuri Matiyasevich solved it negatively, by proving that a general algorithm for solving all Diophantine equations cannot exist.

Diophantine geometry

Diophantine geometry, which is the application of techniques from algebraic geometry in this field, has continued to grow as a result; since treating arbitrary equations is a dead end, attention turns to equations that also have a geometric meaning. The central idea of Diophantine geometry is that of a rational point, namely a solution to a polynomial equation or a system of polynomial equations, which is a vector in a prescribed field , when is _not_ algebraically closed.

Modern research

One of the few general approaches is through the Hasse principle. Infinite descent is the traditional method, and has been pushed a long way.

The depth of the study of general Diophantine equations is shown by the characterisation of Diophantine sets as equivalently described as recursively enumerable. In other words, the general problem of Diophantine analysis is blessed or cursed with universality, and in any case is not something that will be solved except by re-expressing it in other terms.

The field of Diophantine approximation deals with the cases of _Diophantine inequalities_. Here variables are still supposed to be integral, but some coefficients may be irrational numbers, and the equality sign is replaced by upper and lower bounds.

The single most celebrated question in the field, the conjecture known as Fermat's Last Theorem, was solved by Andrew Wiles,[7] using tools from algebraic geometry developed during the last century rather than within number theory where the conjecture was originally formulated. Other major results, such as Faltings's theorem, have disposed of old conjectures.

Infinite Diophantine equations

An example of an infinite diophantine equation is:

    _a_² + 2_b_² + 3_c_² + 4_d_² + 5_e_² + …}},

which can be expressed as "How many ways can a given integer be written as the sum of a square plus twice a square plus thrice a square and so on?" The number of ways this can be done for each forms an integer sequence. Infinite Diophantine equations are related to theta functions and infinite dimensional lattices. This equation always has a solution for any positive . Compare this to:

    _a_² + 4_b_² + 9_c_² + 16_d_² + 25_e_² + …}},

which does not always have a solution for positive .


Exponential Diophantine equations

If a Diophantine equation has as an additional variable or variables occurring as exponents, it is an exponential Diophantine equation. Examples include the Ramanujan–Nagell equation, _x_²}}, and the equation of the Fermat-Catalan conjecture and Beal's conjecture, _c_^(_k_)}} with inequality restrictions on the exponents. A general theory for such equations is not available; particular cases such as Catalan's conjecture have been tackled. However, the majority are solved via ad hoc methods such as Størmer's theorem or even trial and error.


See also

-   Kuṭṭaka, Aryabhata's algorithm for solving linear Diophantine equations in two unknowns


Notes


References

-   -   -   -   -


Further reading

-   Bashmakova, Izabella G. "Diophante et Fermat," _Revue d'Histoire des Sciences_ 19 (1966), pp. 289-306
-   Bashmakova, Izabella G. _Diophantus and Diophantine Equations_. Moscow: Nauka 1972 [in Russian]. German translation: _Diophant und diophantische Gleichungen_. Birkhauser, Basel/ Stuttgart, 1974. English translation: _Diophantus and Diophantine Equations_. Translated by Abe Shenitzer with the editorial assistance of Hardy Grant and updated by Joseph Silverman. The Dolciani Mathematical Expositions, 20. Mathematical Association of America, Washington, DC. 1997.
-   Bashmakova, Izabella G. “Arithmetic of Algebraic Curves from Diophantus to Poincaré” _Historia Mathematica_ 8 (1981), 393-416.
-   Bashmakova, Izabella G., Slavutin, E.I. _History of Diophantine Analysis from Diophantus to Fermat_. Moscow: Nauka 1984 [in Russian].
-   Bashmakova, Izabella G. “Diophantine Equations and the Evolution of Algebra,” _American Mathematical Society Translations_ 147 (2), 1990, pp. 85-100. Translated by A. Shenitzer and H. Grant.
-   -   Rashed, Roshdi, Houzel, Christian. _Les Arithmétiques de Diophante : Lecture historique et mathématique_, Berlin, New York : Walter de Gruyter, 2013.
-   Rashed, Roshdi, _Histoire de l’analyse diophantienne classique : D’Abū Kāmil à Fermat_, Berlin, New York : Walter de Gruyter.


External links

-   Diophantine Equation. From MathWorld at Wolfram Research.
-   -   Dario Alpern's Online Calculator. Retrieved 18 March 2009

*

[1]

[2] .

[3]

[4]

[5]

[6]

[7]