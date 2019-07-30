In mathematics, a POLYNOMIAL is an expression consisting of variables (also called indeterminates) and coefficients, that involves only the operations of addition, subtraction, multiplication, and non-negative integer exponents of variables. An example of a polynomial of a single indeterminate, , is . An example in three variables is .

Polynomials appear in many areas of mathematics and science. For example, they are used to form polynomial equations, which encode a wide range of problems, from elementary word problems to complicated scientific problems; they are used to define POLYNOMIAL FUNCTIONS, which appear in settings ranging from basic chemistry and physics to economics and social science; they are used in calculus and numerical analysis to approximate other functions. In advanced mathematics, polynomials are used to construct polynomial rings and algebraic varieties, central concepts in algebra and algebraic geometry.


Etymology

The word _polynomial_ joins two diverse roots: the Greek _poly_, meaning "many," and the Latin _nomen_, or name. It was derived from the term _binomial_ by replacing the Latin root _bi-_ with the Greek _poly-_. The word _polynomial_ was first used in the 17th century.[1]


Notation and terminology

The _x_ occurring in a polynomial is commonly called either a _variable_ or an _indeterminate_. When the polynomial is considered as an expression, _x_ is a fixed symbol which does not have any value (its value is "indeterminate"). However, when one considers the function defined by the polynomial, then _x_ represents the argument of the function, and is therefore called a "variable". Many authors use these two words interchangeably.

It is common to use uppercase letters for indeterminates and corresponding lowercase letters for the variables (or arguments) of the associated function .

A polynomial _P_ in the indeterminate _x_ is commonly denoted either as _P_ or as _P_(_x_). Formally, the name of the polynomial is _P_, not _P_(_x_), but the use of the functional notation _P_(_x_) date from the time where the distinction between a polynomial and the associated function was unclear. Moreover, the functional notation is often useful for specifying, in a single phrase, a polynomial and its indeterminate. For example, "let _P_(_x_) be a polynomial" is a shorthand for "let _P_ be a polynomial in the indeterminate _x_". On the other hand, when it is not necessary to emphasize the name of the indeterminate, many formulas are much simpler and easier to read if the name(s) of the indeterminate(s) do not appear at each occurrence of the polynomial.

The ambiguity of having two notations for a single mathematical object may be formally resolved by considering the general meaning of the functional notation for polynomials. If _a_ denotes a number, a variable, another polynomial, or, more generally any expression, then _P_(_a_) denotes, by convention, the result of substituting _a_ for _x_ in _P_. Thus, the polynomial _P_ defines the function

_a_ ↦ _P_(_a_),
which is the _polynomial function_ associated to _P_. Frequently, when using this notation, one supposes that _a_ is a number. However one may use it over any domain where addition and multiplication are defined (that is, any ring). In particular, if _a_ is a polynomial then _P_(_a_) is also a polynomial.

More specifically, when _a_ is the indeterminate _x_, then the image of _x_ by this function is the polynomial _P_ itself (substituting _x_ to _x_ does not change anything). In other words,

_P_(_x_) = _P_,
which justifies formally the existence of two notations for the same polynomial.


Definition

A polynomial is an expression that can be built from constants and symbols called indeterminates or variables by means of addition, multiplication and exponentiation to a non-negative integer power. Two such expressions that may be transformed, one to the other, by applying the usual properties of commutativity, associativity and distributivity of addition and multiplication are considered as defining the same polynomial.

A polynomial in a single indeterminate _x_ can always be written (or rewritten) in the form

$$a_n x^n + a_{n-1}x^{n-1} + \dotsb + a_2 x^2 + a_1 x + a_0,$$
where a₀, …, a_(n) are constants and x is the indeterminate. The word "indeterminate" means that x represents no particular value, although any value may be substituted for it. The mapping that associates the result of this substitution to the substituted value is a function, called a _polynomial function_.

This can be expressed more concisely by using summation notation:

$$\sum_{k=0}^n a_k x^k$$

That is, a polynomial can either be zero or can be written as the sum of a finite number of non-zero terms. Each term consists of the product of a number—called the coefficient of the term[2]—and a finite number of indeterminates, raised to nonnegative integer powers.


Classification

The exponent on an indeterminate in a term is called the degree of that indeterminate in that term; the degree of the term is the sum of the degrees of the indeterminates in that term, and the degree of a polynomial is the largest degree of any one term with nonzero coefficient. Because _x_¹}}, the degree of an indeterminate without a written exponent is one.

A term with no indeterminates and a polynomial with no indeterminates are called, respectively, a constant term and a constant polynomial.[3] The degree of a constant term and of a nonzero constant polynomial is 0. The degree of the zero polynomial, 0, (which has no terms at all) is generally treated as not defined (but see below).[4]

