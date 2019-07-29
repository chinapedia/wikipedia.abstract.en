Complex_number_illustration.svg, representing the complex plane. "Re" is the real axis, "Im" is the imaginary axis, and satisfies .]]

A COMPLEX NUMBER is a number that can be expressed in the form , where and are real numbers, and is a solution of the equation . Because no real number satisfies this equation, is called an imaginary number. For the complex number , is called the , and is called the . Despite the historical nomenclature "imaginary", complex numbers are regarded in the mathematical sciences as just as "real" as the real numbers, and are fundamental in many aspects of the scientific description of the natural world.[1]

Complex numbers allow solutions to certain equations that have no solutions in real numbers. For example, the equation

(_x_ + 1)² =  − 9
has no real solution, since the square of a real number cannot be negative. Complex numbers provide a solution to this problem. The idea is to extend the real numbers with an indeterminate (sometimes called the imaginary unit) that is taken to satisfy the relation , so that solutions to equations like the preceding one can be found. In this case the solutions are and , as can be verified using the fact that :

(( − 1 + 3_i_) + 1)² = (3_i_)² = (3²)(_i_²) = 9( − 1) =  − 9,

(( − 1 − 3_i_) + 1)² = ( − 3_i_)² = ( − 3)²(_i_²) = 9( − 1) =  − 9.

According to the fundamental theorem of algebra, all polynomial equations with real or complex coefficients in a single variable have a solution in complex numbers. In contrast, some polynomial equations with real coefficients have no solution in real numbers. The 16th century Italian mathematician Gerolamo Cardano is credited with introducing complex numbers in his attempts to find solutions to cubic equations.[2]

Formally, the complex number system can be defined as the algebraic extension of the ordinary real numbers by an imaginary number .[3] This means that complex numbers can be added, subtracted, and multiplied, as polynomials in the variable , with the rule −1}} imposed. Furthermore, complex numbers can also be divided by nonzero complex numbers. Overall, the complex number system is a field.

Geometrically, complex numbers extend the concept of the one-dimensional number line to the two-dimensional complex plane by using the horizontal axis for the real part and the vertical axis for the imaginary part. The complex number can be identified with the point in the complex plane. A complex number whose real part is zero is said to be purely imaginary; the points for these numbers lie on the vertical axis of the complex plane. A complex number whose imaginary part is zero can be viewed as a real number; its point lies on the horizontal axis of the complex plane. Complex numbers can also be represented in polar form, which associates each complex number with its distance from the origin (its magnitude) and with a particular angle known as the argument of this complex number.

The geometric identification of the complex numbers with the complex plane, which is a Euclidean plane (ℝ²), makes their structure as a real 2-dimensional vector space evident. Real and imaginary parts of a complex number may be taken as components of a vector with respect to the canonical standard basis. The addition of complex numbers is thus immediately depicted as the usual component-wise addition of vectors. However, the complex numbers allow for a richer algebraic structure, comprising additional operations, that are not necessarily available in a vector space; e.g., the multiplication of two complex numbers always yields again a complex number, and should not be mistaken for the usual "products" involving vectors, like the _scalar multiplication_, the _scalar product_ or other (sesqui)linear forms, available in many vector spaces; and the broadly exploited _vector product_ exists only in an orientation-dependent form in three dimensions.


Definition

Complex_conjugate_picture.svg. The real part of a complex number is , and its imaginary part is .]]

Based on the concept of real numbers, a complex number is a number of the form , where and are real numbers and is an indeterminate satisfying . For example, is a complex number.[4]

This way, a complex number is defined as a polynomial with real coefficients in the single indeterminate , for which the relation 0}} is imposed. Based on this definition, complex numbers can be added and multiplied, using the addition and multiplication for polynomials. The relation 0}} induces the equalities 1 , _i_^(4_k_+1) {{=}} _i_ , _i_^(4_k_+2) {{=}} −1 ,}} and −i ,}} which hold for all integers these allow the reduction of any polynomial that results from the addition and multiplication of complex numbers to a linear polynomial in , again of the form with real coefficients

The real number is called the _real part_ of the complex number ; the real number is called its _imaginary part_. To emphasize, the imaginary part does not include a factor and , not , is the imaginary part.[5][6]

Formally, the complex numbers are defined as the quotient ring of the polynomial ring in the indeterminate , by the ideal generated by the polynomial (see below).[7]


Notation

A real number can be regarded as a complex number whose imaginary part is 0. A purely imaginary number is a complex number whose real part is zero. As with polynomials, it is common to write for and for . Moreover, when the imaginary part is negative, i.e., −_{{!}}b{{!}}_ < 0,}} it is common to write b{{!}}i_}} instead of b{{!}}_)_i_}}; for example, for −4,}} can be written instead of

Since in polynomials with real coefficients the multiplication of the indeterminate and a real is commutative, the polynomial may be written as This is often expedient for imaginary parts denoted by expressions, e.g., when is a radical.[8]

The real part of a complex number is denoted by or ; the imaginary part of a complex number is denoted by or . For example,

Re (2 + 3_i_) = 2 
and  Im (2 + 3i) = 3.

The set of all complex numbers is denoted by C (upright bold) or ℂ (blackboard bold).

In some disciplines, in particular electromagnetism and electrical engineering, is used instead of since is frequently used to represent electric current.[9] In these cases complex numbers are written as or .


Visualisation

A_plus_bi.svg

A complex number can thus be identified with an ordered pair of real numbers, which in turn may be interpreted as coordinates of a point in a two-dimensional space. The most immediate space is the Euclidean plane with suitable coordinates, which is then called COMPLEX PLANE or ARGAND DIAGRAM,[10][11] named after Jean-Robert Argand. Another prominent space on which the coordinates may be projected is the two-dimensional surface of a sphere, which is then called Riemann sphere.

Cartesian complex plane

The definition of the complex numbers involving two arbitrary real values immediately suggest the use of Cartesian coordinates in the complex plane. The horizontal (_real_) axis is generally used to display the real part with increasing values to the right and the imaginary part marks the vertical (_imaginary_) axis, increasing values upwards.

A charted number may be either viewed as the coordinatized point, or as a position vector from the origin to this point. The coordinate values of a complex number are said to give its _Cartesian_, _rectangular_, or _algebraic_ form.

