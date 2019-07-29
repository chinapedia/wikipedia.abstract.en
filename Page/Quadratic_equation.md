Quadratic_formula.svg for the roots of the general quadratic equation]] In algebra, a QUADRATIC EQUATION (from the Latin for "square") is any equation having the form

    ax² + bx + c = 0,

where represents an unknown, and , , and represent known numbers, with . If 0}}, then the equation is linear, not quadratic, as there is no ax² term. The numbers , , and are the _coefficients_ of the equation and may be distinguished by calling them, respectively, the _quadratic coefficient_, the _linear coefficient_ and the _constant_ or _free term_.[1]

The values of that satisfy the equation are called _solutions_ of the equation, and _roots_ or _zeros_ of its left-hand side. A quadratic equation has at most two solutions. If there is no real solution, there are two complex solutions. If there is only one solution, one says that it is a double root. So a quadratic equation has always two roots, if complex roots are considered, and if a double root is counted for two. If the two solutions are denoted and (possibly equal), one has

_a__x_² + _b__x_ + _c_ = _a_(_x_ − _r_)(_x_ − _s_).
Thus, the process of solving a quadratic equation is also called _factorizing_ or _factoring_. Completing the square is the standard method for that, which results in the quadratic formula, which express the solutions in terms of , , and . Graphing may also be used for getting an approximate value of the solutions. Solutions to problems that may be expressed in terms of quadratic equations were known as early as 2000 BC.

Because the quadratic equation involves only one unknown, it is called "univariate". The quadratic equation only contains powers of that are non-negative integers, and therefore it is a polynomial equation. In particular, it is a second-degree polynomial equation, since the greatest power is two.


Solving the quadratic equation

Quadratic_equation_coefficients.png A quadratic equation with real or complex coefficients has two solutions, called _roots_. These two solutions may or may not be distinct, and they may or may not be real.

Factoring by inspection

It may be possible to express a quadratic equation 0}} as a product 0}}. In some cases, it is possible, by simple inspection, to determine values of _p_, _q_, _r,_ and _s_ that make the two forms equivalent to one another. If the quadratic equation is written in the second form, then the "Zero Factor Property" states that the quadratic equation is satisfied if 0}} or 0}}. Solving these two linear equations provides the roots of the quadratic.

For most students, factoring by inspection is the first method of solving quadratic equations to which they are exposed.[2] If one is given a quadratic equation in the form 0}}, the sought factorization has the form , and one has to find two numbers and that add up to and whose product is (this is sometimes called "Vieta's rule"[3] and is related to Vieta's formulas). As an example, factors as . The more general case where does not equal can require a considerable effort in trial and error guess-and-check, assuming that it can be factored at all by inspection.

Except for special cases such as where 0}} or 0}}, factoring by inspection only works for quadratic equations that have rational roots. This means that the great majority of quadratic equations that arise in practical applications cannot be solved by factoring by inspection.[4]

Completing the square

Polynomialdeg2.svg _x_² − _x_ − 2}}, the points where the graph crosses the -axis, −1}} and 2}}, are the solutions of the quadratic equation 0}}. |alt=Figure 2 illustrates an x y plot of the quadratic function f of x equals x squared minus x minus 2. The x-coordinate of the points where the graph intersects the x-axis, x equals −1 and x equals 2, are the solutions of the quadratic equation x squared minus x minus 2 equals zero.]] The process of completing the square makes use of the algebraic identity

_x_² + 2_h__x_ + _h_² = (_x_ + _h_)²,
which represents a well-defined algorithm that can be used to solve any quadratic equation.[5] Starting with a quadratic equation in standard form, 0}}

1.  Divide each side by , the coefficient of the squared term.
2.  Subtract the constant term from both sides.
3.  Add the square of one-half of , the coefficient of , to both sides. This "completes the square", converting the left side into a perfect square.
4.  Write the left side as a square and simplify the right side if necessary.
5.  Produce two linear equations by equating the square root of the left side with the positive and negative square roots of the right side.
6.  Solve the two linear equations.

We illustrate use of this algorithm by solving 0}}

1) _x_² + 2_x_ − 2 = 0