For example:

 − 5_x_²_y_

is a term. The coefficient is , the indeterminates are and , the degree of is two, while the degree of is one. The degree of the entire term is the sum of the degrees of each indeterminate in it, so in this example the degree is 3}}.

Forming a sum of several terms produces a polynomial. For example, the following is a polynomial:

$$\underbrace{_\,3x^2}_{\begin{smallmatrix}\mathrm{term}\\\mathrm{1}\end{smallmatrix}} \underbrace{-_\,5x}_{\begin{smallmatrix}\mathrm{term}\\\mathrm{2}\end{smallmatrix}} \underbrace{+_\,4}_{\begin{smallmatrix}\mathrm{term}\\\mathrm{3}\end{smallmatrix}}.$$

It consists of three terms: the first is degree two, the second is degree one, and the third is degree zero.

Polynomials of small degree have been given specific names. A polynomial of degree zero is a _constant polynomial_ or simply a _constant_. Polynomials of degree one, two or three are respectively _linear polynomials,_ _quadratic polynomials_ and _cubic polynomials_. For higher degrees the specific names are not commonly used, although _quartic polynomial_ (for degree four) and _quintic polynomial_ (for degree five) are sometimes used. The names for the degrees may be applied to the polynomial or to its terms. For example, in the term is a linear term in a quadratic polynomial.

The polynomial 0, which may be considered to have no terms at all, is called the ZERO POLYNOMIAL. Unlike other constant polynomials, its degree is not zero. Rather the degree of the zero polynomial is either left explicitly undefined, or defined as negative (either −1 or −∞).[5] These conventions are useful when defining Euclidean division of polynomials. The zero polynomial is also unique in that it is the only polynomial having an infinite number of roots. The graph of the zero polynomial, 0}}, is the -axis.

In the case of polynomials in more than one indeterminate, a polynomial is called _homogeneous_ of if _all_ its non-zero terms have . The zero polynomial is homogeneous, and, as homogeneous polynomial, its degree is undefined.[6] For example, is homogeneous of degree 5. For more details, see homogeneous polynomial.

The commutative law of addition can be used to rearrange terms into any preferred order. In polynomials with one indeterminate, the terms are usually ordered according to degree, either in "descending powers of ", with the term of largest degree first, or in "ascending powers of ". The polynomial in the example above is written in descending powers of . The first term has coefficient , indeterminate , and exponent . In the second term, the coefficient . The third term is a constant. Because the _degree_ of a non-zero polynomial is the largest degree of any one term, this polynomial has degree two.[7]

Two terms with the same indeterminates raised to the same powers are called "similar terms" or "like terms", and they can be combined, using the distributive law, into a single term whose coefficient is the sum of the coefficients of the terms that were combined. It may happen that this makes the coefficient 0.[8] Polynomials can be classified by the number of terms with nonzero coefficients, so that a one-term polynomial is called a monomial,[9] a two-term polynomial is called a binomial, and a three-term polynomial is called a _trinomial_. The term "quadrinomial" is occasionally used for a four-term polynomial.

A REAL POLYNOMIAL is a polynomial with real coefficients. The argument of the polynomial is not necessarily so restricted, for instance the s-plane variable in Laplace transforms. A REAL POLYNOMIAL FUNCTION is a function from the reals to the reals that is defined by a real polynomial. Similarly, an INTEGER POLYNOMIAL is a polynomial with integer coefficients, and a COMPLEX POLYNOMIAL is a polynomial with complex coefficients.

A polynomial in one indeterminate is called a _univariate polynomial_, a polynomial in more than one indeterminate is called a MULTIVARIATE POLYNOMIAL. A polynomial with two indeterminates is called a BIVARIATE POLYNOMIAL. These notions refer more to the kind of polynomials one is generally working with than to individual polynomials; for instance when working with univariate polynomials one does not exclude constant polynomials (which may result, for instance, from the subtraction of non-constant polynomials), although strictly speaking constant polynomials do not contain any indeterminates at all. It is possible to further classify multivariate polynomials as _bivariate_, _trivariate_, and so on, according to the maximum number of indeterminates allowed. Again, so that the set of objects under consideration be closed under subtraction, a study of trivariate polynomials usually allows bivariate polynomials, and so on. It is common, also, to say simply "polynomials in , and ", listing the indeterminates allowed.

The _evaluation of a polynomial_ consists of substituting a numerical value to each indeterminate and carrying out the indicated multiplications and additions. For polynomials in one indeterminate, the evaluation is usually more efficient (lower number of arithmetic operations to perform) using Horner's method:

$$(((\dotsb((a_n x + a_{n-1})x + a_{n-2})x + \dotsb + a_3)x + a_2)x + a_1)x + a_0.$$


Arithmetic

Polynomials can be added using the associative law of addition (grouping all their terms together into a single sum), possibly followed by reordering, and combining of like terms.[10][11] For example, if

$$\begin{align}
 P &= 3x^2 - 2x + 5xy - 2 \\
 Q &= -3x^2 + 3x + 4y^2 + 8
\end{align}$$

then

_P_ + _Q_ = 3_x_² − 2_x_ + 5_x__y_ − 2 − 3_x_² + 3_x_ + 4_y_² + 8

which can be simplified to

_P_ + _Q_ = _x_ + 5_x__y_ + 4_y_² + 6

To work out the product of two polynomials into a sum of terms, the distributive law is repeatedly applied, which results in each term of one polynomial being multiplied by every term of the other.[12] For example, if

$$\begin{align}
 \color{Red} P &\color{Red}{= 2x + 3y + 5} \\
 \color{Blue} Q &\color{Blue}{= 2x + 5y + xy + 1}
\end{align}$$

then

$$\begin{array}{rccrcrcrcr}
{\color{Red}{P}} {\color{Blue}{Q}} & {{=}}&&({\color{Red}{2x}}\cdot{\color{Blue}{2x}})
&+&({\color{Red}{2x}}\cdot{\color{Blue}{5y}})&+&({\color{Red}{2x}}\cdot {\color{Blue}{xy}})&+&({\color{Red}{2x}}\cdot{\color{Blue}{1}})
\\&&+&({\color{Red}{3y}}\cdot{\color{Blue}{2x}})&+&({\color{Red}{3y}}\cdot{\color{Blue}{5y}})&+&({\color{Red}{3y}}\cdot {\color{Blue}{xy}})&+&
({\color{Red}{3y}}\cdot{\color{Blue}{1}})
\\&&+&({\color{Red}{5}}\cdot{\color{Blue}{2x}})&+&({\color{Red}{5}}\cdot{\color{Blue}{5y}})&+&
({\color{Red}{5}}\cdot {\color{Blue}{xy}})&+&({\color{Red}{5}}\cdot{\color{Blue}{1}})
\end{array}$$

which can be simplified to

_P__Q_ = 4_x_² + 21_x__y_ + 2_x_²_y_ + 12_x_ + 15_y_² + 3_x__y_² + 28_y_ + 5

Polynomial evaluation can be used to compute the remainder of polynomial division by a polynomial of degree one, because the remainder of the division of by is ; see the polynomial remainder theorem. This is more efficient than the usual algorithm of division when the quotient is not needed.

-   A sum of polynomials is a polynomial.[13]
-   A product of polynomials is a polynomial.[14]
-   A composition of two polynomials is a polynomial, which is obtained by substituting a variable of the first polynomial by the second polynomial.[15]
-   The derivative of the polynomial is the polynomial . If the set of the coefficients does not contain the integers (for example if the coefficients are integers modulo some prime number ), then should be interpreted as the sum of with itself, times. For example, over the integers modulo , the derivative of the polynomial is the polynomial .[16]
-   A primitive integral or antiderivative of the polynomial is the polynomial , where is an arbitrary constant. For instance, the antiderivatives of have the form .

As for the integers, two kinds of divisions are considered for the polynomials. The _Euclidean division of polynomials_ that generalizes the Euclidean division of the integers. It results in two polynomials, a _quotient_ and a _remainder_ that are characterized by the following property of the polynomials: given two polynomials and such that , there exists a unique pair of polynomials, , the quotient, and , the remainder, such that _b_ _q_ + _r_}} and (here the polynomial zero is supposed to have a negative degree). By hand as well as with a computer, this division can be computed by the polynomial long division algorithm.[17]

All polynomials with coefficients in a unique factorization domain (for example, the integers or a field) also have a factored form in which the polynomial is written as a product of irreducible polynomials and a constant. This factored form is unique up to the order of the factors and their multiplication by an invertible constant. In the case of the field of complex numbers, the irreducible factors are linear. Over the real numbers, they have the degree either one or two. Over the integers and the rational numbers the irreducible factors may have any degree.[18] For example, the factored form of

5_x_³ − 5
is

5(_x_ − 1)(_x_²+_x_+1)
over the integers and the reals and

$$5(x - 1)\left(x + \frac{1 + i\sqrt{3}}{2}\right)\left(x + \frac{1 - i\sqrt{3}}{2}\right)$$
over the complex numbers.

