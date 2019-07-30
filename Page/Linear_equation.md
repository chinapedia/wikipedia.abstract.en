In mathematics, a LINEAR EQUATION is an equation that may be put in the form

_a_₁_x_₁ + ⋯ + _a__(_n_)_x__(_n_) + _b_ = 0,
where x₁, …, x_(n) are the variables (or unknowns or indeterminates), and b, a₁, …, a_(n) are the coefficients, which are often real numbers. The coefficients may be considered as parameters of the equation, and may be arbitrary expressions, provided they do not contain any of the variables. To yield a meaningful equation for non-zero values of b, the coefficients are required to not be all zero.

In the words of algebra, a linear equation is obtained by equating to zero a linear polynomial over some field, from which the coefficients are taken, and that does not contain the symbols for the indeterminates.

The solutions of such an equation are the values that, when substituted for the unknowns, make the equality true.

The case of just one variable is particularly important, and frequently the term _linear equation_ refers implicitly to this particular case, in which the name _unknown_ for the variable is sensibly used.

All the pairs of numbers that are solutions of a linear equation in two variables form a line in the Euclidean plane, and every non-vertical line may be defined as the solutions of a linear equation. This is the origin of the term _linear_ for describing this type of equation. More generally, the solutions of a linear equation in variables form a hyperplane (a subspace of dimension ) in the Euclidean space of dimension .

Linear equations occur frequently in all mathematics and their applications in physics and engineering, partly because non-linear systems are often well approximated by linear equations.

This article considers the case of a single equation with coefficients from the field of real numbers, for which one studies the real solutions. All of its content applies to complex solutions and, more generally, for linear equations with coefficients and solutions in any field. For the case of several simultaneous linear equations, see system of linear equations.


One variable

Frequently the term _linear equation_ refers implicitly to the case of just one variable. This case, in which the name _unknown_ for the variable is sensibly used, is of particular importance, since it offers a unique value as solution to the equation. According to the above definition such an equation has the form

_a__x_ + _b_ = 0,

and, for a unique value as solution

$$x=-\frac ba.$$

In the case of a = 0, two possibilities emerge:

1.  b = 0: Every value of x is a solution to the equation 0 ⋅ x + 0 = 0, and
2.  b ≠ 0: There is no solution for the equation 0 ⋅ x + b = 0, the equation is said to be inconsistent.


Two variables

In the case of just two variables the indexed variable names x₁ and x₂ and the respective coefficients a₁ and a₂ are often replaced, for the convenience of not having to deal with indices, by x, y, a and b, respectively. As a consequence, the so called _constant term_, named in the above notation, must also be renamed; c suggests itself. A linear equation in two variables is then denoted as

_a__x_ + _b__y_ + _c_ = 0.

Any change to such an equation that does not alter the set of solutions, i.e., the set of pairs (x, y), that satisfy this equation (i.e., make it an identity), generates an _equivalent_ equation. It is immediate that changing the involved names (e.g. capitalizing names or using other letters) and also reordering the equation (for example, by moving terms to the other side), does not change this set of solutions, and thus results in an equivalent equation, like,

_A__x_ + _B__y_ = _C_, 
with  A = a, B = b  and  C =  − c.

These equivalent variants are sometimes given generic names, such as _general form_ or _standard form_,[1] but contribute no new concepts.

The set of solutions also does not change when both sides of the equation are multiplied by the same non-zero number. According to the above definition, a and b are not both zero, so multiplying the equation by the reciprocal of one of these non-zero coefficients, results in an equivalent equation as the coefficient of one variable. This variable can be isolated on the left hand side, leaving an expression, possibly containing the other variable on the right hand side. This leads to either

_b_ ≠ 0: _y_ = _m__x_ + _y_₀,  
with $\quad m = -\frac a b\quad\;$ and $\quad y_0  = -\frac c b,\quad$ or

_a_ ≠ 0: _x_ = _m_′_y_ + _x_₀, 
with $\quad m' = -\frac b a \quad$ and $\quad x_0  = -\frac c a.$

When both coefficients a and b are not zero, then both forms exist, and, assuming real numbers as coefficients as well as the domain of the variables, the set of solutions for both equations can then be denoted as

_S_ = {(_x_, _m__x_ + _y_₀) ∣ _x_ ∈ ℝ}, 
which is equal to the set  S = {(m′y + x₀, y) ∣ y ∈ ℝ}.

In this case both components of the pairs in the set S vary over all real numbers, thereby depending in a so called _linear affine_ manner on the respective other.