2) _x_² + 2_x_ = 2

3) _x_² + 2_x_ + 1 = 2 + 1

4) (_x_+1)² = 3

$$5) \ x+1=\pm\sqrt{3}$$

$$6) \ x=-1\pm\sqrt{3}$$

The plus-minus symbol "±" indicates that both −1 + }} and −1 − }} are solutions of the quadratic equation.[6]

Quadratic formula and its derivation

Completing the square can be used to derive a general formula for solving quadratic equations, called the quadratic formula.[7] The mathematical proof will now be briefly summarized.[8] It can easily be seen, by polynomial expansion, that the following equation is equivalent to the quadratic equation:

$$\left(x+\frac{b}{2a}\right)^2=\frac{b^2-4ac}{4a^2}.$$
Taking the square root of both sides, and isolating , gives:

$$x=\frac{-b\pm\sqrt{b^2-4ac\ }}{2a}.$$

Some sources, particularly older ones, use alternative parameterizations of the quadratic equation such as _0_}} or 0}} ,[9] where has a magnitude one half of the more common one, possibly with opposite sign. These result in slightly different forms for the solution, but are otherwise equivalent.

A number of alternative derivations can be found in the literature. These proofs are simpler than the standard completing the square method, represent interesting applications of other frequently used techniques in algebra, or offer insight into other areas of mathematics.

A lesser known quadratic formula, as used in Muller's method provides the same roots via the equation

$$x = \frac{2c}{-b \pm \sqrt {b^2-4ac\ }}.$$
This can be deduced from the standard quadratic formula by Vieta's formulas, which assert that the product of the roots is .

One property of this form is that it yields one valid root when 0}}, while the other root contains division by zero, because when 0}}, the quadratic equation becomes a linear equation, which has one root. By contrast, in this case, the more common formula has a division by zero for one root and an indeterminate form for the other root. On the other hand, when 0}}, the more common formula yields two correct roots whereas this form yields the zero root and an indeterminate form .

Reduced quadratic equation

It is sometimes convenient to reduce a quadratic equation so that its leading coefficient is one. This is done by dividing both sides by _a_, which is always possible since _a_ is non-zero. This produces the _reduced quadratic equation_:[10]

_x_² + _p__x_ + _q_ = 0,

where _p_ = _b_/_a_ and _q_ = _c_/_a_. This monic equation has the same solutions as the original.

The quadratic formula for the solutions of the reduced quadratic equation, written in terms of its coefficients, is:

$$x = \frac{1}{2} \left( - p \pm \sqrt{p^2 - 4q} \right) ,$$
or equivalently:

$$x = - \frac{p}{2} \pm \sqrt{\left(\frac{p}{2}\right)^2 - q}.$$

Discriminant

Quadratic_eq_discriminant.svg In the quadratic formula, the expression underneath the square root sign is called the _discriminant_ of the quadratic equation, and is often represented using an upper case or an upper case Greek delta:[11]

_Δ_ = _b_² − 4_a__c_.
A quadratic equation with _real_ coefficients can have either one or two distinct real roots, or two distinct complex roots. In this case the discriminant determines the number and nature of the roots. There are three cases:

-   If the discriminant is positive, then there are two distinct roots

$$\frac{-b + \sqrt {\Delta}}{2a} \quad\text{and}\quad \frac{-b - \sqrt {\Delta}}{2a},$$

    both of which are real numbers. For quadratic equations with rational coefficients, if the discriminant is a square number, then the roots are rational—in other cases they may be quadratic irrationals.

-   If the discriminant is zero, then there is exactly one real root

$$-\frac{b}{2a},$$

    sometimes called a repeated or double root.

-   If the discriminant is negative, then there are no real roots. Rather, there are two distinct (non-real) complex roots[12]

$$-\frac{b}{2a} + i \frac{\sqrt {-\Delta}}{2a} \quad\text{and}\quad -\frac{b}{2a} - i \frac{\sqrt {-\Delta}}{2a},$$

    which are complex conjugates of each other. In these expressions is the imaginary unit.

Thus the roots are distinct if and only if the discriminant is non-zero, and the roots are real if and only if the discriminant is non-negative.

Geometric interpretation