The computation of the factored form, called _factorization_ is, in general, too difficult to be done by hand-written computation. However, efficient polynomial factorization algorithms are available in most computer algebra systems.

A formal quotient of polynomials, that is, an algebraic fraction wherein the numerator and denominator are polynomials, is called a "rational expression" or "rational fraction" and is not, in general, a polynomial. Division of a polynomial by a number, however, yields another polynomial. For example, is considered a valid term in a polynomial (and a polynomial by itself) because it is equivalent to and is just a constant. When this expression is used as a term, its coefficient is therefore . For similar reasons, if complex coefficients are allowed, one may have a single term like ; even though it looks like it should be expanded to two terms, the complex number is one complex number, and is the coefficient of that term. The expression is not a polynomial because it includes division by a non-constant polynomial. The expression is not a polynomial, because it contains an indeterminate used as exponent.

Because subtraction can be replaced by addition of the opposite quantity, and because positive integer exponents can be replaced by repeated multiplication, all polynomials can be constructed from constants and indeterminates using only addition and multiplication.


Polynomial functions

A _polynomial function_ is a function that can be defined by evaluating a polynomial. More precisely, a function of one argument from a given domain is a polynomial function if there exists a polynomial

_a__(_n_)_x_^(_n_) + _a__(_n_ − 1)_x_^(_n_ − 1) + ⋯ + _a_₂_x_² + _a_₁_x_ + _a_₀
that evaluates to f(x) for all in the domain of (here, is a non-negative integer and are constant coefficients).

Generally, unless otherwise specified, polynomial functions have complex coefficients, arguments, and values. In particular, a polynomial, restricted to have real coefficients, defines a function from the complex numbers to the complex numbers. If the domain of this function is also restricted to the reals, the resulting function maps reals to reals.

For example, the function , defined by

_f_(_x_) = _x_³ − _x_,
is a polynomial function of one variable. Polynomial functions of several variables are similarly defined, using polynomials in more than one indeterminate, as in

_f_(_x_, _y_) = 2_x_³ + 4_x_²_y_ + _x__y_⁵ + _y_² − 7.

According to the definition of polynomial functions, there may be expressions that obviously are not polynomials but nevertheless define polynomial functions. An example is the expression $\left(\sqrt{1-x^2}\right)^2,$ which takes the same values as the polynomial 1 − x² on the interval [ − 1, 1], and thus both expressions define the same polynomial function on this interval.

Every polynomial function is continuous, smooth, and entire.

Graphs

File:Polynomialdeg2.svg%7CPolynomial of degree 2:
_x_² − _x_ − 2}}
(_x_ + 1)(_x_ − 2)}} File:Polynomialdeg3.svg%7CPolynomial of degree 3:
_x_³/4 + 3_x_²/4 − 3_x_/2 − 2}}
1/4 (_x_ + 4)(_x_ + 1)(_x_ − 2)}} File:Polynomialdeg4.svg%7CPolynomial of degree 4:
1/14 (_x_ + 4)(_x_ + 1)(_x_ − 1)(_x_ − 3)
+ 0.5}} File:quintic polynomial.svg|Polynomial of degree 5:
1/20 (_x_ + 4)(_x_ + 2)(_x_ + 1 )(_x_ − 1)
(_x_ − 3)}} File:Sextic Graph.svg|Polynomial of degree 6:
1/100 (_x_⁶ − 2_x_ ⁵ − 26_x_⁴ + 28_x_³}}
File:Septic graph.svg|Polynomial of degree 7:
(_x_ − 3)(_x_ − 2)(_x_ − 1)(_x_)(_x_ + 1)(_x_ + 2)}}

A polynomial function in one real variable can be represented by a graph.

-   The graph of the zero polynomial



        0}}

    is the -axis.

-   The graph of a degree 0 polynomial



        _a_₀}}, where ,

    is a horizontal line with

-   The graph of a degree 1 polynomial (or linear function)



        _a_₀ + _a_₁_x_}} , where ,

    is an oblique line with and slope .

-   The graph of a degree 2 polynomial



        _a_₀ + _a_₁_x_ + _a_₂_x_²}}, where

    is a parabola.

-   The graph of a degree 3 polynomial



        _a_₀ + _a_₁_x_ + _a_₂_x_² + _a_₃_x_³}}, where

    is a cubic curve.

-   The graph of any polynomial with degree 2 or greater



        _a_₀ + _a_₁_x_ + _a_₂_x_² + ... + _a__(_n_)_x_^(_n_)}} , where

    is a continuous non-linear curve.

