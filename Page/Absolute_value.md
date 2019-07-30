of the absolute value function for real numbers]] In mathematics, the ABSOLUTE VALUE or MODULUS _x_{{!}}}} of a real number  is the non-negative value of  without regard to its sign. Namely, _x_{{!}} = _x_}} for a positive , _x_{{!}} = −_x_}} for a negative  (in which case is positive), and 0{{!}} = 0}}. For example, the absolute value of 3 is 3, and the absolute value of −3 is also 3. The absolute value of a number may be thought of as its distance from zero.

Generalisations of the absolute value for real numbers occur in a wide variety of mathematical settings. For example, an absolute value is also defined for the complex numbers, the quaternions, ordered rings, fields and vector spaces. The absolute value is closely related to the notions of magnitude, distance, and norm in various mathematical and physical contexts.


Terminology and notation

In 1806, Jean-Robert Argand introduced the term _module_, meaning _unit of measure_ in French, specifically for the _complex_ absolute value,[1][2] and it was borrowed into English in 1866 as the Latin equivalent _modulus_.[3] The term _absolute value_ has been used in this sense from at least 1806 in French[4] and 1857 in English.[5] The notation _x_{{!}}}}, with a vertical bar on each side, was introduced by Karl Weierstrass in 1841.[6] Other names for _absolute value_ include _numerical value_[7] and _magnitude_.[8] In programming languages and computational software packages, the absolute value of _x_ is generally represented by abs(_x_), or a similar expression.

The vertical bar notation also appears in a number of other mathematical contexts: for example, when applied to a set, it denotes its cardinality; when applied to a matrix, it denotes its determinant. Vertical bars denote the absolute value only for algebraic objects for which the notion of an absolute value is defined, notably an element of a normed division algebra, for example a real number, a complex number, or a quaternion. A closely related but distinct notation is the use of vertical bars for either the euclidean norm[9] or sup norm[10] of a vector in ℝ^(n), although double vertical bars with subscripts (|| ⋅ ||₂ and || ⋅ ||_(∞), respectively) are a more common and less ambiguous notation.


Definition and properties

Real numbers

For any real number , the ABSOLUTE VALUE or MODULUS of  is denoted by _x_{{!}}}} (a vertical bar on each side of the quantity) and is defined as[11]

$$|x| = \left\{
   \begin{array}{rl}
     x, & \text{if }  x \geq 0 \\
     -x, & \text{if } x < 0.
   \end{array}\right.$$

The absolute value of  is thus always either positive or zero, but never negative: when itself is negative (), then its absolute value is necessarily positive (_x_{{!}} {{=}} −_x_ > 0}}).

From an analytic geometry point of view, the absolute value of a real number is that number's distance from zero along the real number line, and more generally the absolute value of the difference of two real numbers is the distance between them. Indeed, the notion of an abstract distance function in mathematics can be seen to be a generalisation of the absolute value of the difference (see "Distance" below).

Since the square root symbol represents the unique _positive_ square root (when applied to a positive number), it follows that

$$|x| = \sqrt{x^2}$$

is equivalent to the definition above, and may be used as an alternative definition of the absolute value of real numbers.[12]

The absolute value has the following four fundamental properties (_a_, _b_ are real numbers), that are used for generalization of this notion to other domains:

    {|

|- | style="width: 250px" ||a| ≥ 0 | Non-negativity |- ||a| = 0 ⇔ a = 0 |Positive-definiteness |- ||ab| = |a| |b| |Multiplicativity |- ||a + b| ≤ |a| + |b| | Subadditivity, specifically the triangle inequality |}

Non-negativity, positive definiteness, and multiplicativity are readily apparent from the definition. To see that subadditivity holds, first note that one of the two alternatives of taking as either or guarantees that s ⋅ (a + b) = |a + b| ≥ 0. Now, since  − 1 ⋅ x ≤ |x| and  + 1 ⋅ x ≤ |x|, it follows that, whichever is the value of , one has s ⋅ x ≤ |x| for all real x. Consequently, |a + b| = s ⋅ (a + b) = s ⋅ a + s ⋅ b ≤ |a| + |b|, as desired. (For a generalization of this argument to complex numbers, see "Proof of the triangle inequality for complex numbers" below.)

Some additional useful properties are given below. These are either immediate consequences of the definition or implied by the four fundamental properties above.

    {|

|- | style="width:250px" || |a| | = |a| |Idempotence (the absolute value of the absolute value is the absolute value) |- | style="width:250px" || − a| = |a| |Evenness (reflection symmetry of the graph) |- ||a − b| = 0 ⇔ a = b |Identity of indiscernibles (equivalent to positive-definiteness) |- ||a − b| ≤ |a − c| + |c − b| |Triangle inequality (equivalent to subadditivity) |- |$\left|\frac{a}{b}\right| = \frac{|a|}{|b|}\$ (if b ≠ 0) |Preservation of division (equivalent to multiplicativity) |- ||a − b| ≥ | |a| − |b| | |Reverse triangle inequality (equivalent to subadditivity) |}