The function _ax_² + _bx_ + _c_}} is the quadratic function.[13] The graph of any quadratic function has the same general shape, which is called a parabola. The location and size of the parabola, and how it opens, depend on the values of , , and . As shown in Figure 1, if , the parabola has a minimum point and opens upward. If , the parabola has a maximum point and opens downward. The extreme point of the parabola, whether minimum or maximum, corresponds to its vertex. The _-coordinate_ of the vertex will be located at $\scriptstyle x=\tfrac{-b}{2a}$, and the _-coordinate_ of the vertex may be found by substituting this _-value_ into the function. The _-intercept_ is located at the point .

The solutions of the quadratic equation 0}} correspond to the roots of the function _ax_² + _bx_ + _c_}}, since they are the values of for which 0}}. As shown in Figure 2, if , , and are real numbers and the domain of is the set of real numbers, then the roots of are exactly the -coordinates of the points where the graph touches the -axis. As shown in Figure 3, if the discriminant is positive, the graph touches the [[x-axis|{2a} \right) \left( x - \frac{-b - \sqrt {b^2-4ac}}{2a} \right). In the special case 4_ac_}} where the quadratic has only one distinct root (_i.e._ the discriminant is zero), the quadratic polynomial can be factored as

$$ax^2+bx+c = a \left( x + \frac{b}{2a} \right)^2.$$

Graphical solution

Graphical_calculation_of_root_of_quadratic_equation.png Visual.complex.root.finding.png

The solutions of the quadratic equation

_a__x_² + _b__x_ + _c_ = 0
may be deduced from the graph of the quadratic function

_y_ = _a__x_² + _b__x_ + _c_,
which is a parabola.

If the parabola intersects the -axis in two points, there are two real roots, which are the -coordinates of these two points (also called -intercept).

If the parabola is tangent to the -axis, there is a double root, which is the -coordinate of the contact point between the graph and parabola.

If the parabola does not intersect the -axis, there are two complex conjugate roots. Although these roots cannot be visualized on the graph, their real and imaginary parts can be.[14]

Let and be respectively the -coordinate and the -coordinate of the vertex of the parabola (that is the point with maximal or minimal -coordinate. The quadratic function may be rewritten

    y = a(x − h)² + k.

Let be the distance between the point of -coordinate on the axis of the parabola, and a point on the parabola with the same -coordinate (see the figure; there are two such points, which give the same distance, because of the symmetry of the parabola). Then the real part of the roots is , and their imaginary part are . That is, the roots are

_h_ + _i__d_ and _x_ − _i__d_,
or in the case of the example of the figure

5 + 3_i_ and 5 − 3_i_.

Avoiding loss of significance

Although the quadratic formula provides an exact solution, the result is not exact if real numbers are approximated during the computation, as usual in numerical analysis, where real numbers are approximated by floating point numbers (called "reals" in many programming languages). In this context, the quadratic formula is not completely stable.

This occurs when the roots have different order of magnitude, or, equivalently, when and are close in magnitude. In this case, the subtraction of two nearly equal numbers will cause loss of significance or catastrophic cancellation in the smaller root. To avoid this, the root that is smaller in magnitude, , can be computed as (c/a)/R where is the root that is bigger in magnitude.

A second form of cancellation can occur between the terms and of the discriminant, that is when the two roots are very close. This can lead to loss of up to half of correct significant figures in the roots.[15][16]


Examples and applications

La_Jolla_Cove_cliff_diving_-_02.jpg because horizontal displacement is a linear function of time x = v_(x)t, while vertical displacement is a quadratic function of time $y=\tfrac{1}{2} at^2+v_y t+h$. As a result, the path follows quadratic equation $y=\tfrac{a}{2v_x^2} x^2+\tfrac{v_y}{v_x} x+h$, where v_(x) and v_(y) are horizontal and vertical components of the original velocity, is gravitational acceleration and is original height. The value should be considered negative here, as its direction (downwards) is opposite to the height measurement (upwards).]] The golden ratio is found as the positive solution of the quadratic equation x² − x − 1 = 0.

The equations of the circle and the other conic sections—ellipses, parabolas, and hyperbolas—are quadratic equations in two variables.