A non-constant polynomial function tends to infinity when the variable increases indefinitely (in absolute value). If the degree is higher than one, the graph does not have any asymptote. It has two parabolic branches with vertical direction (one branch for positive _x_ and one for negative _x_).

Polynomial graphs are analyzed in calculus using intercepts, slopes, concavity, and end behavior.


Equations

A _polynomial equation_, also called _algebraic equation_, is an equation of the form[19]

$$a_n x^n + a_{n-1}x^{n-1} + \dotsb + a_2 x^2 + a_1 x + a_0 = 0.$$

For example,

3_x_² + 4_x_ − 5 = 0
is a polynomial equation.

When considering equations, the indeterminates (variables) of polynomials are also called unknowns, and the _solutions_ are the possible values of the unknowns for which the equality is true (in general more than one solution may exist). A polynomial equation stands in contrast to a _polynomial identity_ like _x_² − _y_²}}, where both expressions represent the same polynomial in different forms, and as a consequence any evaluation of both members gives a valid equality.

In elementary algebra, methods such as the quadratic formula are taught for solving all first degree and second degree polynomial equations in one variable. There are also formulas for the cubic and quartic equations. For higher degrees, the Abel–Ruffini theorem asserts that there can not exist a general formula in radicals. However, root-finding algorithms may be used to find numerical approximations of the roots of a polynomial expression of any degree.

The number of real solutions of a polynomial equation with real coefficients may not exceed the degree, and equals the degree when the complex solutions are counted with their multiplicity. This fact is called the fundamental theorem of algebra.

Solving equations

Every polynomial in defines a function x ↦ P(x), called the _polynomial function_ associated to ; the equation 0}} is the _polynomial equation_ associated to . The solutions of this equation are called the _roots_ of the polynomial, or the zeros of the associated function (they correspond to the points where the graph of the function meets the -axis).

A number is a root of a polynomial if and only if the linear polynomial divides , that is if there is another polynomial such that . It may happen that divides more than once: if divides then is called a _multiple root_ of , and otherwise is called a _simple root_ of . If is a nonzero polynomial, there is a highest power such that divides , which is called the _multiplicity_ of the root in . When is the zero polynomial, the corresponding polynomial equation is trivial, and this case is usually excluded when considering roots, as, with the above definitions, every number is a root of the zero polynomial, with an undefined multiplicity. With this exception made, the number of roots of , even counted with their respective multiplicities, cannot exceed the degree of .[20] The relation between the coefficients of a polynomial and its roots is described by Vieta's formulas.

Some polynomials, such as , do not have any roots among the real numbers. If, however, the set of accepted solutions is expanded to the complex numbers, every non-constant polynomial has at least one root; this is the fundamental theorem of algebra. By successively dividing out factors , one sees that any polynomial with complex coefficients can be written as a constant (its leading coefficient) times a product of such polynomial factors of degree 1; as a consequence, the number of (complex) roots counted with their multiplicities is exactly equal to the degree of the polynomial.

There may be several meanings of "solving an equation". One may want to express the solutions as explicit numbers; for example, the unique solution of is . Unfortunately, this is, in general, impossible for equations of degree greater than one, and, since the ancient times, mathematicians have searched to express the solutions as algebraic expression; for example the golden ratio $(1+\sqrt 5)/2$ is the unique positive solution of x² − x − 1 = 0. In the ancient times, they succeeded only for degrees one and two. For quadratic equations, the quadratic formula provides such expressions of the solutions. Since the 16th century, similar formulas (using cube roots in addition to square roots), but much more complicated are known for equations of degree three and four (see cubic equation and quartic equation). But formulas for degree 5 and higher eluded researchers for several centuries. In 1824, Niels Henrik Abel proved the striking result that there are equations of degree 5 whose solutions cannot be expressed by a (finite) formula, involving only arithmetic operations and radicals (see Abel–Ruffini theorem). In 1830, Évariste Galois proved that most equations of degree higher than four cannot be solved by radicals, and showed that for each equation, one may decide whether it is solvable by radicals, and, if it is, solve it. This result marked the start of Galois theory and group theory, two important branches of modern algebra. Galois himself noted that the computations implied by his method were impracticable. Nevertheless, formulas for solvable equations of degrees 5 and 6 have been published (see quintic function and sextic equation).

When there is no algebraic expression for the roots, and when such an algebraic expression exists but is too complicated to be useful, the unique way of solving is to compute numerical approximations of the solutions.[21] There are many methods for that; some are restricted to polynomials and others may apply to any continuous function. The most efficient algorithms allow solving easily (on a computer) polynomial equations of degree higher than 1,000 (see Root-finding algorithm).