Notably, the operations of addition and multiplication take on a very natural geometric character when complex numbers are viewed as position vectors: addition corresponds to vector addition, while multiplication (see below) corresponds to multiplying their magnitudes and adding the angles they make with the real axis. Viewed in this way the multiplication of a complex number by corresponds to rotating the position vector counterclockwise by a quarter turn (90°) about the origin

    (a + bi) ⋅ i = ai + b(i)² =  − b + ai.

Polar complex plane

Complex_number_illustration_modarg.svg

Modulus and argument

An alternative option for coordinates in the complex plane is the polar coordinate system that uses the distance of the point from the origin (_O_), and the angle subtended between the positive real axis and the line segment _Oz_ in a counterclockwise sense. This leads to the polar form of complex numbers.

The _absolute value_ (or _modulus_ or _magnitude_) of a complex number is[12]

$$r=|z|=\sqrt{x^2+y^2}.$$
If is a real number (that is, if ), then _x_{{!}}}}. That is, the absolute value of a real number equals its absolute value as a complex number.

By Pythagoras' theorem, the absolute value of complex number is the distance to the origin of the point representing the complex number in the complex plane.

The _argument_ of (in many applications referred to as the "phase" ) is the angle of the radius _Oz_ with the positive real axis, and is written as arg (z). As with the modulus, the argument can be found from the rectangular form x + yi[13] by applying the inverse tangent to the quotient of imaginary-by-real parts. By using a half-angle identity a single branch of the arctan suffices to cover the range of the -function, , and avoids a more subtle case-by-case analysis

$$\varphi = \arg (x+yi) = \begin{cases}
   2 \arctan\left(\dfrac{y}{\sqrt{x^2 + y^2} + x}\right) &\text{if } x > 0 \text{ or } y \neq 0, \\
   \pi &\text{if } x < 0 \text{ and } y = 0, \\
   \text{undefined} &\text{if } x = 0 \text{ and } y = 0.
 \end{cases}$$

Normally, as given above, the principal value in the interval is chosen. Values in the range are obtained by adding if the value is negative. The value of is expressed in radians in this article. It can increase by any integer multiple of and still give the same angle, viewed as subtended by the rays of the positive real axis and from the origin through _z_. Hence, the arg function is sometimes considered as multivalued. The polar angle for the complex number 0 is indeterminate, but arbitrary choice of the angle 0 is common.

The value of equals the result of atan2:

_φ_ = atan2 (Im(_z_),Re(_z_)).

Together, and give another way of representing complex numbers, the _polar form_, as the combination of modulus and argument fully specify the position of a point on the plane. Recovering the original rectangular co-ordinates from the polar form is done by the formula called _trigonometric form_

_z_ = _r_(cos _φ_ + _i_sin _φ_).

Using Euler's formula this can be written as

_z_ = _r__e_^(_i__φ_).

Using the cis function, this is sometimes abbreviated to

_z_ = _r_cis _φ_.

In angle notation, often used in electronics to represent a phasor with amplitude and phase , it is written as[14]

_z_ = _r_∠_φ_.

Complex graphs

A color wheel graph of the expression When visualizing complex functions, both a complex input and output are needed. Because each complex number is represented in two dimensions, visually graphing a complex function would require the perception of a four dimensional space, which is possible only in projections. Because of this, other ways of visualizing complex functions have been designed.

In Domain coloring the output dimensions are represented by color and brightness, respectively. Each point in the complex plane as domain is _ornated_, typically with _color_ representing the argument of the complex number, and _brightness_ representing the magnitude. Dark spots mark moduli near zero, brighter spots are farther away from the origin, the gradation may be discontinuous, but is assumed as monotonous. The colors often vary in steps of for to from red, yellow, green, cyan, blue, to magenta. These plots are called color wheel graphs. This provides a simple way to visualize the functions without losing information. The picture shows zeros for and poles at

Riemann surfaces are another way to visualize complex functions. Riemann surfaces can be thought of as deformations of the complex plane; while the horizontal axes represent the real and imaginary inputs, the single vertical axis only represents either the real or imaginary output. However, Riemann surfaces are built in such a way that rotating them 180 degrees shows the imaginary output, and vice versa. Unlike domain coloring, Riemann surfaces can represent multivalued functions like $\sqrt{z}$.


History

The solution in radicals (without trigonometric functions) of a general cubic equation contains the square roots of negative numbers when all three roots are real numbers, a situation that cannot be rectified by factoring aided by the rational root test if the cubic is irreducible (the so-called casus irreducibilis). This conundrum led Italian mathematician Gerolamo Cardano to conceive of complex numbers in around 1545,[15] though his understanding was rudimentary.

Work on the problem of general polynomials ultimately led to the fundamental theorem of algebra, which shows that with complex numbers, a solution exists to every polynomial equation of degree one or higher. Complex numbers thus form an algebraically closed field, where any polynomial equation has a root.

Many mathematicians contributed to the full development of complex numbers. The rules for addition, subtraction, multiplication, and root extraction of complex numbers were developed by the Italian mathematician Rafael Bombelli.[16] A more abstract formalism for the complex numbers was further developed by the Irish mathematician William Rowan Hamilton, who extended this abstraction to the theory of quaternions.

The earliest fleeting reference to square roots of negative numbers can perhaps be said to occur in the work of the Greek mathematician Hero of Alexandria in the 1st century AD, where in his _Stereometrica_ he considers, apparently in error, the volume of an impossible frustum of a pyramid to arrive at the term $\sqrt{81 - 144} = 3i\sqrt{7}$ in his calculations, although negative quantities were not conceived of in Hellenistic mathematics and Hero merely replaced it by its positive ($\sqrt{144 - 81} = 3\sqrt{7}$).[17]

The impetus to study complex numbers as a topic in itself first arose in the 16th century when algebraic solutions for the roots of cubic and quartic polynomials were discovered by Italian mathematicians (see Niccolò Fontana Tartaglia, Gerolamo Cardano). It was soon realized that these formulas, even if one was only interested in real solutions, sometimes required the manipulation of square roots of negative numbers. As an example, Tartaglia's formula for a cubic equation of the form x³ = px + q + \sqrt[3]{q/2 - \sqrt{(q/2)^2-(p/3)^3}}. When (q/2)² − (p/3)³ is negative (casus irreducibilis), the second cube root should be regarded as the complex conjugate of the first one.}} gives the solution to the equation as

$$\tfrac{1}{\sqrt{3}}\left(\left(\sqrt{-1}\right)^{1/3}+\left(\sqrt{-1}\right)^{-1/3}\right).$$