Given the cosine or sine of an angle, finding the cosine or sine of the angle that is half as large involves solving a quadratic equation.

The process of simplifying expressions involving the square root of an expression involving the square root of another expression involves finding the two solutions of a quadratic equation.

Descartes' theorem states that for every four kissing (mutually tangent) circles, their radii satisfy a particular quadratic equation.

The equation given by Fuss' theorem, giving the relation among the radius of a bicentric quadrilateral's inscribed circle, the radius of its circumscribed circle, and the distance between the centers of those circles, can be expressed as a quadratic equation for which the distance between the two circles' centers in terms of their radii is one of the solutions. The other solution of the same equation in terms of the relevant radii gives the distance between the circumscribed circle's center and the center of the excircle of an ex-tangential quadrilateral.


History

Babylonian mathematicians, as early as 2000 BC (displayed on Old Babylonian clay tablets) could solve problems relating the areas and sides of rectangles. There is evidence dating this algorithm as far back as the Third Dynasty of Ur.[17] In modern notation, the problems typically involved solving a pair of simultaneous equations of the form:

_x_ + _y_ = _p_,  _x__y_ = _q_,
which is equivalent to the statement that and are the roots of the equation:[18]

_z_² + _q_ = _p__z_.

The steps given by Babylonian scribes for solving the above rectangle problem, in terms of and , were as follows:

1.  Compute half of _p_.
2.  Square the result.
3.  Subtract _q_.
4.  Find the (positive) square root using a table of squares.
5.  Add together the results of steps (1) and (4) to give . In modern notation this means calculating $x = \frac{p}{2} + \sqrt{\left(\frac{p}{2}\right)^2 - q}.$

Geometric methods were used to solve quadratic equations in Babylonia, Egypt, Greece, China, and India. The Egyptian Berlin Papyrus, dating back to the Middle Kingdom (2050 BC to 1650 BC), contains the solution to a two-term quadratic equation.[19] Babylonian mathematicians from circa 400 BC and Chinese mathematicians from circa 200 BC used geometric methods of dissection to solve quadratic equations with positive roots.[20][21] Rules for quadratic equations were given in _The Nine Chapters on the Mathematical Art_, a Chinese treatise on mathematics.[22][23] These early geometric methods do not appear to have had a general formula. Euclid, the Greek mathematician, produced a more abstract geometrical method around 300 BC. With a purely geometric approach Pythagoras and Euclid created a general procedure to find solutions of the quadratic equation. In his work _Arithmetica_, the Greek mathematician Diophantus solved the quadratic equation, but giving only one root, even when both roots were positive.[24]

In 628 AD, Brahmagupta, an Indian mathematician, gave the first explicit (although still not completely general) solution of the quadratic equation _c_}} as follows: "To the absolute number multiplied by four times the [coefficient of the] square, add the square of the [coefficient of the] middle term; the square root of the same, less the [coefficient of the] middle term, being divided by twice the [coefficient of the] square is the value." (_Brahmasphutasiddhanta_, Colebrook translation, 1817, page 346)[25] This is equivalent to:

$$x = \frac{\sqrt{4ac+b^2}-b}{2a}.$$
The _Bakhshali Manuscript_ written in India in the 7th century AD contained an algebraic formula for solving quadratic equations, as well as quadratic indeterminate equations (originally of type _y_}}). Muhammad ibn Musa al-Khwarizmi (Persia, 9th century), inspired by Brahmagupta, developed a set of formulas that worked for positive solutions. Al-Khwarizmi goes further in providing a full solution to the general quadratic equation, accepting one or two numerical answers for every quadratic equation, while providing geometric proofs in the process.[26] He also described the method of completing the square and recognized that the discriminant must be positive,[27][28] which was proven by his contemporary 'Abd al-Hamīd ibn Turk (Central Asia, 9th century) who gave geometric figures to prove that if the discriminant is negative, a quadratic equation has no solution.[29] While al-Khwarizmi himself did not accept negative solutions, later Islamic mathematicians that succeeded him accepted negative solutions,[30] as well as irrational numbers as solutions.[31] Abū Kāmil Shujā ibn Aslam (Egypt, 10th century) in particular was the first to accept irrational numbers (often in the form of a square root, cube root or fourth root) as solutions to quadratic equations or as coefficients in an equation.[32] The 9th century Indian mathematician Sridhara wrote down rules for solving quadratic equations.[33]