For polynomials in more than one indeterminate, the combinations of values for the variables for which the polynomial function takes the value zero are generally called _zeros_ instead of "roots". The study of the sets of zeros of polynomials is the object of algebraic geometry. For a set of polynomial equations in several unknowns, there are algorithms to decide whether they have a finite number of complex solutions, and, if this number is finite, for computing the solutions. See System of polynomial equations.

The special case where all the polynomials are of degree one is called a system of linear equations, for which another range of different solution methods exist, including the classical Gaussian elimination.

A polynomial equation for which one is interested only in the solutions which are integers is called a Diophantine equation. Solving Diophantine equations is generally a very hard task. It has been proved that there cannot be any general algorithm for solving them, and even for deciding whether the set of solutions is empty (see Hilbert's tenth problem). Some of the most famous problems that have been solved during the fifty last years are related to Diophantine equations, such as Fermat's Last Theorem.


Generalizations

There are several generalizations of the concept of polynomials.

Trigonometric polynomials

A TRIGONOMETRIC POLYNOMIAL is a finite linear combination of functions sin(_nx_) and cos(_nx_) with _n_ taking on the values of one or more natural numbers.[22] The coefficients may be taken as real numbers, for real-valued functions.

If sin(_nx_) and cos(_nx_) are expanded in terms of sin(_x_) and cos(_x_), a trigonometric polynomial becomes a polynomial in the two variables sin(_x_) and cos(_x_) (using List of trigonometric identities#Multiple-angle formulae). Conversely, every polynomial in sin(_x_) and cos(_x_) may be converted, with Product-to-sum identities, into a linear combination of functions sin(_nx_) and cos(_nx_). This equivalence explains why linear combinations are called polynomials.

For complex coefficients, there is no difference between such a function and a finite Fourier series.

Trigonometric polynomials are widely used, for example in trigonometric interpolation applied to the interpolation of periodic functions. They are used also in the discrete Fourier transform.

Matrix polynomials

A matrix polynomial is a polynomial with square matrices as variables.[23] Given an ordinary, scalar-valued polynomial

$$P(x) = \sum_{i=0}^n{ a_i x^i} =a_0 + a_1 x+ a_2 x^2 + \cdots + a_n x^n,$$
this polynomial evaluated at a matrix _A_ is

$$P(A) = \sum_{i=0}^n{ a_i A^i} =a_0 I + a_1 A + a_2 A^2 + \cdots + a_n A^n,$$
where _I_ is the identity matrix.

A MATRIX POLYNOMIAL EQUATION is an equality between two matrix polynomials, which holds for the specific matrices in question. A MATRIX POLYNOMIAL IDENTITY is a matrix polynomial equation which holds for all matrices _A_ in a specified matrix ring _M_(n)_(_R_).

Laurent polynomials

Laurent polynomials are like polynomials, but allow negative powers of the variable(s) to occur.

Rational functions

A rational fraction is the quotient (algebraic fraction) of two polynomials. Any algebraic expression that can be rewritten as a rational fraction is a rational function.

While polynomial functions are defined for all values of the variables, a rational function is defined only for the values of the variables for which the denominator is not zero.

The rational fractions include the Laurent polynomials, but do not limit denominators to powers of an indeterminate.

Power series

Formal power series are like polynomials, but allow infinitely many non-zero terms to occur, so that they do not have finite degree. Unlike polynomials they cannot in general be explicitly and fully written down (just like irrational numbers cannot), but the rules for manipulating their terms are the same as for polynomials. Non-formal power series also generalize polynomials, but the multiplication of two power series may not converge.

Other examples

-   A bivariate polynomial where the second variable is substituted by an exponential function applied to the first variable, for example , may be called an exponential polynomial.


Applications

Calculus

The simple structure of polynomial functions makes them quite useful in analyzing general functions using polynomial approximations. An important example in calculus is Taylor's theorem, which roughly states that every differentiable function locally looks like a polynomial function, and the Stone–Weierstrass theorem, which states that every continuous function defined on a compact interval of the real axis can be approximated on the whole interval as closely as desired by a polynomial function.

Calculating derivatives and integrals of polynomial functions is particularly simple. For the polynomial function

$$\sum_{i=0}^n a_i x^i$$
the derivative with respect to _x_ is

$$\sum_{i=1}^n a_i i x^{i-1}$$
and the indefinite integral is

$$\sum_{i=0}^n {a_i\over i+1} x^{i+1}+c.$$

Abstract algebra

In abstract algebra, one distinguishes between _polynomials_ and _polynomial functions_. A _polynomial_ in one indeterminate over a ring is defined as a formal expression of the form

_f_ = _a__(_n_)_x_^(_n_) + _a__(_n_ − 1)_x_^(_n_ − 1) + ⋯ + _a_₁_x_¹ + _a_₀_x_⁰
where is a natural number, the coefficients are elements of , and is a formal symbol, whose powers are just placeholders for the corresponding coefficients , so that the given formal expression is just a way to encode the sequence , where there is an such that 0}} for all . Two polynomials sharing the same value of _n_ are considered equal if and only if the sequences of their coefficients are equal; furthermore any polynomial is equal to any polynomial with greater value of obtained from it by adding terms in front whose coefficient is zero. These polynomials can be added by simply adding corresponding coefficients (the rule for extending by terms with zero coefficients can be used to make sure such coefficients exist). Thus each polynomial is actually equal to the sum of the terms used in its formal expression, if such a term is interpreted as a polynomial that has zero coefficients at all powers of other than . Then to define multiplication, it suffices by the distributive law to describe the product of any two such terms, which is given by the rule

    ax^(k) bx^(l) = abx^(k + l)

    for all elements _a_, _b_ of the ring _R_ and all natural numbers _k_ and _l_.