At first glance this looks like nonsense. However formal calculations with complex numbers show that the equation has solutions , ${\tfrac{\sqrt{3}}{2}}+{\tfrac{1}{2}}i$ and ${\tfrac{-\sqrt{3}}{2}}+{\tfrac{1}{2}}i$. Substituting these in turn for ${\sqrt{-1}^{1/3}}$ in Tartaglia's cubic formula and simplifying, one gets 0, 1 and −1 as the solutions of . Of course this particular equation can be solved at sight but it does illustrate that when general formulas are used to solve cubic equations with real roots then, as later mathematicians showed rigorously, the use of complex numbers is unavoidable. Rafael Bombelli was the first to explicitly address these seemingly paradoxical solutions of cubic equations and developed the rules for complex arithmetic trying to resolve these issues.

The term "imaginary" for these quantities was coined by René Descartes in 1637, although he was at pains to stress their imaginary nature[18] A further source of confusion was that the equation $\sqrt{-1}^2=\sqrt{-1}\sqrt{-1}=-1$ seemed to be capriciously inconsistent with the algebraic identity $\sqrt{a}\sqrt{b}=\sqrt{ab}$, which is valid for non-negative real numbers and , and which was also used in complex number calculations with one of , positive and the other negative. The incorrect use of this identity (and the related identity $\tfrac{1}{\sqrt{a}}=\sqrt{\tfrac{1}{a}}$) in the case when both and are negative even bedeviled Euler. This difficulty eventually led to the convention of using the special symbol in place of to guard against this mistake. Even so, Euler considered it natural to introduce students to complex numbers much earlier than we do today. In his elementary algebra text book, Elements of Algebra, he introduces these numbers almost at once and then uses them in a natural way throughout.

In the 18th century complex numbers gained wider use, as it was noticed that formal manipulation of complex expressions could be used to simplify calculations involving trigonometric functions. For instance, in 1730 Abraham de Moivre noted that the complicated identities relating trigonometric functions of an integer multiple of an angle to powers of trigonometric functions of that angle could be simply re-expressed by the following well-known formula which bears his name, de Moivre's formula:

(cos _θ_ + _i_sin _θ_)^(_n_) = cos _n__θ_ + _i_sin _n__θ_.

In 1748 Leonhard Euler went further and obtained Euler's formula of complex analysis:

cos _θ_ + _i_sin _θ_ = _e_^(_i__θ_)

by formally manipulating complex power series and observed that this formula could be used to reduce any trigonometric identity to much simpler exponential identities.

The idea of a complex number as a point in the complex plane (above) was first described by Caspar Wessel in 1799, although it had been anticipated as early as 1685 in Wallis's _De Algebra tractatus_.

Wessel's memoir appeared in the Proceedings of the Copenhagen Academy but went largely unnoticed. In 1806 Jean-Robert Argand independently issued a pamphlet on complex numbers and provided a rigorous proof of the fundamental theorem of algebra. Carl Friedrich Gauss had earlier published an essentially topological proof of the theorem in 1797 but expressed his doubts at the time about "the true metaphysics of the square root of −1". It was not until 1831 that he overcame these doubts and published his treatise on complex numbers as points in the plane, largely establishing modern notation and terminology. In the beginning of the 19th century, other mathematicians discovered independently the geometrical representation of the complex numbers: Buée, Mourey, Warren, Français and his brother, Bellavitis.[19]

The English mathematician G.H. Hardy remarked that Gauss was the first mathematician to use complex numbers in 'a really confident and scientific way' although mathematicians such as Niels Henrik Abel and Carl Gustav Jacob Jacobi were necessarily using them routinely before Gauss published his 1831 treatise.[20]

  “If this subject has hitherto been considered from the wrong viewpoint and thus enveloped in mystery and surrounded by darkness, it is largely an unsuitable terminology which should be blamed. Had +1, -1 and √−1, instead of being called positive, negative and imaginary (or worse still, impossible) unity, been given the names say,of direct, inverse and lateral unity, there would hardly have been any scope for such obscurity.” - Gauss[21]

Augustin Louis Cauchy and Bernhard Riemann together brought the fundamental ideas of complex analysis to a high state of completion, commencing around 1825 in Cauchy's case.