The Jewish mathematician Abraham bar Hiyya Ha-Nasi (12th century, Spain) authored the first European book to include the full solution to the general quadratic equation.[34] His solution was largely based on Al-Khwarizmi's work.[35] The writing of the Chinese mathematician Yang Hui (1238–1298 AD) is the first known one in which quadratic equations with negative coefficients of 'x' appear, although he attributes this to the earlier Liu Yi.[36] By 1545 Gerolamo Cardano compiled the works related to the quadratic equations. The quadratic formula covering all cases was first obtained by Simon Stevin in 1594.[37] In 1637 René Descartes published _La Géométrie_ containing the quadratic formula in the form we know today. The first appearance of the general solution in the modern mathematical literature appeared in an 1896 paper by Henry Heaton.[38]


Advanced topics

Alternative methods of root calculation

Vieta's formulas

Excel_quadratic_error.PNG

Vieta's formulas give a simple relation between the roots of a polynomial and its coefficients. In the case of the quadratic polynomial, they take the following form:

$$x_1 + x_2 = -\frac{b}{a}$$
and

$$x_1 \ x_2 = \frac{c}{a}.$$
These results follow immediately from the relation:

(_x_−_x_₁) (_x_−_x_₂) = _x_²  − (_x_₁+_x_₂)_x_ + _x_₁_x_₂ = 0,
which can be compared term by term with

_x_² + (_b_/_a_)_x_ + _c_/_a_ = 0.
The first formula above yields a convenient expression when graphing a quadratic function. Since the graph is symmetric with respect to a vertical line through the vertex, when there are two real roots the vertex's -coordinate is located at the average of the roots (or intercepts). Thus the -coordinate of the vertex is given by the expression

$$x_V = \frac {x_1 + x_2} {2} = -\frac{b}{2a}.$$
The -coordinate can be obtained by substituting the above result into the given quadratic equation, giving

$$y_V = - \frac{b^2}{4a} + c = - \frac{ b^2 - 4ac} {4a}.$$

As a practical matter, Vieta's formulas provide a useful method for finding the roots of a quadratic in the case where one root is much smaller than the other. If  _x_ ₂{{!}} << {{!}} _x_ ₁{{!}}}}, then , and we have the estimate:

$$x_1 \approx -\frac{b}{a} .$$
The second Vieta's formula then provides:

$$x_2 = \frac{c}{a \ x_1} \approx -\frac{c}{b} .$$
These formulas are much easier to evaluate than the quadratic formula under the condition of one large and one small root, because the quadratic formula evaluates the small root as the difference of two very nearly equal numbers (the case of large ), which causes round-off error in a numerical evaluation. Figure 5 shows the difference between (i) a direct evaluation using the quadratic formula (accurate when the roots are near each other in value) and (ii) an evaluation based upon the above approximation of Vieta's formulas (accurate when the roots are widely spaced). As the linear coefficient increases, initially the quadratic formula is accurate, and the approximate formula improves in accuracy, leading to a smaller difference between the methods as increases. However, at some point the quadratic formula begins to lose accuracy because of round off error, while the approximate method continues to improve. Consequently, the difference between the methods begins to increase as the quadratic formula becomes worse and worse.

This situation arises commonly in amplifier design, where widely separated roots are desired to ensure a stable operation (see step response).

Trigonometric solution

In the days before calculators, people would use mathematical tables—lists of numbers showing the results of calculation with varying arguments—to simplify and speed up computation. Tables of logarithms and trigonometric functions were common in math and science textbooks. Specialized tables were published for applications such as astronomy, celestial navigation and statistics. Methods of numerical approximation existed, called prosthaphaeresis, that offered shortcuts around time-consuming operations such as multiplication and taking powers and roots.[39] Astronomers, especially, were concerned with methods that could speed up the long series of computations involved in celestial mechanics calculations.