Thus the set of all polynomials with coefficients in the ring forms itself a ring, the _ring of polynomials_ over , which is denoted by . The map from to sending to is an injective homomorphism of rings, by which is viewed as a subring of . If is commutative, then is an algebra over .

One can think of the ring as arising from by adding one new element _x_ to _R_, and extending in a minimal way to a ring in which satisfies no other relations than the obligatory ones, plus commutation with all elements of (that is _rx_}}). To do this, one must add all powers of and their linear combinations as well.

Formation of the polynomial ring, together with forming factor rings by factoring out ideals, are important tools for constructing new rings out of known ones. For instance, the ring (in fact field) of complex numbers, which can be constructed from the polynomial ring over the real numbers by factoring out the ideal of multiples of the polynomial . Another example is the construction of finite fields, which proceeds similarly, starting out with the field of integers modulo some prime number as the coefficient ring (see modular arithmetic).

If is commutative, then one can associate to every polynomial in , a _polynomial function_ with domain and range equal to (more generally one can take domain and range to be the same unital associative algebra over ). One obtains the value by substitution of the value for the symbol in . One reason to distinguish between polynomials and polynomial functions is that over some rings different polynomials may give rise to the same polynomial function (see Fermat's little theorem for an example where is the integers modulo ). This is not the case when is the real or complex numbers, whence the two concepts are not always distinguished in analysis. An even more important reason to distinguish between polynomials and polynomial functions is that many operations on polynomials (like Euclidean division) require looking at what a polynomial is composed of as an expression rather than evaluating it at some constant value for .

Divisibility

In commutative algebra, one major focus of study is _divisibility_ among polynomials. If is an integral domain and and are polynomials in , it is said that _divides_ or is a divisor of if there exists a polynomial in such that _g_}}. One can show that every zero gives rise to a linear divisor, or more formally, if is a polynomial in and is an element of such that 0}}, then the polynomial () divides . The converse is also true. The quotient can be computed using the polynomial long division.[24][25]

If is a field and and are polynomials in with , then there exist unique polynomials and in with

_f_ = _q_ _g_ + _r_
and such that the degree of is smaller than the degree of (using the convention that the polynomial 0 has a negative degree). The polynomials and are uniquely determined by and . This is called _Euclidean division, division with remainder_ or _polynomial long division_ and shows that the ring is a Euclidean domain.

Analogously, _prime polynomials_ (more correctly, _irreducible polynomials_) can be defined as _non-zero polynomials which cannot be factorized into the product of two non-constant polynomials_. In the case of coefficients in a ring, _"non-constant"_ must be replaced by _"non-constant or non-unit"_ (both definitions agree in the case of coefficients in a field). Any polynomial may be decomposed into the product of an invertible constant by a product of irreducible polynomials. If the coefficients belong to a field or a unique factorization domain this decomposition is unique up to the order of the factors and the multiplication of any non-unit factor by a unit (and division of the unit factor by the same unit). When the coefficients belong to integers, rational numbers or a finite field, there are algorithms to test irreducibility and to compute the factorization into irreducible polynomials (see Factorization of polynomials). These algorithms are not practicable for hand-written computation, but are available in any computer algebra system. Eisenstein's criterion can also be used in some cases to determine irreducibility.

Positional notation

In modern positional numbers systems, such as the decimal system, the digits and their positions in the representation of an integer, for example, 45, are a shorthand notation for a polynomial in the radix or base, in this case, . As another example, in radix 5, a string of digits such as 132 denotes the (decimal) number = 42. This representation is unique. Let _b_ be a positive integer greater than 1. Then every positive integer _a_ can be expressed uniquely in the form