The common terms used in the theory are chiefly due to the founders. Argand called cos ϕ + isin ϕ the _direction factor_, and $r = \sqrt{a^2+b^2}$ the _modulus_; Cauchy (1828) called cos ϕ + isin ϕ the _reduced form_ (l'expression réduite) and apparently introduced the term _argument_; Gauss used for $\sqrt{-1}$, introduced the term _complex number_ for , and called the _norm_. The expression _direction coefficient_, often used for cos ϕ + isin ϕ, is due to Hankel (1867), and _absolute value,_ for _modulus,_ is due to Weierstrass.

Later classical writers on the general theory include Richard Dedekind, Otto Hölder, Felix Klein, Henri Poincaré, Hermann Schwarz, Karl Weierstrass and many others.


Relations and operations

Equality

Two complex numbers are equal if and only if both their real and imaginary parts are equal. That is, complex numbers z₁ and z₂ are equal if and only if Re (z₁) = Re (z₂) and Im (z₁) = Im (z₂). If the complex numbers are written in polar form, they are equal if and only if they have the same argument and the same magnitude.

Ordering

Since complex numbers are naturally thought of as existing on a two-dimensional plane, there is no natural linear ordering on the set of complex numbers. In fact, there is no linear ordering on the complex numbers that is compatible with addition and multiplication – the complex numbers cannot have the structure of an ordered field. This is because any square in an ordered field is at least , but .

Conjugate

Complex_conjugate_picture.svg The _complex conjugate_ of the complex number is given by . It is denoted by either $\overline{z}$ or .[22] This unary operation on complex numbers cannot be expressed by applying only their basic operations addition, subtraction, multiplication and division.

Geometrically, $\overline{z}$ is the "reflection" of about the real axis. Conjugating twice gives the original complex number

$$\overline{\overline{z}}=z,$$

which makes this operation an involution. The reflection leaves both the real part and the magnitude of z unchanged, that is

$$\operatorname{Re}(\overline{z}) = \operatorname{Re}(z)\quad$$
and $\quad |\overline{z}| = |z|.$

The imaginary part and the argument of a complex number z change their sign under conjugation

$$\operatorname{Im}(\overline{z}) = -\operatorname{Im}(z)\quad$$
and $\quad \operatorname{arg}(\overline{z}) \equiv -\operatorname{arg}(z) \pmod {2\pi}.$

For details on argument and magnitude, see the section on Polar form.

The product of a complex number z = x + yi and its conjugate is always a positive real number and equals the square of the magnitude of each:

$$z\cdot \overline{z} = x^2 + y^2 = |z|^2 = |\overline{z}|^2.$$

This property can be used used to convert a fraction with a complex denominator to an equivalent fraction with a real denominator by expanding both numerator and denominator of the fraction by the conjugate of the given denominator. This process is sometimes called "rationalization" of the denominator (although the denominator in the final expression might be an irrational real number), because it resembles the method to remove roots from simple expressions in a denominator.

The real and imaginary parts of a complex number can be extracted using the conjugation:

    $\operatorname{Re}(z) = \dfrac{z+\overline{z}}{2},\quad$ and $\quad \operatorname{Im}(z) = \dfrac{z-\overline{z}}{2i}.$

Moreover, a complex number is real if and only if it equals its own conjugate.

Conjugation distributes over the basic complex arithmetic operations:

    $\overline{z\pm w} = \overline{z} \pm \overline{w},$
    $\overline{z\cdot w} = \overline{z} \cdot\overline{w},\quad \overline{z/w} = \overline{z}/\overline{w}.$

Conjugation is also employed in inversive geometry, a branch of geometry studying reflections more general than ones about a line. In the network analysis of electrical circuits, the complex conjugate is used in finding the equivalent impedance when the maximum power transfer theorem is looked for.

Addition and subtraction

Vector_Addition.svg

Two complex numbers a and b are most easily added by separately adding their real and imaginary parts of the summands. That is to say:

_a_ + _b_ = (_x_ + _y__i_) + (_u_ + _v__i_) = (_x_ + _u_) + (_y_ + _v_)_i_.
Similarly, subtraction can be performed as

_a_ − _b_ = (_x_ + _y__i_) − (_u_ + _v__i_) = (_x_ − _u_) + (_y_ − _v_)_i_.

Using the visualization of complex numbers in the complex plane, the addition has the following geometric interpretation: the sum of two complex numbers a and b, interpreted as points in the complex plane, is the point obtained by building a parallelogram from the three vertices O, and the points of the arrows labeled a and b (provided that they are not on a line). Equivalently, calling these points A, B, respectively and the fourth point of the parallelogram X, the triangles OAB and XBA are congruent. A visualization of the subtraction can be achieved by considering addition of the negative subtrahend.

Multiplication

Since the real part, the imaginary part, and the indeterminate i in a complex number are all considered as numbers in themselves, two complex numbers, given as z = x + yi and w = u + vi are multiplied under the rules of the distributive property, the commutative properties and the defining property i² =  − 1 in the following way

$$\begin{align}
z\cdot w &= (x+yi)\cdot (u+vi)  & \\
&=x(u+vi) + yi(u+vi)  &&\text{by the (right) distributive law} \\
&=xu + xvi + yiu + yivi &&\text{by the (left) distributive law} \\
&=xu + yivi + xvi + yiu &&\text{by the commutativity of addition} \\
&=xu + yvi^2 + xvi + yui &&\text{by the commutativity of multiplication} \\
&=(xu + yvi^2) + (xvi + yui) &&\text{by the associativity of addition} \\
&=(xu - yv) + (xvi + yui) &&\text{by the defining property of } i \\
&=(xu - yv) + (xv + yu)i &&\text{by the distributive law}.
\end{align}$$

Reciprocal and division

Using the conjugation, the reciprocal of a nonzero complex number can always be broken down to

    $\frac{1}{z}=\frac{\overline{z}}{z \overline{z}} = \frac{\overline{z}}{|z|^2}=\frac{\overline{z}}{x^2+y^2}=\frac{x}{x^2+y^2} -\frac{y}{x^2+y^2}i,$

since _non-zero_ implies that x² + y² is greater than zero.

This can be used to express a division of an arbitrary complex number w = u + vi by a non-zero complex number z as

$$\frac {w}{z}= w\cdot \frac {1}{z}= (u+vi)\cdot \left(\frac{x}{x^2+y^2} -\frac{y}{x^2+y^2}i\right)= \frac{1}{x^2+y^2}\left((ux+vy)+(vx-uy)i\right).$$

Multiplication and division in polar form

Complex_multi.svg, the length of the hypotenuse of the blue triangle.]] Formulas for multiplication, division and exponentiation are simpler in polar form than the corresponding formulas in Cartesian coordinates. Given two complex numbers and , because of the trigonometric identities

cos (_a_)cos (_b_) − sin (_a_)sin (_b_) = cos (_a_ + _b_)

cos (_a_)sin (_b_) + sin (_a_)cos (_b_) = sin (_a_ + _b_)

we may derive

_z_₁_z_₂ = _r_₁_r_₂(cos (_φ_₁ + _φ_₂) + _i_sin (_φ_₁ + _φ_₂)).
In other words, the absolute values are multiplied and the arguments are added to yield the polar form of the product. For example, multiplying by corresponds to a quarter-turn counter-clockwise, which gives back . The picture at the right illustrates the multiplication of

(2 + _i_)(3 + _i_) = 5 + 5_i_.
Since the real and imaginary part of are equal, the argument of that number is 45 degrees, or π/4 (in radian). On the other hand, it is also the sum of the angles at the origin of the red and blue triangles are arctan(1/3) and arctan(1/2), respectively. Thus, the formula

$$\frac{\pi}{4} = \arctan\left(\frac{1}{2}\right) + \arctan\left(\frac{1}{3}\right)$$
holds. As the arctan function can be approximated highly efficiently, formulas like this – known as Machin-like formulas – are used for high-precision approximations of π.

Similarly, division is given by

$$\frac{z_1}{z_2} = \frac{r_1}{r_2} \left(\cos(\varphi_1 - \varphi_2) + i \sin(\varphi_1 - \varphi_2)\right).$$

Square root

The square roots of (with ) are  ± (γ + δi), where

$$\gamma = \sqrt{\frac{a + \sqrt{a^2 + b^2}}{2}}$$

and

$$\delta = \sgn (b) \sqrt{\frac{-a + \sqrt{a^2 + b^2}}{2}},$$