When exactly one coefficient, either a or b, is not zero, then one equation remains, which is either

_y_ = _y_₀, 
for  a = 0, b ≠ 0,  with the set of solutions  S_(x) = {(x, y₀) ∣ x ∈ ℝ},  or

_x_ = _x_₀, 
for  b = 0, a ≠ 0,  with the set of solutions  S^(y) = {(x₀, y) ∣ y ∈ ℝ}.

For both alternatives this is a set of pairs of numbers, where either the second component is a constant, and the first varies over all the reals (S_(x)), or the first is a constant, and the second varies over all the reals (S^(y)).

In Cartesian coordinates

Every single solution of a linear equation in two variables can be interpreted as two coordinate values, fixing a point in the Euclidean plane with a Cartesian coordinate system. The sets of solutions of such an equation form a line in this plane. Conventionally, the first component of a solution (x, y), the x-value, is assigned to a horizontally drawn x-axis, and the second component, the y-value, to a vertical y-axis.

In the case of a ≠ 0, b = 0 the equation is x = x₀, and the set of its solutions S^(y) = {(x₀, y) ∣ y ∈ ℝ} has a vertical line as its graph, as shown in the figure to the right. The value $x_0= -\tfrac c a,$ where the line intersects the x-axis in the point (x₀, 0), is called an {{nowrap Except for x₀ = 0, when the graph coincides with the graphs of this kind do not intersect the they have no {{nowrap

The set of solutions defines a function f(t) and, simultaneously, the graph of this function, by interpreting the pairs (x, y) as (t, f(t)), provided that any two such solutions that differ in their second value also differ in their respective first values The set S^(y) = {(x₀, y) ∣ y ∈ ℝ} violates this condition: all real values y in the second component have the same first component x₀. Nevertheless, a graph for this set may be drawn, but it is not a graph of a function under the conventional assignment of axes, it obviously fails the vertical line test. This is the only type of straight line which is not the graph of any function f(t).

The sets S_(x) and S satisfy the above condition, and the graph of S_(x) = {(x, y₀) ∣ x ∈ ℝ} is shown to the right. In this case of a = 0, b ≠ 0 the graph of the constant function f(x) = y = y₀ is a horizontal line. The value $y_0= -\tfrac c b,$ where the line intersects the y-axis, is called Except for y₀ = 0, where the graph coincides with the x-axis, graphs of this kind have no

In the case of a ≠ 0 ≠ b with the equation y = mx + y₀ the set of solutions is S = {(x, mx + y₀) ∣ x ∈ ℝ}. It consists of pairs of numbers, with the first component varying over all the reals, and the other being calculated by a simple expression, representing a linear map and adding a This is sometimes called a _linear affine_ function, or simply also linear function, slightly abusing the strict term _linear_. Also in this case the graph of a linear equation in two variables is a straight line (see figure at the top) that intersects the at (i.e., (x₀, 0) is a solution) and the at the (i.e., (0, y₀) is a solution).

Besides the intercepts being obvious from graphing the solutions of a linear equation in two variables, also their ratio (if it exists) can be graphically interpreted as determining the incline of the considered line (and all lines parallel to it). The _slope_ of a straight line, usually introduced as _rise over run_, is the negative ratio of the _rise_, the to the _run_, the The negative sign accommodates for a positive slope, when the line rises for increasing Immediately

$$-\frac {y_0}{x_0}= -\frac {-\tfrac c b}{-\tfrac c a} = -\frac a b = m,$$

which holds if both intercepts exist. If the does not exist (a = 0), the slope m equals 0, belonging to a horizontal line.

Since _rise_ and _run_ of a straight line can be determined not only between the intercept points and the origin (x₀ − 0 and y₀ − 0), but also between arbitrary points (x₁, y₁) and (x₂, y₂) on the line, the slope may also be determined by

$$m= \frac {y_2 - y_1}{x_2 - x_1} =  \frac {y_1 - y_2}{x_1 - x_2}.$$

Denoting the angle enclosed by the x-axis and the line as φ, then

$$\tan\varphi = m = -\frac{a}{b}.$$

For b = 0 the slope is undefined (φ = π/2).

This shows that only two of x₀, y₀ and m can be selected independently.

With the premise that at least one axis is intersected, and since both intercept values may range over the whole real number line, all parallels to both axes as well as all oblique straight lines, i.e., in fact all straight lines in the Euclidean plane, can be expressed by linear equations in two variables, and all such equations denote either oblique or axis-parallel straight lines. Therefore all equations, equivalent to one of the above forms are often referred to as "equations of a line". They are adjusted to fit best to specific tasks, and are given therefore specific names, described below. In what follows, x, y, t, θ are the names of variables, and other letters denote constants (fixed numbers) as coefficients.

Slope–intercept form

This form relies on the habit of writing y = f(x) and the conventional way of assigning the variables of the linear equation to the axes of a Cartesian coordinate system, drawn in the conventional manner as described above. This form exists only for b ≠ 0, allowing to isolate y on the left hand side[2]

_y_ = _m__x_ + _y_₀.

This way the slope $m=-\tfrac a b$ describes the inclination of the straight line which is the graph of this equation. The slope is positive for a line ascending to the right and negative, if the line ascends to the left. A zero-slope m = 0 belongs to a horizontal line.

The y-intercept $y_0 = -\tfrac c b$ fixes the point (0, y₀), where the line crosses the y-axis, and y₀ = 0 characterizes lines that cross the origin (0, 0).

Recalling the x-intercept as $x_0 = -\tfrac c a,$ the above slope-intercept form, employing the slope m and the y-intercept, can be transformed to

$$y = -\frac a b x -\frac c b = -\frac a b(x+\frac b a\cdot\frac c b) = m(x- x_0),$$

involving the slope m and the x-intercept x₀.

In the case of b = 0, there is no slope-intercept form in the above way, because a slope does not exist for φ = π/2.

For a ≠ 0 ≠ b it is possible to express the inverse functions f^( − 1) in the slope-intercept form as

_x_ = _m_′_y_ + _x_₀, 
with $m'= \tfrac b a.$

The graph of this equation, having the same set of solutions, is necessarily identical to the above graph, but depicting it under exchanged assignment of the variables to the coordinate-axes ((x, y) ↦ (y-axis, x-axis)), yields the usual f^( − 1)-graph for inverse functions, the f-graph mirrored along y = x. This holds for both (a = 0, b ≠ 0) and (b = 0, a ≠ 0).

The graph of a vertical line (b = 0) with no existing slope and the equation x = d changes under this inverted assignment to the graph of the function y = d with zero-slope (d an arbitrary constant), and vice versa.

The slope–intercept form of a line can be computed from the value of the function at any two points: the slope can be calculated as m = (y₂ − y₁)/(x₂ − x₁), and then the intercept as a = y₁ − mx₁. This is a special case of the unisolvence theorem for polynomials: the coefficients of a polynomial of degree at most can be computed from the value at distinct points.

Point–slope form

A line is uniquely defined by its slope and an arbitrary point on it. In the slope-intersect form this point on the line is either taken as the intersection (0, y₀) with the y-axis, or the intersection (x₀, 0) with the x-axis and is combined with the slope m, provided its existence, to establish the equation for the according line. Generalizing this approach to an arbitrary point with coordinates (x₁, y₁) yields:[3]

_y_ − _y_₁ = _m_(_x_ − _x_₁).

The point-slope form expresses the fact that the differences of the coordinates of an arbitrary point (x, y) and the point (x₁, y₁), both on a straight line are proportional to each other. More precisely, as long as x ≠ x₁ and y ≠ y₁, the nonzero differences x − x₁ and y − y₁ are proportional and the proportionality constants are, respectively, m and 1/m.

Intercept form

For a straight line that crosses both coordinate axes outside the origin, both intercept values exist and are non-zero. This implies that also c is nonzero, and such lines can be specified via the intercept form, that employs these two intercept values to specify an appropriate equation[4]

$$\frac{x}{x_0} + \frac{y}{y_0} = 1.$$

The intercept form results from moving c in the equation ax + by + c = 0 to the right side, and then multiplying both sides of the equation with  − 1/c, yielding

$$(-\frac a c) x + (-\frac b c) y = \frac 1{x_0}x + \frac 1 {y_0}y = 1,$$

which is identical to the above form. The intercept form also works conveniently in higher dimensions for specifying (hyper)planes, when their intersections with all coordinate axes exist and are known.

Two-point form

Two points (x₁, y₁) and (x₂, y₂) with x₁ ≠ x₂ (no vertical lines!) determine the slope of the line through these points. This slope, calculated as above, can be used with either point to employ the point-slope form, thereby establishing appropriate equations for this line, based on two points with different x-values. This yields [5]

$$y - y_j = \frac{y_2 - y_1}{x_2 - x_1} (x - x_j),\quad$$
for j = 1, 2.

In the rest of this paragraph j = 1 is used.

Expanded form

Expanding, regrouping, and appropriately factoring the products leads to

(_y_₁ − _y_₂)_x_ + (_x_₂ − _x_₁)_y_ + (_x_₁_y_₂ − _x_₂_y_₁) = 0,

identifying:  a = (y₁ − y₂), b = (x₂ − x₁),  and  c = (x₁y₂ − x₂y₁).

Symmetric form

Multiplying both sides of the 2-point form by (x₂ − x₁) yields an equation in a symmetric form

(_x_₂ − _x_₁)(_y_ − _y_₁) = (_y_₂ − _y_₁)(_x_ − _x_₁).

This form also works in the case of a non-existing slope (x₁ = x₂), but requires y₁ ≠ y₂ in this case:

Determinant form

The products in the above equation result also from the evaluation of a 2-rowed determinant, inducing this form of the linear equation:

$$\begin{vmatrix}x-x_1&y-y_1\\x_2-x_1&y_2-y_1\end{vmatrix}=0.$$

Mnemonic determinant

The products on the left hand side of the expanded version can be reproduced by evaluating the easily memorized 3-rowed determinant, which can be justified by the theory of projective geometry:

$$\begin{vmatrix}
x&y&1\\
x_1&y_1&1\\
x_2&y_2&1
\end{vmatrix}=0.$$

Vectorial treatment

Any pair of numbers (x, y) may be treated as a vector, given by two components with respect to a Cartesian coordinate system. A (naive) vector starts at the origin (0, 0), and ends at the given coordinates. Any two non-collinear vectors (a₁, a₂) and (b₁, b₂) span a parallelogram, with these three points. The area A of this parallelogramm can be calculated as the magnitude of the exterior product (2dim-cross product, geometric product, ...) of these vectors. In components this can be done by evaluating the absolute value of a determinant with the components:

$$A= \left|\begin{vmatrix}a_1 & a_2 \\b_1 & b_2\end{vmatrix}\right |.$$

Two given points P₁ = (x₁, y₁), P₂ = (x₂, y₂) and an arbitrary third point P = (x, y) are on one straight line (collinear), if, e.g., the vector from P₁ to P₂ and the vector from P₁ to P span _no_ parallelogram, i.e., a parallelogram with area zero, i.e., also the vectors are collinear.

The vector from point P₁ to point P₂ can be expressed as

_P_₁₂ = _P_₂ − _P_₁ = (_x_₂, _y_₂) − (_x_₁, _y_₁) = (_x_₂ − _x_₁, _y_₂ − _y_₁)
and similarly the vector from point P₁ to an arbitrary point P is

_P__(1.) = _P_ − _P_₁ = (_x_, _y_) − (_x_₁, _y_₁) = (_x_ − _x_₁, _y_ − _y_₁).

Equating the exterior product of these two vectors, as specified above, to zero, yields a linear equation

$$\begin{vmatrix}x-x_1&y-y_1\\x_2-x_1&y_2-y_1\end{vmatrix} = 0,$$

which is identical to the determinant form above.

Matrix form

Writing a linear equation in two unknowns in the form

_A__x_ + _B__y_ = _C_,

and considering the collection of coefficients (A, B) as a (1, 2)-matrix, and the collection of variables $\begin{pmatrix}x\\y\end{pmatrix}$ as then their matrix product equals the (1, 1)-matrix $\begin{pmatrix} C \end{pmatrix}:$

$$\begin{pmatrix} A&B \end{pmatrix}\begin{pmatrix}x\\y\end{pmatrix} = \begin{pmatrix}C\end{pmatrix}.$$

This notation can easily expanded to more linear equations in more than two variables. For example, a system of two equations in two variables

    A₁x + B₁y = C₁, 
    A₂x + B₂y = C₂, 

can be denoted with a (2, 2)-matrix and a (2, 1)-matrix for the coefficients, by equaling the matrix product of the (2, 2)-coefficient matrix with the (2, 1)-variable matrix to the (2, 1)-matrix of the constant terms:

$$\begin{pmatrix}
A_1&B_1\\
A_2 & B_2
\end{pmatrix}
\begin{pmatrix}
x\\y
\end{pmatrix} =
\begin{pmatrix}
C_1\\
C_2
\end{pmatrix}.$$

A system of three linear equations in four variables would employ a (3, 4)-matrix for the coefficients of the variables, which, multiplied with the (4, 1)-(column)-matrix of the variables, is equaled to the (3, 1)-matrix of the constant terms. For this ready extendability to higher dimensions, the matrix notation is a common representation tool for a system of linear equations, in linear algebra, and in computer programming. There are named methods for solving systems of linear equations, like Gauss-Jordan which can be expressed in matrix elementary row operations.

Parametric form

The parametric form of a curve is useful to e.g. describe the movement of a point along this curve, and controlling this movement with a single parameter. This setting resembles the task in physics, where a particle starts at time t = 0 at some point in space, say (h, k), and travels along the curve, where it reaches point (p, q) at time t = 1. With linear equations the curves are restricted to straight lines.

This task can be solved by adding a motion from h → p in the direction of the x-axis and a simultaneous motion from k → q in the direction of the y-axis, both motions controlled by the parameter t. The motion in the x-direction can be described as

_x_ = (_p_ − _h_)_t_ + _h_
and similarly, the motion in the y-direction can be described as

_y_ = (_q_ − _k_)_t_ + _k_.

These two linear equations, with variables (t, x) and (t, y), make up a _parametric form_ for a linear equation with variables (x, y) that can be constructed from the two-point form with (h, k) and (p, q) as points.

For t = 0: (x, y)|_(t = 0) = (h, k)  and for t = 1: (x, y))|_(t = 1) = (p, q). For all t in the interval [0, 1] the point (x, y)|_(t) is on the straight line segment connecting the points for t = 0 and t = 1. This is sometimes called interpolation. For values of t outside this interval, points outside of the segment, but still on the line are addressed extrapolation.

Connection with linear functions

A linear equation, written in the form _y_ = _f_(_x_) whose graph crosses the origin (_x_,_y_) = (0,0), that is, whose _y_-intercept is 0, has the following properties:

-   Additivity: $f ( x_1 + x_2 ) = f ( x_1) + f ( x_2 )\$
-   Homogeneity of degree 1: f(ax) = af(x), 

where _a_ is any scalar. A function which satisfies these properties is called a _linear function_ (or _linear operator_, or more generally a _linear map_). However, linear equations that have non-zero _y_-intercepts, when written in this manner, produce functions which will have neither property above and hence are not linear functions in this sense. They are known as affine functions.

Example

An everyday example of the use of different forms of linear equations is computation of tax with tax brackets. This is commonly done with a progressive tax computation, using either point–slope form or slope–intercept form.


More than two variables

For the general case of a linear equation with n > 2 unknowns the equation may always be assumed to be denoted as at the top

_a_₁_x_₁ + _a_₂_x_₂ + ⋯ + _a__(_n_)_x__(_n_) + _b_ = 0.

Sometimes b is called the _absolute term_, and the term _coefficient_ is reserved for the a_(i). A variant to denote b, stemming from the use in polynomials, is to write a₀ instead, alluding to the zeroth power of any variable, that always reduces to 1.

When dealing with n = 3 variables, it is common to use x, y and z instead of indexed variables.

The set of solutions of such an equation is a set of n-tuples, and each n-tuple makes the equation an identity, when its components are inserted for the respective unknowns. The values of the variables with zero coefficients are taken arbitrarily from the field of coefficients.

For an equation to have meaningful solutions, at least one coefficient must be non-zero. This can be formulated as

$$a_1^2 + a_2^2 +\cdots + a_n^2 = \textstyle\sum_{i=1}^n a_i^2 > 0.$$

If all coefficients a_(i) equal zero, then, as mentioned for one variable, the equation is either _inconsistent_ (for b ≠ 0) and there is no solution, or all are solutions.

The set of solutions of a linear equation in is an hyperplane in an Euclidean space (or affine space if the coefficients are complex numbers or belong to any field). Within the usual setting of real numbers and a three-dimensional space with Cartesian coordinates, the set of the solutions of a linear equation with three variables describes a plane in the intuitive sense.

A given equation may be solved for all variables with a non-zero coefficient. Let j be an index such that a_(j) ≠ 0, then

$$x_j = -(\tfrac b{a_j} +\tfrac {a_1}{a_j}x_1 + \cdots + 0\cdot x_j+ \cdots +\tfrac {a_n}{a_j}x_n).$$

This way the linear equation can be seen as defining a function of (n − 1) variables, which maps, assuming the setting of reals, the set of of reals to the real numbers, i.e.:

_x__(_j_): ℝ^(_n_ − 1) → ℝ


See also

-   Line (geometry)
-   Linear function
-   Linear equation over a ring
-   Algebraic equation
-   Linear belief function
-   Linear inequality


Notes


References

-   -   -


External links

-   Linear Equations and Inequalities Open Elementary Algebra textbook chapter on linear equations and inequalities.
-

Category:Elementary algebra Category:Equations

[1]

[2]

[3]

[4]

[5]