$$a = r_m b^m + r_{m-1} b^{m-1} + \dotsb + r_1 b + r_0,$$

where _m_ is a nonnegative integer and the _r_'s are integers such that

    and for .[26]

Other applications

Polynomials serve to approximate other functions,[27] such as the use of splines.

Polynomials are frequently used to encode information about some other object. The characteristic polynomial of a matrix or linear operator contains information about the operator's eigenvalues. The minimal polynomial of an algebraic element records the simplest algebraic relation satisfied by that element. The chromatic polynomial of a graph counts the number of proper colourings of that graph.

The term "polynomial", as an adjective, can also be used for quantities or functions that can be written in polynomial form. For example, in computational complexity theory the phrase _polynomial time_ means that the time it takes to complete an algorithm is bounded by a polynomial function of some variable, such as the size of the input.

In computer graphics they are used to interpolate between values to evaluate animation of dynamic graphical objects.


History

Determining the roots of polynomials, or "solving algebraic equations", is among the oldest problems in mathematics. However, the elegant and practical notation we use today only developed beginning in the 15th century. Before that, equations were written out in words. For example, an algebra problem from the Chinese Arithmetic in Nine Sections, circa 200 BCE, begins "Three sheafs of good crop, two sheafs of mediocre crop, and one sheaf of bad crop are sold for 29 dou." We would write  29}}.

History of the notation

The earliest known use of the equal sign is in Robert Recorde's _The Whetstone of Witte_, 1557. The signs + for addition, − for subtraction, and the use of a letter for an unknown appear in Michael Stifel's _Arithemetica integra_, 1544. René Descartes, in _La géometrie_, 1637, introduced the concept of the graph of a polynomial equation. He popularized the use of letters from the beginning of the alphabet to denote constants and letters from the end of the alphabet to denote variables, as can be seen above, in the general formula for a polynomial in one variable, where the 's denote constants and denotes a variable. Descartes introduced the use of superscripts to denote exponents as well.[28]


See also

-   Lill's method
-   List of polynomial topics
-   Polynomials on vector spaces
-   Power series
-   Table of mathematical expressions
-   Polynomial transformations
-   Polynomial mapping
-   Polynomial functor


Notes


References

-   -   -   -   . This classical book covers most of the content of this article.

-   -   Mayr, K. Über die Auflösung algebraischer Gleichungssysteme durch hypergeometrische Funktionen. _Monatshefte für Mathematik und Physik_ vol. 45, (1937) pp. 280–313.
-   {{ citation | last1 = McCoy | first1 = Neal H. | title = Introduction To Modern Algebra, Revised Edition | location = Boston | publisher = Allyn and Bacon | year = 1968 | lccn = 68015225 }}
-   -   -   Umemura, H. Solution of algebraic equations in terms of theta constants. In D. Mumford, _Tata Lectures on Theta II_, Progress in Mathematics 43, Birkhäuser, Boston, 1984.
-   von Lindemann, F. Über die Auflösung der algebraischen Gleichungen durch transcendente Functionen. Nachrichten von der Königl. Gesellschaft der Wissenschaften, vol. 7, 1884. Polynomial solutions in terms of theta functions.
-   von Lindemann, F. Über die Auflösung der algebraischen Gleichungen durch transcendente Functionen II. Nachrichten von der Königl. Gesellschaft der Wissenschaften und der Georg-Augusts-Universität zu Göttingen, 1892 edition.


External links

-   -   -

Polynomials Category:Algebra

[1] See "polynomial" and "binomial", _Compact Oxford English Dictionary_

[2] The coefficient of a term may be any number from a specified set. If that set is the set of real numbers, we speak of "polynomials over the reals". Other common kinds of polynomials are polynomials with integer coefficients, polynomials with complex coefficients, and polynomials with coefficients that are integers modulo of some prime number .

[3] This terminology dates from the time when the distinction was not clear between a polynomial and the function that it defines: a constant term and a constant polynomial define constant functions.

[4]

[5]

[6] In fact, as homogeneous function, it is homogeneous of _every_ degree

[7]

[8]

[9] Some authors use "monomial" to mean "monic monomial". See

[10]

[11]

[12]

[13]

[14]

[15]

[16]

[17] Peter H. Selby, Steve Slavin, _Practical Algebra: A Self-Teaching Guide, 2nd Edition_, Wiley,

[18]

[19]

[20]

[21]

[22]

[23]

[24]

[25]

[26]

[27]

[28] Howard Eves, _An Introduction to the History of Mathematics_, Sixth Edition, Saunders,