where sgn is the signum function. This can be seen by squaring  ± (γ + δi) to obtain .[23][24] Here $\sqrt{a^2 + b^2}$ is called the modulus of , and the square root sign indicates the square root with non-negative real part, called the PRINCIPAL SQUARE ROOT; also $\sqrt{a^2 + b^2}= \sqrt{z\overline{z}},$ where z = a + bi.[25]

Exponentiation

Euler's formula

Euler's formula states that, for any real number ,

    $e^{ix} = \cos x + i\sin x \$,

where is the base of the natural logarithm. This can be proved through induction by observing that

    \begin{align}

i^0 &{}= 1, \quad & i^1 &{}= i, \quad & i^2 &{}= -1, \quad & i^3 &{}= -i, \\ i^4 &={} 1, \quad & i^5 &={} i, \quad & i^6 &{}= -1, \quad & i^7 &{}= -i, \end{align}

and so on, and by considering the Taylor series expansions of , and :

    \begin{align}

e^{ix} &{}= 1 + ix + \frac{(ix)^2}{2!} + \frac{(ix)^3}{3!} + \frac{(ix)^4}{4!} + \frac{(ix)^5}{5!} + \frac{(ix)^6}{6!} + \frac{(ix)^7}{7!} + \frac{(ix)^8}{8!} + \cdots \\[8pt]
       &{}= 1 + ix - \frac{x^2}{2!} - \frac{ix^3}{3!} + \frac{x^4}{4!} + \frac{ix^5}{5!} -\frac{x^6}{6!} - \frac{ix^7}{7!} + \frac{x^8}{8!} + \cdots \\[8pt]
       &{}= \left( 1 - \frac{x^2}{2!} + \frac{x^4}{4!} - \frac{x^6}{6!} + \frac{x^8}{8!} - \cdots \right) + i\left( x - \frac{x^3}{3!} + \frac{x^5}{5!} - \frac{x^7}{7!} + \cdots \right) \\[8pt]
       &{}= \cos x + i\sin x \ .

\end{align}

The rearrangement of terms is justified because each series is absolutely convergent.

Natural logarithm

It follows from Euler's formula that, for any complex number _z_ written in polar form,

_z_ = _r_(cos _φ_ + _i_sin _φ_)

where _r_ is a non-negative real number, one possible value for the complex logarithm of _z_ is

ln (_z_) = ln (_r_) + _φ__i_.

Because cosine and sine are periodic functions, other possible values may be obtained. For example, e^(iπ) = e^(3iπ) =  − 1, so both iπ and 3iπ are two possible values for the natural logarithm of  − 1.

To deal with the existence of more than one possible value for a given input, the complex logarithm may be considered a multi-valued function, with

ln (_z_) = {ln(_r_)+(_φ_+2_π__k_)_i_∣_k_∈ℤ}.

Alternatively, a branch cut can be used to define a single-valued "branch" of the complex logarithm.

Integer and fractional exponents

We may use the identity

ln (_a_^(_b_)) = _b_ln _a_

to define complex exponentiation, which is likewise multi-valued:

    \begin{align}

 \ln (z^n) &= \ln((r(\cos \varphi + i\sin \varphi ))^n) \\[5pt]
           &= n \ln(r(\cos \varphi + i\sin \varphi)) \\[5pt]
           &= \{ n (\ln(r) + (\varphi + k2\pi) i) \mid k \in \mathbb{Z} \} \\[5pt]
           &= \{ n \ln(r) + n \varphi i + nk2\pi i \mid k \in \mathbb{Z} \}.

\end{align}

When _n_ is an integer, this simplifies to de Moivre's formula:

_z_^(_n_) = (_r_(cos _φ_ + _i_sin _φ_))^(_n_) = _r_^(_n_) ⋅ (cos _n__φ_ + _i_sin _n__φ_).

The th roots of are given by

$$\sqrt[n]{z} = \sqrt[n]r \left( \cos \left(\frac{\varphi+2k\pi}{n}\right) + i \sin \left(\frac{\varphi+2k\pi}{n}\right)\right)$$
for any integer satisfying . Here is the usual (positive) th root of the positive real number . While the th root of a positive real number is chosen to be the _positive_ real number satisfying , there is no natural way of distinguishing one particular complex th root of a complex number. Therefore, the th root of is considered as a multivalued function (in ), as opposed to a usual function , for which is a uniquely defined number. Formulas such as

$$\sqrt[n]{z^n} = z$$
(which holds for positive real numbers), do in general not hold for complex numbers.


Properties

Field structure

The set C of complex numbers is a field.[26] Briefly, this means that the following facts hold: first, any two complex numbers can be added and multiplied to yield another complex number. Second, for any complex number , its additive inverse is also a complex number; and third, every nonzero complex number has a reciprocal complex number. Moreover, these operations satisfy a number of laws, for example the law of commutativity of addition and multiplication for any two complex numbers and :

_z_₁ + _z_₂ = _z_₂ + _z_₁,

_z_₁_z_₂ = _z_₂_z_₁.
These two laws and the other requirements on a field can be proven by the formulas given above, using the fact that the real numbers themselves form a field.

Unlike the reals, C is not an ordered field, that is to say, it is not possible to define a relation that is compatible with the addition and multiplication. In fact, in any ordered field, the square of any element is necessarily positive, so precludes the existence of an ordering on C.[27]

When the underlying field for a mathematical topic or construct is the field of complex numbers, the topic's name is usually modified to reflect that fact. For example: complex analysis, complex matrix, complex polynomial, and complex Lie algebra.

Solutions of polynomial equations

Given any complex numbers (called coefficients) , the equation

$$a_n z^n + \dotsb + a_1 z + a_0 = 0$$
has at least one complex solution _z_, provided that at least one of the higher coefficients is nonzero.[28] This is the statement of the _fundamental theorem of algebra_, of Carl Friedrich Gauss and Jean le Rond d'Alembert. Because of this fact, C is called an algebraically closed field. This property does not hold for the field of rational numbers Q (the polynomial does not have a rational root, since [[square_root_of_2| as a base, where ranges over the field and ranges over . With this topology is isomorphic as a _topological_ field to C.

The only connected locally compact topological fields are R and C. This gives another characterization of C as a topological field, since C can be distinguished from R because the nonzero complex numbers are connected, while the nonzero real numbers are not.[29]


Formal construction

Construction as ordered pairs

William Rowan Hamilton introduced the approach to define the set of complex numbers[30] as the set of of real numbers, in which the following rules for addition and multiplication are imposed:[31]

    \begin{align}