Two other useful properties concerning inequalities are:

|_a_| ≤ _b_ ⇔  − _b_ ≤ _a_ ≤ _b_

$$|a| \ge b \iff a \le -b\$$
or a ≥ b

These relations may be used to solve inequalities involving absolute values. For example:

    {|

|- ||x − 3| ≤ 9 | ⇔  − 9 ≤ x − 3 ≤ 9 |- | | ⇔  − 6 ≤ x ≤ 12 |}

The absolute value, as "distance from zero", is used to define the absolute difference between arbitrary real numbers, the standard metric on the real numbers.

Complex numbers

 z̄ have the same absolute value.]]

Since the complex numbers are not ordered, the definition given at the top for the real absolute value cannot be directly applied to complex numbers. However, the geometric interpretation of the absolute value of a real number as its distance from 0 can be generalised. The absolute value of a complex number is defined by the Euclidean distance of its corresponding point in the complex plane from the origin. This can be computed using the Pythagorean theorem: for any complex number

_z_ = _x_ + _i__y_,

where and are real numbers, the ABSOLUTE VALUE or MODULUS of  is denoted _z_{{!}}}} and is defined by[13]

$$|z| =  \sqrt{[\mathrm{Re}(z)]^2 + [\mathrm{Im}(z)]^2}=\sqrt{x^2 + y^2},$$

where Re(_z_) = _x_ and Im(_z_) = _y_ denote the real and imaginary parts of _z_, respectively. When the imaginary part is zero, this coincides with the definition of the absolute value of the real number .

When a complex number  is expressed in its polar form as

_z_ = _r__e_^(_i__θ_),

with $r = \sqrt{[\mathrm{Re}(z)]^2 + [\mathrm{Im}(z)]^2} \ge 0$ (and is the argument (or phase) of _z_), its absolute value is

|_z_| = _r_
.

Since the product of any complex number  and its complex conjugate z̄ = x − iy, with the same absolute value, is always the non-negative real number (x² + y²), the absolute value of a complex number can be conveniently expressed as

$$|z| = \sqrt{z \cdot \overline{z}},$$

resembling the alternative definition for reals: $|x| = \sqrt{x\cdot x}.$

The complex absolute value shares the four fundamental properties given above for the real absolute value.

In the language of group theory, the multiplicative property may be rephrased as follows: the absolute value is a group homomorphism from the multiplicative group of the complex numbers onto the group under multiplication of positive real numbers.[14]

Importantly, the property of subadditivity ("triangle inequality") extends to any finite collection of  complex

$$\Bigg| \sum_{k=1}^n z_k\Bigg|\leq\sum_{k=1}^n |z_k|.\quad\quad (*)$$
This inequality also applies to infinite families, provided that the infinite series $\sum_{k=1}^\infty z_k$ is absolutely convergent. If Lebesgue integration is viewed as the continuous analog of summation, then this inequality is analogously obeyed by complex-valued, measurable functions f : ℝ → ℂ when integrated over a measurable subset E:

|∫_(_E_)_f_ _d__x_| ≤ ∫_(_E_)|_f_| _d__x_.  ( *  * )
(This includes Riemann-integrable functions over a bounded interval [a, b] as a special case.)

Proof of the complex triangle inequality

The triangle inequality, as given by ( * ), can be demonstrated by applying three easily verified properties of the complex numbers: Namely, for every complex number z ∈ ℂ,

    (i): there exists c ∈ ℂ such that |c| = 1 and |z| = c ⋅ z;
    (ii): Re(z) ≤ |z|.

Also, for a family of complex numbers (w_(k))_(k = 1)^(n), ∑_(k)w_(k) = ∑_(k)Re(w_(k)) + i∑_(k)Im(w_(k)). In particular,

    (iii): if \sum_k w_k \in

\mathbb{R}, then ∑_(k)w_(k) = ∑_(k)Re(w_(k)).

_PROOF OF'' ( * )_:'' Choose c ∈ ℂ such that |c| = 1 and |∑_(k)z_(k)| = c(∑_(k)z_(k)) (summed over k = 1, …, n). The following computation then affords the desired inequality:

$$\Big|\sum_k z_k\Big|\; \overset{(i)} {=}\; c\Big(\sum_k z_k\Big) = \sum_k cz_k\; \overset{(iii)} {=}\;\sum_k\mathrm{Re}(cz_k)\; \overset{(ii)} {\le}\; \sum_k |cz_k| = \sum_k |c||z_k| = \sum_k|z_k|$$
.

It is clear from this proof that equality holds in ( * ) exactly if all the cz_(k) are non-negative real numbers, which in turn occurs exactly if all nonzero z_(k) have the same argument, i.e., z_(k) = a_(k)ζ for a complex constant ζ and real constants a_(k) ≥ 0 for 1 ≤ k ≤ n.

Since f measurable implies that |f| is also measurable, the proof of the inequality ( *  * ) proceeds via the same technique, by replacing ∑_(k)( ⋅ ) with ∫_(E)( ⋅ ) dx and z_(k) with f(x).[15]


Absolute value function

of the absolute value function for real numbers]] of absolute value with a cubic function in different orders]] The real absolute value function is continuous everywhere. It is differentiable everywhere except for  = 0. It is monotonically decreasing on the interval and monotonically increasing on the interval . Since a real number and its opposite have the same absolute value, it is an even function, and is hence not invertible. The real absolute value function is a piecewise linear, convex function.

Both the real and complex functions are idempotent.

Relationship to the sign function

The absolute value function of a real number returns its value irrespective of its sign, whereas the sign (or signum) function returns a number's sign irrespective of its value. The following equations show the relationship between these two functions:

$$|x| = x \sgn(x),$$
or

$$|x| \sgn(x) = x,$$
and for ,

$$\sgn(x) = \frac{|x|}{x} = \frac{x}{|x|}.$$

Derivative

The real absolute value function has a derivative for every , but is not differentiable at . Its derivative for is given by the step function:[16][17]

$$\frac{d|x|}{dx} = \frac{x}{|x|} = \begin{cases} -1 & x<0 \\  1 & x>0. \end{cases}$$

The subdifferential of _x_{{!}}}} at  is the interval .[18]

The complex absolute value function is continuous everywhere but complex differentiable _nowhere_ because it violates the Cauchy–Riemann equations.[19]

The second derivative of _x_{{!}}}} with respect to  is zero everywhere except zero, where it does not exist. As a generalised function, the second derivative may be taken as two times the Dirac delta function.

Antiderivative

The antiderivative (indefinite integral) of the real absolute value function is

$$\int|x|dx=\frac{x|x|}{2}+C,$$

where is an arbitrary constant of integration. This is not a complex antiderivative because complex antiderivatives can only exist for complex-differentiable (holomorphic) functions, which the complex absolute value function is not.


Distance

The absolute value is closely related to the idea of distance. As noted above, the absolute value of a real or complex number is the distance from that number to the origin, along the real number line, for real numbers, or in the complex plane, for complex numbers, and more generally, the absolute value of the difference of two real or complex numbers is the distance between them.

The standard Euclidean distance between two points

_a_ = (_a_₁, _a_₂, …, _a__(_n_))

and

_b_ = (_b_₁, _b_₂, …, _b__(_n_))

in [[Euclidean_space|Euclidean }}, is defined to be:[20]