It is within this context that we may understand the development of means of solving quadratic equations by the aid of trigonometric substitution. Consider the following alternate form of the quadratic equation,

[1]   ax² + bx ± c = 0,

where the sign of the ± symbol is chosen so that and may both be positive. By substituting

[2]   $x = \sqrt{c/a} \tan\theta$

and then multiplying through by , we obtain

[3]   $\sin^2\theta + \frac{b}{\sqrt {ac}} \sin\theta  \cos\theta \pm \cos^2\theta = 0 .$

Introducing functions of and rearranging, we obtain

[4]   $\tan 2 \theta_n = + 2 \frac{\sqrt{ac}}{b} ,$

[5]   $\sin 2 \theta_p = - 2 \frac{\sqrt{ac}}{b} ,$

where the subscripts and correspond, respectively, to the use of a negative or positive sign in equation [1]. Substituting the two values of or found from equations [4] or [5] into [2] gives the required roots of [1]. Complex roots occur in the solution based on equation [5] if the absolute value of exceeds unity. The amount of effort involved in solving quadratic equations using this mixed trigonometric and logarithmic table look-up strategy was two-thirds the effort using logarithmic tables alone.[40] Calculating complex roots would require using a different trigonometric form.[41]

    To illustrate, let us assume we had available seven-place logarithm and trigonometric tables, and wished to solve the following to six-significant-figure accuracy:
    4.16130_x_² + 9.15933_x_ − 11.4207 = 0

1.  A seven-place lookup table might have only 100,000 entries, and computing intermediate results to seven places would generally require interpolation between adjacent entries.
2.  log a = 0.6192290, log b = 0.9618637, log c = 1.0576927
3.  $2 \sqrt{ac}/b = 2 \times 10^{(0.6192290 + 1.0576927)/2 - 0.9618637} = 1.505314$
4.  θ = (tan^( − 1)1.505314)/2 = 28.20169^(∘) or  − 61.79831^(∘)
5.  log |tan θ| =  − 0.2706462 or 0.2706462
6.  $\log\sqrt{c/a} = (1.0576927 - 0.6192290) / 2 = 0.2192318$
7.  x₁ = 10^(0.2192318 − 0.2706462) = 0.888353 (rounded to six significant figures)

_x_₂ =  − 10^(0.2192318 + 0.2706462) =  − 3.08943

Solution for complex roots in polar coordinates

If the quadratic equation ax² + bx + c = 0 with real coefficients has two complex roots—the case where b² − 4ac < 0, requiring _a_ and _c_ to have the same sign as each other—then the solutions for the roots can be expressed in polar form as[42]

_x_₁, _x_₂ = _r_(cos _θ_ ± _i_sin _θ_),

where $r=\sqrt{\tfrac{c}{a}}$ and $\theta =\cos ^{-1}\left(\tfrac{-b}{2\sqrt{ac}}\right).$

Geometric solution

LillsQuadratic.svg

The quadratic equation may be solved geometrically in a number of ways. One way is via Lill's method. The three coefficients , , are drawn with right angles between them as in SA, AB, and BC in Figure 6. A circle is drawn with the start and end point SC as a diameter. If this cuts the middle line AB of the three then the equation has a solution, and the solutions are given by negative of the distance along this line from A divided by the first coefficient or SA. If is the coefficients may be read off directly. Thus the solutions in the diagram are −AX1/SA and −AX2/SA.[43]

CarlyleCircle.svg The Carlyle circle, named after Thomas Carlyle, has the property that the solutions of the quadratic equation are the horizontal coordinates of the intersections of the circle with the horizontal axis.[44] Carlyle circles have been used to develop ruler-and-compass constructions of regular polygons.

Alternative quadratic formula

The general quadratic equation can be written in the standard form

_x_² − 4_u__x_ + 4_v_² = 0
where and are complex numbers. Then the solutions can be written in the particularly symmetric form

$$x_{1,2}=(\sqrt{u+v}\pm\sqrt{u-v})^2$$
or equivalently