(a, b) + (c, d) &= (a + c, b + d)\\ (a, b) \cdot (c, d) &= (ac - bd, bc + ad). \end{align}

It is then just a matter of notation to express as .

Construction as a quotient field

Though this low-level construction does accurately describe the structure of the complex numbers, the following equivalent definition reveals the algebraic nature of more immediately. This characterization relies on the notion of fields and polynomials. A field is a set endowed with addition, subtraction, multiplication and division operations that behave as is familiar from, say, rational numbers. For example, the distributive law

(_x_ + _y_)_z_ = _x__z_ + _y__z_
must hold for any three elements , and of a field. The set of real numbers does form a field. A polynomial with real coefficients is an expression of the form

$$a_nX^n+\dotsb+a_1X+a_0$$
, where the are real numbers. The usual addition and multiplication of polynomials endows the set of all such polynomials with a ring structure. This ring is called the polynomial ring over the real numbers.

The set of complex numbers is defined as the quotient ring .[32] This extension field contains two square roots of , namely (the cosets of) and , respectively. (The cosets of) and form a basis of as a real vector space, which means that each element of the extension field can be uniquely written as a linear combination in these two elements. Equivalently, elements of the extension field can be written as ordered pairs of real numbers. The quotient ring is a field, because is irreducible over , so the ideal it generates is maximal.

The formulas for addition and multiplication in the ring , modulo the relation −1}}, correspond to the formulas for addition and multiplication of complex numbers defined as ordered pairs. So the two definitions of the field are isomorphic (as fields).

Accepting that is algebraically closed, since it is an algebraic extension of in this approach, is therefore the algebraic closure of .

Matrix representation of complex numbers

Complex numbers can also be represented by matrices that have the following form:

$$\begin{pmatrix}
  a &   -b  \\
  b & \;\; a
\end{pmatrix}$$
Here the entries and are real numbers. The sum and product of two such matrices is again of this form, and the sum and product of complex numbers corresponds to the sum and product of such matrices, the product being:

$$\begin{pmatrix}
  a &   -b  \\
  b & \;\; a
\end{pmatrix}
\begin{pmatrix}
  c &   -d  \\
  d & \;\; c
\end{pmatrix}
= \begin{pmatrix}
  ac-bd &   -ad-bc  \\
  bc+ad & \;\; -bd+ac
\end{pmatrix}$$

The geometric description of the multiplication of complex numbers can also be expressed in terms of rotation matrices by using this correspondence between complex numbers and such matrices. Moreover, the square of the absolute value of a complex number expressed as a matrix is equal to the determinant of that matrix:

$$|z|^2 =
\begin{vmatrix}
  a & -b  \\
  b &  a
\end{vmatrix}
= a^2 + b^2.$$
The conjugate $\overline z$ corresponds to the transpose of the matrix.

Though this representation of complex numbers with matrices is the most common, many other representations arise from matrices _other than_ $\bigl(\begin{smallmatrix}0 & -1 \\1 & 0 \end{smallmatrix}\bigr)$ that square to the negative of the identity matrix. See the article on 2 × 2 real matrices for other representations of complex numbers.


Complex analysis

Sin1perz.png of . Black parts inside refer to numbers having large absolute values.]]

The study of functions of a complex variable is known as complex analysis and has enormous practical use in applied mathematics as well as in other branches of mathematics. Often, the most natural proofs for statements in real analysis or even number theory employ techniques from complex analysis (see prime number theorem for an example). Unlike real functions, which are commonly represented as two-dimensional graphs, complex functions have four-dimensional graphs and may usefully be illustrated by color-coding a three-dimensional graph to suggest four dimensions, or by animating the complex function's dynamic transformation of the complex plane.

Complex exponential and related functions

The notions of convergent series and continuous functions in (real) analysis have natural analogs in complex analysis. A sequence of complex numbers is said to converge if and only if its real and imaginary parts do. This is equivalent to the (ε, δ)-definition of limits, where the absolute value of real numbers is replaced by the one of complex numbers. From a more abstract point of view, C, endowed with the metric

d (_z_₁, _z_₂) = |_z_₁ − _z_₂|
is a complete metric space, which notably includes the triangle inequality

|_z_₁ + _z_₂| ≤ |_z_₁| + |_z_₂|
for any two complex numbers and .

Like in real analysis, this notion of convergence is used to construct a number of elementary functions: the _exponential function_ , also written , is defined as the infinite series

$$\exp(z):= 1+z+\frac{z^2}{2\cdot 1}+\frac{z^3}{3\cdot 2\cdot 1}+\cdots = \sum_{n=0}^{\infty} \frac{z^n}{n!}.$$

The series defining the real trigonometric functions sine and cosine, as well as the hyperbolic functions sinh and cosh, also carry over to complex arguments without change. For the other trigonometric and hyperbolic functions, such as tangent, things are slightly more complicated, as the defining series do not converge for all complex values. Therefore, one must define them either in terms of sine, cosine and exponential, or, equivalently, by using the method of analytic continuation.

_Euler's formula_ states:

exp (_i__φ_) = cos (_φ_) + _i_sin (_φ_)
for any real number _φ_, in particular

exp (_i__π_) =  − 1
Unlike in the situation of real numbers, there is an infinitude of complex solutions of the equation

exp (_z_) = _w_
for any complex number . It can be shown that any such solution – called complex logarithm of – satisfies

log (_w_) = ln |_w_| + _i_arg (_w_),
where arg is the argument defined above, and ln the (real) natural logarithm. As arg is a multivalued function, unique only up to a multiple of 2_π_, log is also multivalued. The principal value of log is often taken by restricting the imaginary part to the interval .

Complex exponentiation is defined as

_z_^(_ω_) = exp (_ω_log _z_),
and is multi-valued, except when ω is an integer. For , for some natural number , this recovers the non-uniqueness of th roots mentioned above.

Complex numbers, unlike real numbers, do not in general satisfy the unmodified power and logarithm identities, particularly when naïvely treated as single-valued functions; see failure of power and logarithm identities. For example, they do not satisfy

_a_^(_b__c_) = (_a_^(_b_))^(_c_).
Both sides of the equation are multivalued by the definition of complex exponentiation given here, and the values on the left are a subset of those on the right.

Holomorphic functions