$$|a| = \left\{
   \begin{array}{rl}
     a, & \text{if }  a \geq 0 \\
     -a, & \text{if } a < 0.
   \end{array}\right.$$

where is the additive inverse of , 0 is the additive identity element, and < and ≥ have the usual meaning with respect to the ordering in the ring.

Fields

The four fundamental properties of the absolute value for real numbers can be used to generalise the notion of absolute value to an arbitrary field, as follows.

A real-valued function  on a field  is called an _absolute value_ (also a _modulus_, _magnitude_, _value_, or _valuation_)[21] if it satisfies the following four axioms:

    {| cellpadding=10

|- |v(a) ≥ 0 |Non-negativity |- |v(a) = 0 ⇔ a = 0 |Positive-definiteness |- |v(ab) = v(a)v(b) |Multiplicativity |- |v(a + b) ≤ v(a) + v(b) |Subadditivity or the triangle inequality |}

Where 0 denotes the additive identity element of . It follows from positive-definiteness and multiplicativity that , where 1 denotes the multiplicative identity element of . The real and complex absolute values defined above are examples of absolute values for an arbitrary field.

If is an absolute value on , then the function  on , defined by , is a metric and the following are equivalent:

-   satisfies the ultrametric inequality d(x, y) ≤ max (d(x, z), d(y, z)) for all , , in .

-   $\big\{ v\Big({\textstyle \sum_{k=1}^n } \mathbf{1}\Big) : n \in \mathbb{N} \big\}$ is bounded in R.
-   $v\Big({\textstyle \sum_{k=1}^n } \mathbf{1}\Big) \le 1\$ for every n ∈ ℕ.
-   $v(a) \le 1 \Rightarrow v(1+a) \le 1\$ for all a ∈ F.
-   $v(a + b) \le \mathrm{max}\{v(a), v(b)\}\$ for all a, b ∈ F.

An absolute value which satisfies any (hence all) of the above conditions is said to be NON-ARCHIMEDEAN, otherwise it is said to be Archimedean.[22]

Vector spaces

Again the fundamental properties of the absolute value for real numbers can be used, with a slight modification, to generalise the notion to an arbitrary vector space.

A real-valued function on a vector space  over a field , represented as , is called an ABSOLUTE VALUE, but more usually a NORM, if it satisfies the following axioms:

For all  in , and , in ,

    {| cellpadding=10

|- |∥V∥ ≥ 0 |Non-negativity |- |∥V∥ = 0 ⇔ V = 0 |Positive-definiteness |- |∥aV∥ = |a|∥V∥ |Positive homogeneity or positive scalability |- |∥V + U∥ ≤ ∥V∥ + ∥U∥ |Subadditivity or the triangle inequality |}

The norm of a vector is also called its _length_ or _magnitude_.

In the case of Euclidean space , the function defined by

$$\|(x_1, x_2, \dots , x_n) \| = \sqrt{\textstyle\sum_{i=1}^{n} x_i^2}$$

is a norm called the Euclidean norm. When the real numbers  are considered as the one-dimensional vector space , the absolute value is a norm, and is the -norm (see L^(p) space) for any . In fact the absolute value is the "only" norm on , in the sense that, for every norm on , _x_{{!}}}}. The complex absolute value is a special case of the norm in an inner product space. It is identical to the Euclidean norm, if the complex plane is identified with the Euclidean plane .

Composition algebras

Every composition algebra _A_ has an involution _x_ → _x_* called its CONJUGATION. The product in _A_ of an element _x_ and its conjugate _x_* is written _N_(_x_) = _x x_* and called the NORM OF X.

The real numbers ℝ, complex numbers ℂ, and quaternions ℍ are all composition algebras with norms given by definite quadratic forms. The absolute value in these division algebras is given by the square root of the composition algebra norm.

In general the norm of a composition algebra may be a quadratic form that is not definite and has null vectors. However, as in the case of division algebras, when an element _x_ has a non-zero norm, then _x_ has a multiplicative inverse given by _x_*/_N_(_x_).


Notes


References

-   Bartle; Sherbert; _Introduction to real analysis_ (4th ed.), John Wiley & Sons, 2011 .
-   Nahin, Paul J.; _An Imaginary Tale_; Princeton University Press; (hardcover, 1998). .
-   Mac Lane, Saunders, Garrett Birkhoff, _Algebra_, American Mathematical Soc., 1999. .
-   Mendelson, Elliott, _Schaum's Outline of Beginning Calculus_, McGraw-Hill Professional, 2008. .
-   O'Connor, J.J. and Robertson, E.F.; "Jean Robert Argand".
-   Schechter, Eric; _Handbook of Analysis and Its Foundations_, pp. 259–263, "Absolute Values", Academic Press (1997) .


External links

-   -   -

Category:Special functions Category:Real numbers Category:Norms (mathematics)

[1] Oxford English Dictionary, Draft Revision, June 2008

[2] Nahin, O'Connor and Robertson, and functions.Wolfram.com.; for the French sense, see Littré, 1877

[3]

[4] Lazare Nicolas M. Carnot, _Mémoire sur la relation qui existe entre les distances respectives de cinq point quelconques pris dans l'espace_, p. 105 at Google Books

[5] James Mill Peirce, _A Text-book of Analytic Geometry_ at Google Books. The oldest citation in the 2nd edition of the Oxford English Dictionary is from 1907. The term _absolute value_ is also used in contrast to _relative value_.

[6] Nicholas J. Higham, _Handbook of writing for the mathematical sciences_, SIAM. , p. 25

[7]

[8]

[9]

[10]

[11] Mendelson, p. 2.

[12] , p. A5

[13]

[14] .

[15]

[16] Weisstein, Eric W. _Absolute Value._ From MathWorld – A Wolfram Web Resource.

[17] Bartel and Sherbert, p. 163

[18] Peter Wriggers, Panagiotis Panatiotopoulos, eds., _New Developments in Contact Problems_, 1999, , p. 31–32

[19]

[20] Mac Lane, p. 264.

[21] Shechter, p. 260. This meaning of _valuation_ is rare. Usually, a valuation is the logarithm of the inverse of an absolute value

[22] Shechter, pp. 260–261.