$$x_{1,2}=(\sqrt{u-v}\pm\sqrt{u+v})^2.$$
The correctness of the formula can easily be verified by inserting the expression into the equation. This formula has the advantage that it is numerically more stable than the classical quadratic formula. It appeared in.[45] Problems originating from physics or geometry often present themselves in the homogeneous standard form on which the alternative formula is based. In particular, René Descartes' first example in _La Géométrie_, at the very hour of birth of the quadratic formula, was geometric and of this particular homogeneous form.

Generalization of quadratic equation

The formula and its derivation remain correct if the coefficients , and are complex numbers, or more generally members of any field whose characteristic is not . (In a field of characteristic 2, the element is zero and it is impossible to divide by it.)

The symbol

$$\pm \sqrt {b^2-4ac}$$
in the formula should be understood as "either of the two elements whose square is , if such elements exist". In some fields, some elements have no square roots and some have two; only zero has just one square root, except in fields of characteristic . Even if a field does not contain a square root of some number, there is always a quadratic extension field which does, so the quadratic formula will always make sense as a formula in that extension field.

Characteristic 2

In a field of characteristic , the quadratic formula, which relies on being a unit, does not hold. Consider the monic quadratic polynomial

_x_² + _b__x_ + _c_
over a field of characteristic . If 0}}, then the solution reduces to extracting a square root, so the solution is

$$x = \sqrt{c}$$
and there is only one root since

$$-\sqrt{c} = -\sqrt{c} + 2\sqrt{c} = \sqrt{c}.$$
In summary,

$$\displaystyle x^{2} + c = (x + \sqrt{c})^{2}.$$
See quadratic residue for more information about extracting square roots in finite fields.

In the case that , there are two distinct roots, but if the polynomial is irreducible, they cannot be expressed in terms of square roots of numbers in the coefficient field. Instead, define the 2-ROOT of to be a root of the polynomial , an element of the splitting field of that polynomial. One verifies that is also a root. In terms of the 2-root operation, the two roots of the (non-monic) quadratic are

$$\frac{b}{a}R\left(\frac{ac}{b^2}\right)$$
and

$$\frac{b}{a}\left(R\left(\frac{ac}{b^2}\right)+1\right).$$

For example, let denote a multiplicative generator of the group of units of , the Galois field of order four (thus and are roots of over . Because _a_}}, is the unique solution of the quadratic equation 0}}. On the other hand, the polynomial is irreducible over , but it splits over , where it has the two roots and , where is a root of in .

This is a special case of Artin–Schreier theory.


See also

-   Chakravala method
-   Completing the square
-   Cubic function
-   Fundamental theorem of algebra
-   Linear equation
-   Parabola
-   Periodic points of complex quadratic mappings
-   Quadratic function
-   Quadratic polynomial
-   Quartic function
-   Quintic function
-   Solving quadratic equations with continued fractions


References


External links

-   -   -   101 uses of a quadratic equation
-   101 uses of a quadratic equation: Part II

Category:Elementary algebra Category:Equations

[1] Protters & Morrey: "Calculus and Analytic Geometry. First Course".

[2]

[3] .

[4]

[5]

[6]

[7] , Chapter 13 §4.4, p. 291

[8] Himonas, Alex. _Calculus for Business and Social Sciences_, p. 64 (Richard Dennis Publications, 2001).

[9]

[10] Alenit͡syn, Aleksandr and Butikov, Evgeniĭ. _Concise Handbook of Mathematics and Physics_, p. 38 (CRC Press 1997)

[11] Δ is the initial of the Greek word Διακρίνουσα, _Diakrínousa_, discriminant.

[12]

[13]

[14]

[15]

[16]

[17]

[18]

[19]

[20]

[21]

[22]

[23]

[24]  Extract of page 134

[25]

[26]

[27]

[28]

[29]

[30]

[31]  "Algebra was a unifying theory which allowed rational numbers, irrational numbers, geometrical magnitudes, etc., to all be treated as "algebraic objects"."

[32] Jacques Sesiano, "Islamic mathematics", p. 148, in

[33]

[34]

[35]

[36]

[37]

[38]

[39]

[40]

[41]

[42] Simons, Stuart, "Alternative approach to complex roots of real quadratic equations", _Mathematical Gazette_ 93, March 2009, 91–92.

[43]

[44]

[45]