A function _f_ : C → C is called holomorphic if it satisfies the Cauchy–Riemann equations. For example, any R-linear map C → C can be written in the form

$$f(z)=az+b\overline{z}$$
with complex coefficients and . This map is holomorphic if and only if . The second summand $b \overline z$ is real-differentiable, but does not satisfy the Cauchy–Riemann equations.

Complex analysis shows some features not apparent in real analysis. For example, any two holomorphic functions and that agree on an arbitrarily small open subset of C necessarily agree everywhere. Meromorphic functions, functions that can locally be written as with a holomorphic function , still share some of the features of holomorphic functions. Other functions have essential singularities, such as at .


Applications

Complex numbers have applications in many scientific areas, including signal processing, control theory, electromagnetism, fluid dynamics, quantum mechanics, cartography, and vibration analysis. Some of these applications are described below.

Geometry

Shapes

Three non-collinear points u, v, w in the plane determine the SHAPE of the triangle {u, v, w}. Locating the points in the complex plane, this shape of a triangle may be expressed by complex arithmetic as

$$S(u, v, w) = \frac {u - w}{u - v}.$$
The shape S of a triangle will remain the same, when the complex plane is transformed by translation or dilation (by an affine transformation), corresponding to the intuitive notion of shape, and describing similarity. Thus each triangle {u, v, w} is in a similarity class of triangles with the same shape.[33]

Fractal geometry

Mandelset_hires.png The Mandelbrot set is a popular example of a fractal formed on the complex plane. It is defined by plotting every location c where iterating the sequence f_(c)(z) = z² + c does not diverge when iterated infinitely. Similarly, Julia sets have the same rules, except where c remains constant.

Triangles

Every triangle has a unique Steiner inellipse – an ellipse inside the triangle and tangent to the midpoints of the three sides of the triangle. The foci of a triangle's Steiner inellipse can be found as follows, according to Marden's theorem:[34][35] Denote the triangle's vertices in the complex plane as , , and . Write the cubic equation $\scriptstyle (x-a)(x-b)(x-c)=0$, take its derivative, and equate the (quadratic) derivative to zero. Marden's Theorem says that the solutions of this equation are the complex numbers denoting the locations of the two foci of the Steiner inellipse.

Algebraic number theory

Pentagon_construct.gif.]] As mentioned above, any nonconstant polynomial equation (in complex coefficients) has a solution in C. A fortiori, the same is true if the equation has rational coefficients. The roots of such equations are called algebraic numbers – they are a principal object of study in algebraic number theory. Compared to , the algebraic closure of Q, which also contains all algebraic numbers, C has the advantage of being easily understandable in geometric terms. In this way, algebraic methods can be used to study geometric questions and vice versa. With algebraic methods, more specifically applying the machinery of field theory to the number field containing roots of unity, it can be shown that it is not possible to construct a regular nonagon using only compass and straightedge – a purely geometric problem.

Another example are Gaussian integers, that is, numbers of the form , where and are integers, which can be used to classify sums of squares.

Analytic number theory

Analytic number theory studies numbers, often integers or rationals, by taking advantage of the fact that they can be regarded as complex numbers, in which analytic methods can be used. This is done by encoding number-theoretic information in complex-valued functions. For example, the Riemann zeta function is related to the distribution of prime numbers.

Improper integrals

In applied fields, complex numbers are often used to compute certain real-valued improper integrals, by means of complex-valued functions. Several methods exist to do this; see methods of contour integration.

Dynamic equations

In differential equations, it is common to first find all complex roots of the characteristic equation of a linear differential equation or equation system and then attempt to solve the system in terms of base functions of the form . Likewise, in difference equations, the complex roots of the characteristic equation of the difference equation system are used, to attempt to solve the system in terms of base functions of the form .

In applied mathematics

Control theory

In control theory, systems are often transformed from the time domain to the frequency domain using the Laplace transform. The system's zeros and poles are then analyzed in the _complex plane_. The root locus, Nyquist plot, and Nichols plot techniques all make use of the complex plane.

In the root locus method, it is important whether zeros and poles are in the left or right half planes, i.e. have real part greater than or less than zero. If a linear, time-invariant (LTI) system has poles that are

-   in the right half plane, it will be unstable,
-   all in the left half plane, it will be stable,
-   on the imaginary axis, it will have marginal stability.

If a system has zeros in the right half plane, it is a nonminimum phase system.

Signal analysis

Complex numbers are used in signal analysis and other fields for a convenient description for periodically varying signals. For given real functions representing actual physical quantities, often in terms of sines and cosines, corresponding complex functions are considered of which the real parts are the original quantities. For a sine wave of a given frequency, the absolute value _z_{{!}}}} of the corresponding is the amplitude and the argument is the phase.

If Fourier analysis is employed to write a given real-valued signal as a sum of periodic functions, these periodic functions are often written as complex valued functions of the form

_x_(_t_) = Re {_X_(_t_)}

and

_X_(_t_) = _A__e_^(_i__ω__t_) = _a__e_^(_i__ϕ_)_e_^(_i__ω__t_) = _a__e_^(_i_(_ω__t_ + _ϕ_))

where ω represents the angular frequency and the complex number _A_ encodes the phase and amplitude as explained above.

This use is also extended into digital signal processing and digital image processing, which utilize digital versions of Fourier analysis (and wavelet analysis) to transmit, compress, restore, and otherwise process digital audio signals, still images, and video signals.

Another example, relevant to the two side bands of amplitude modulation of AM radio, is:

$$\begin{align}
  \cos((\omega + \alpha)t) + \cos\left((\omega - \alpha)t\right)
    & = \operatorname{Re}\left(e^{i(\omega + \alpha)t} + e^{i(\omega - \alpha)t}\right) \\
    & = \operatorname{Re}\left(\left(e^{i\alpha t} + e^{-i\alpha t}\right) \cdot e^{i\omega t}\right) \\
    & = \operatorname{Re}\left(2\cos(\alpha t) \cdot e^{i\omega t}\right) \\
    & = 2 \cos(\alpha t) \cdot \operatorname{Re}\left(e^{i\omega t}\right) \\
    & = 2 \cos(\alpha t) \cdot \cos\left(\omega t\right).
\end{align}$$

In physics

Electromagnetism and electrical engineering

In electrical engineering, the Fourier transform is used to analyze varying voltages and currents. The treatment of resistors, capacitors, and inductors can then be unified by introducing imaginary, frequency-dependent resistances for the latter two and combining all three in a single complex number called the impedance. This approach is called phasor calculus.

In electrical engineering, the imaginary unit is denoted by , to avoid confusion with , which is generally in use to denote electric current, or, more particularly, , which is generally in use to denote instantaneous electric current.

Since the voltage in an AC circuit is oscillating, it can be represented as

_V_(_t_) = _V_₀_e_^(_j__ω__t_) = _V_₀(cos_ω__t_+_j_sin_ω__t_),

To obtain the measurable quantity, the real part is taken:

_v_(_t_) = _R__e_(_V_) = _R__e_[_V_₀_e_^(_j__ω__t_)] = _V_₀cos _ω__t_.

The complex-valued signal V(t) is called the analytic representation of the real-valued, measurable signal v(t). [36]

Fluid dynamics

In fluid dynamics, complex functions are used to describe potential flow in two dimensions.

Quantum mechanics

The complex number field is intrinsic to the mathematical formulations of quantum mechanics, where complex Hilbert spaces provide the context for one such formulation that is convenient and perhaps most standard. The original foundation formulas of quantum mechanics – the Schrödinger equation and Heisenberg's matrix mechanics – make use of complex numbers.

Relativity

In special and general relativity, some formulas for the metric on spacetime become simpler if one takes the time component of the spacetime continuum to be imaginary. (This approach is no longer standard in classical relativity, but is used in an essential way in quantum field theory.) Complex numbers are essential to spinors, which are a generalization of the tensors used in relativity.


Generalizations and related notions

The process of extending the field R of reals to C is known as the Cayley–Dickson construction. It can be carried further to higher dimensions, yielding the quaternions H and octonions O which (as a real vector space) are of dimension 4 and 8, respectively. In this context the complex numbers have been called the BINARIONS.[37]

Just as by applying the construction to reals the property of ordering is lost, properties familiar from real and complex numbers vanish with each extension. The quaternions lose commutativity, i.e.: for some quaternions and the multiplication of octonions, additionally to not being commutative, fails to be associative: for some octonions

Reals, complex numbers, quaternions and octonions are all normed division algebras over R. By Hurwitz's theorem they are the only ones; the sedenions, the next step in the Cayley–Dickson construction, fail to have this structure.

The Cayley–Dickson construction is closely related to the regular representation of C, thought of as an R-algebra (an R-vector space with a multiplication), with respect to the basis . This means the following: the R-linear map

ℂ → ℂ, _z_ ↦ _w__z_
for some fixed complex number can be represented by a matrix (once a basis has been chosen). With respect to the basis , this matrix is

$$\begin{pmatrix}
  \operatorname{Re}(w) & -\operatorname{Im}(w) \\
  \operatorname{Im}(w) & \;\; \operatorname{Re}(w)
\end{pmatrix}$$
i.e., the one mentioned in the section on matrix representation of complex numbers above. While this is a linear representation of C in the 2 × 2 real matrices, it is not the only one. Any matrix

$$J = \begin{pmatrix}p & q \\ r & -p \end{pmatrix}, \quad p^2 + qr + 1 = 0$$
has the property that its square is the negative of the identity matrix: . Then

{_z_ = _a__I_ + _b__J_ : _a_, _b_ ∈ R}
is also isomorphic to the field C, and gives an alternative complex structure on R². This is generalized by the notion of a linear complex structure.

Hypercomplex numbers also generalize R, C, H, and O. For example, this notion contains the split-complex numbers, which are elements of the ring (as opposed to ). In this ring, the equation has four solutions.

The field R is the completion of Q, the field of rational numbers, with respect to the usual absolute value metric. Other choices of metrics on Q lead to the fields Q_(_p_) of _p_-adic numbers (for any prime number _p_), which are thereby analogous to R. There are no other nontrivial ways of completing Q than R and Q_(_p_), by Ostrowski's theorem. The algebraic closures $\overline {\mathbf{Q}_p}$ of Q_(_p_) still carry a norm, but (unlike C) are not complete with respect to it. The completion C_(p) of $\overline {\mathbf{Q}_p}$ turns out to be algebraically closed. This field is called _p_-adic complex numbers by analogy.

The fields R and Q_(_p_) and their finite field extensions, including C, are local fields.


See also

-   Algebraic surface
-   Circular motion using complex numbers
-   Complex-base system
-   Complex geometry
-   Eisenstein integer
-   Euler's identity
-   Geometric algebra (which includes the complex plane as the 2-dimensional spinor subspace 𝒢₂⁺)
-   Root of unity
-   Unit complex number


Notes


References

Works cited

-   -   -


Further reading

-   -   -

Mathematical

-   -   -   -   -   -

Historical

-   -   -   -

        A gentle introduction to the history of complex numbers and the beginnings of complex analysis.

-

        An advanced perspective on the historical development of the concept of number.

Category:Composition algebras Complex_numbers

[1]  Extract of p. 73: "complex numbers, as much as reals, and perhaps even more, find a unity with nature that is truly remarkable. It is as though Nature herself is as impressed by the scope and consistency of the complex-number system as we are ourselves, and has entrusted to these numbers the precise operations of her world at its minutest scales."

[2]

[3]

[4]

[5]

[6]

[7]

[8] See .

[9]

[10]

[11] See : "The plane $\R^2$ whose points are identified with the elements of $\C$ is called the complex plane"... "The complete geometric interpretation of complex numbers and operations on them appeared first in the work of C. Wessel (1799). The geometric representation of complex numbers, sometimes called the "Argand diagram" , came into use after the publication in 1806 and 1814 of papers by J.R. Argand, who rediscovered, largely independently, the findings of Wessel".

[12] See , page 18.

[13]

[14]

[15]

[16]

[17]

[18]

[19]  Extract of page 139

[20]

[21] Extracted quotation from "A Short History of Complex Numbers", Orlando Merino, University of Rhode Island (January, 2006) http://www.math.uri.edu/~merino/spring06/mth562/ShortHistoryComplexNumbers2006.pdf

[22] For the former notation, See , pages 15–16.

[23] , Section 3.7.26, p. 17

[24] , Extract: page 59

[25] See , page 3.

[26] See , pages 15–16.

[27] See , page 25.

[28]

[29]

[30]

[31] See , pages 15–16.

[32]

[33]

[34]

[35]

[36]

[37] Kevin McCrimmon (2004) _A Taste of Jordan Algebras_, pp 64, Universitext, Springer