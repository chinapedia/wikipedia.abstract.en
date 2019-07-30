In mathematics, an INTEGRAL assigns numbers to functions in a way that can describe displacement, area, volume, and other concepts that arise by combining infinitesimal data. Integration is one of the two main operations of calculus, with its inverse operation, differentiation, being the other. Given a function of a real variable and an interval of the real line, the DEFINITE INTEGRAL

    ∫_(a)^(b)f(x) dx

is defined informally as the signed area of the region in the -plane that is bounded by the graph of , the -axis and the vertical lines _a_}} and _b_}}. The area above the -axis adds to the total and that below the -axis subtracts from the total.

The operation of integration, up to an additive constant, is the inverse of the operation of differentiation. For this reason, the term _integral_ may also refer to the related notion of the antiderivative, a function whose derivative is the given function . In this case, it is called an indefinite integral and is written:

_F_(_x_) = ∫_f_(_x_) _d__x_.

The integrals discussed in this article are those termed _definite integrals_. It is the fundamental theorem of calculus that connects differentiation with the definite integral: if is a continuous real-valued function defined on a closed interval , then, once an antiderivative of is known, the definite integral of over that interval is given by

∫_(_a_)^(_b_) _f_(_x_)_d__x_ = [_F_(_x_)]_(_a_)^(_b_) = _F_(_b_) − _F_(_a_) .

The principles of integration were formulated independently by Isaac Newton and Gottfried Wilhelm Leibniz in the late 17th century, who thought of the integral as an infinite sum of rectangles of infinitesimal width. Bernhard Riemann gave a rigorous mathematical definition of integrals. It is based on a limiting procedure that approximates the area of a curvilinear region by breaking the region into thin vertical slabs. Beginning in the 19th century, more sophisticated notions of integrals began to appear, where the type of the function as well as the domain over which the integration is performed has been generalised. A line integral is defined for functions of two or more variables, and the interval of integration is replaced by a curve connecting the two endpoints. In a surface integral, the curve is replaced by a piece of a surface in three-dimensional space.


History

Pre-calculus integration

The first documented systematic technique capable of determining integrals is the method of exhaustion of the ancient Greek astronomer Eudoxus (_ca._ 370 BC), which sought to find areas and volumes by breaking them up into an infinite number of divisions for which the area or volume was known. This method was further developed and employed by Archimedes in the 3rd century BC and used to calculate areas for parabolas and an approximation to the area of a circle.

A similar method was independently developed in China around the 3rd century AD by Liu Hui, who used it to find the area of the circle. This method was later used in the 5th century by Chinese father-and-son mathematicians Zu Chongzhi and Zu Geng to find the volume of a sphere (; ).

In the Middle East, Hasan Ibn al-Haytham, Latinized as Alhazen ( ) derived a formula for the sum of fourth powers. He used the results to carry out what would now be called an integration of this function, where the formulae for the sums of integral squares and fourth powers allowed him to calculate the volume of a paraboloid.[1]

The next significant advances in integral calculus did not begin to appear until the 17th century. At this time, the work of Cavalieri with his method of Indivisibles, and work by Fermat, began to lay the foundations of modern calculus, with Cavalieri computing the integrals of up to degree 9}} in Cavalieri's quadrature formula. Further steps were made in the early 17th century by Barrow and Torricelli, who provided the first hints of a connection between integration and differentiation. Barrow provided the first proof of the fundamental theorem of calculus. Wallis generalized Cavalieri's method, computing integrals of to a general power, including negative powers and fractional powers.

Newton and Leibniz

The major advance in integration came in the 17th century with the independent discovery of the fundamental theorem of calculus by Newton and Leibniz. The theorem demonstrates a connection between integration and differentiation. This connection, combined with the comparative ease of differentiation, can be exploited to calculate integrals. In particular, the fundamental theorem of calculus allows one to solve a much broader class of problems. Equal in importance is the comprehensive mathematical framework that both Newton and Leibniz developed. Given the name infinitesimal calculus, it allowed for precise analysis of functions within continuous domains. This framework eventually became modern calculus, whose notation for integrals is drawn directly from the work of Leibniz.

Formalization

While Newton and Leibniz provided a systematic approach to integration, their work lacked a degree of rigour. Bishop Berkeley memorably attacked the vanishing increments used by Newton, calling them "ghosts of departed quantities". Calculus acquired a firmer footing with the development of limits. Integration was first rigorously formalized, using limits, by Riemann. Although all bounded piecewise continuous functions are Riemann-integrable on a bounded interval, subsequently more general functions were considered—particularly in the context of Fourier analysis—to which Riemann's definition does not apply, and Lebesgue formulated a different definition of integral, founded in measure theory (a subfield of real analysis). Other definitions of integral, extending Riemann's and Lebesgue's approaches, were proposed. These approaches based on the real number system are the ones most common today, but alternative approaches exist, such as a definition of integral as the standard part of an infinite Riemann sum, based on the hyperreal number system.

Historical notation

Isaac Newton used a small vertical bar above a variable to indicate integration, or placed the variable inside a box. The vertical bar was easily confused with or , which are used to indicate differentiation, and the box notation was difficult for printers to reproduce, so these notations were not widely adopted.

The modern notation for the indefinite integral was introduced by Gottfried Wilhelm Leibniz in 1675 (; ). He adapted the integral symbol, ∫, from the letter _ſ_ (long s), standing for _summa_ (written as _ſumma_; Latin for "sum" or "total"). The modern notation for the definite integral, with limits above and below the integral sign, was first used by Joseph Fourier in _Mémoires_ of the French Academy around 1819–20, reprinted in his book of 1822 (; ).


Applications

Integrals are used extensively in many areas of mathematics as well as in many other areas that rely on mathematics.

For example, in probability theory, integrals are used to determine the probability of some random variable falling within a certain range. Moreover, the integral under an entire probability density function must equal 1, which provides a test of whether a function with no negative values could be a density function or not.

Integrals can be used for computing the area of a two-dimensional region that has a curved boundary, as well as computing the volume of a three-dimensional object that has a curved boundary. The area of a two-dimensional region can be calculated using the aforementioned definite integral.

The volume of a three-dimensional object such as a disc or washer, as outlined in Disc integration can be computed using the equation for the volume of a cylinder, πr²h, where r is the radius, which in this case would be the distance from the curve of a function to the line about which it is being rotated. For a simple disc, the radius will be the equation of the function minus the given x-value or y-value of the line. For instance, the radius of a disc created by rotating a quadratic y =  − x² + 4 around the line y =  − 1 would be given by the expression  − x² + 4 − ( − 1)or  − x² + 5. In order to find the volume for this same shape, an integral with bounds a and b such that a and b are intersections of the line y =  − x² + 4 and y =  − 1 would be used as follows
_π_∫_(_a_)^(_b_)( − _x_² + 5)²_d__x_
The components of the above integral represent the variables in the equation for the volume of a cylinder, πr²h. The constant pi is factored out, while the radius,  − x² + 5, is squared within the integral. The height, represented in the volume formula by h, is given in this integral by the infinitesimally small (in order to approximate the volume with the greatest possible accuracy) term dx.

Integrals are also used in physics, in areas like kinematics to find quantities like displacement, time, and velocity. For example, in rectilinear motion, the displacement of an object over the time interval [a, b] is given by:

_x_(_b_) − _x_(_a_) = ∫_(_a_)^(_b_)_v_(_t_) _d__t_,

where v(t) is the velocity expressed as a function of time. The work done by a force F(x) (given as a function of position) from an initial position A to a final position B is:

_W__(_A_ → _B_) = ∫_(_A_)^(_B_)_F_(_x_) _d__x_.

Integrals are also used in thermodynamics, where thermodynamic integration is used to calculate the difference in free energy between two given states.


Terminology and notation

Standard

The integral with respect to of a real-valued function of a real variable on the interval is written as

∫_(_a_)^(_b_)_f_(_x_) _d__x_
.

The integral sign represents integration. The symbol , called the differential of the variable , indicates that the variable of integration is . The function to be integrated is called the integrand. The symbol is separated from the integrand by a space (as shown). If a function has an integral, it is said to be integrable. The points and are called the limits of the integral. An integral where the limits are specified is called a definite integral. The integral is said to be over the interval .

If the integral goes from a finite value _a_ to the upper limit infinity, the integral expresses the limit of the integral from _a_ to a value _b_ as _b_ goes to infinity. If the value of the integral gets closer and closer to a finite value, the integral is said to converge to that value. If not, the integral is said to diverge.

When the limits are omitted, as in

∫_f_(_x_) _d__x_,
the integral is called an indefinite integral, which represents a class of functions (the antiderivative) whose derivative is the integrand. The fundamental theorem of calculus relates the evaluation of definite integrals to indefinite integrals. Occasionally, limits of integration are omitted for definite integrals when the same limits occur repeatedly in a particular context. Usually, the author will make this convention clear at the beginning of the relevant text.

There are several extensions of the notation for integrals to encompass integration on unbounded domains and/or in multiple dimensions (see later sections of this article).

Meaning of the symbol _dx_

Historically, the symbol _dx_ was taken to represent an infinitesimally "small piece" of the independent variable _x_ to be multiplied by the integrand and summed up in an infinite sense. While this notion is still heuristically useful, later mathematicians have deemed infinitesimal quantities to be untenable from the standpoint of the real number system.[2] In introductory calculus, the expression _dx_ is therefore not assigned an independent meaning; instead, it is viewed as part of the symbol for integration and serves as its delimiter on the right side of the expression being integrated.

In more sophisticated contexts, _dx_ can have its own significance, the meaning of which depending on the particular area of mathematics being discussed. When used in one of these ways, the original Leibnitz notation is co-opted to apply to a generalization of the original definition of the integral. Some common interpretations of _dx_ include: an integrator function in Riemann-Stieltjes integration (indicated by _dα_(_x_) in general), a measure in Lebesgue theory (indicated by _dμ_ in general), or a differential form in exterior calculus (indicated by dx^(i₁) ∧ ⋯ ∧ dx^(i_(k)) in general). In the last case, even the letter _d_ has an independent meaning — as the exterior derivative operator on differential forms.

Conversely, in advanced settings, it is not uncommon to leave out _dx_ when only the simple Riemann integral is being used, or the exact type of integral is immaterial. For instance, one might write ∫_(a)^(b)(c₁f + c₂g) = c₁∫_(a)^(b)f + c₂∫_(a)^(b)g to express the linearity of the integral, a property shared by the Riemann integral and all generalizations thereof.

Variants

In modern Arabic mathematical notation, a reflected integral symbol is used instead of the symbol , since the Arabic script and mathematical expressions go right to left.[3]

Some authors, particularly of European origin, use an upright "d" to indicate the variable of integration (i.e., instead of ), since properly speaking, "d" is not a variable.

The symbol is not always placed after , as for instance in

$$\int\limits_0^1 \frac{3\ dx}{x^2+1}\quad$$
or  ∫₀¹dx∫₀¹dy e^( − (x² + y²)). In the first expression, the differential is treated as an infinitesimal "multiplicative" factor, formally following a "commutative property" when "multiplied" by the expression 3/(_x_²+1). In the second expression, showing the differentials first highlights and clarifies the variables that are being integrated with respect to, a practice particularly popular with physicists.


Interpretations of the integral

Integrals appear in many practical situations. If a swimming pool is rectangular with a flat bottom, then from its length, width, and depth we can easily determine the volume of water it can contain (to fill it), the area of its surface (to cover it), and the length of its edge (to rope it). But if it is oval with a rounded bottom, all of these quantities call for integrals. Practical approximations may suffice for such trivial examples, but precision engineering (of any discipline) requires exact and rigorous values for these elements.

To start off, consider the curve _f_(_x_)}} between 0}} and 1}} with }} (see figure). We ask:

    What is the area under the function , in the interval from 0 to 1?

and call this (yet unknown) area the (definite) INTEGRAL of . The notation for this integral will be

$$\int_0^1 \sqrt{x}\ dx.$$

As a first approximation, look at the unit square given by the sides 0}} to 1}} and _f_(0) {{=}} 0}} and _f_(1) {{=}} 1}}. Its area is exactly 1. Actually, the true value of the integral must be somewhat less than 1. Decreasing the width of the approximation rectangles and increasing the number of rectangles gives a better result; so cross the interval in five steps, using the approximation points 0, 1/5, 2/5, and so on to 1. Fit a box for each step using the right end height of each curve piece, thus , , and so on to 1}}. Summing the areas of these rectangles, we get a better approximation for the sought integral, namely

$$\textstyle \sqrt{\frac{1}{5}}\left(\frac{1}{5}-0\right)+\sqrt{\frac{2}{5}}\left(\frac{2}{5}-\frac{1}{5}\right)+\cdots+\sqrt{\frac{5}{5}}\left(\frac{5}{5}-\frac{4}{5}\right)\approx 0.7497.$$

We are taking a sum of finitely many function values of , multiplied with the differences of two subsequent approximation points. We can easily see that the approximation is still too large. Using more steps produces a closer approximation, but will always be too high and will never be exact. Alternatively, replacing these subintervals by ones with the left end height of each piece, we will get an approximation that is too low: for example, with twelve such subintervals we will get an approximate value for the area of 0.6203.

The key idea is the transition from adding _finitely many_ differences of approximation points multiplied by their respective function values to using infinitely many fine, or _infinitesimal_ steps. When this transition is completed in the above example, it turns out that the area under the curve within the stated bounds is 2/3.

The notation

∫_f_(_x_) _d__x_
conceives the integral as a weighted sum, denoted by the elongated , of function values, , multiplied by infinitesimal step widths, the so-called _differentials_, denoted by .

Historically, after the failure of early efforts to rigorously interpret infinitesimals, Riemann formally defined integrals as a limit of weighted sums, so that the suggested the limit of a difference (namely, the interval width). Shortcomings of Riemann's dependence on intervals and continuity motivated newer definitions, especially the Lebesgue integral, which is founded on an ability to extend the idea of "measure" in much more flexible ways. Thus the notation

∫_(_A_)_f_(_x_) _d__μ_
refers to a weighted sum in which the function values are partitioned, with measuring the weight to be assigned to each value. Here denotes the region of integration.

|alt1=Upper Darboux sum example

|image2=Riemann Integration and Darboux Lower Sums.gif |width2=300 |caption2=

Darboux lower sums of the function _x_²}}

|alt2=Lower Darboux sum example }}


Formal definitions

There are many ways of formally defining an integral, not all of which are equivalent. The differences exist mostly to deal with differing special cases which may not be integrable under other definitions, but also occasionally for pedagogical reasons. The most commonly used definitions of integral are Riemann integrals and Lebesgue integrals.

Riemann integral

The Riemann integral is defined in terms of Riemann sums of functions with respect to _tagged partitions_ of an interval.[4] Let be a closed interval of the real line; then a _tagged partition_ of is a finite sequence

_a_ = _x_₀ ≤ _t_₁ ≤ _x_₁ ≤ _t_₂ ≤ _x_₂ ≤ ⋯ ≤ _x__(_n_ − 1) ≤ _t__(_n_) ≤ _x__(_n_) = _b_. ​

This partitions the interval into sub-intervals indexed by , each of which is "tagged" with a distinguished point . A _Riemann sum_ of a function with respect to such a tagged partition is defined as

$$\sum_{i=1}^{n} f(t_i) \Delta_i ;$$
thus each term of the sum is the area of a rectangle with height equal to the function value at the distinguished point of the given sub-interval, and width the same as the sub-interval width. Let _x__(_i_)−_x__(_i_−1)}} be the width of sub-interval ; then the _mesh_ of such a tagged partition is the width of the largest sub-interval formed by the partition, 1..._n_ Δ_(_i_)}}. The _Riemann integral_ of a function over the interval is equal to if:

    For all there exists such that, for any tagged partition with mesh less than , we have
    $$\left| S - \sum_{i=1}^{n} f(t_i)\Delta_i \right| < \varepsilon.$$

When the chosen tags give the maximum (respectively, minimum) value of each interval, the Riemann sum becomes an upper (respectively, lower) Darboux sum, suggesting the close connection between the Riemann integral and the Darboux integral.

Lebesgue integral

It is often of interest, both in theory and applications, to be able to pass to the limit under the integral. For instance, a sequence of functions can frequently be constructed that approximate, in a suitable sense, the solution to a problem. Then the integral of the solution function should be the limit of the integrals of the approximations. However, many functions that can be obtained as limits are not Riemann-integrable, and so such limit theorems do not hold with the Riemann integral. Therefore, it is of great importance to have a definition of the integral that allows a wider class of functions to be integrated .

Such an integral is the Lebesgue integral, that exploits the following fact to enlarge the class of integrable functions: if the values of a function are rearranged over the domain, the integral of a function should remain the same. Thus Henri Lebesgue introduced the integral bearing his name, explaining this integral thus in a letter to Paul Montel:

As puts it, "To compute the Riemann integral of , one partitions the domain into subintervals", while in the Lebesgue integral, "one is in effect partitioning the range of ". The definition of the Lebesgue integral thus begins with a measure, μ. In the simplest case, the Lebesgue measure of an interval [_a_, _b_]}} is its width, , so that the Lebesgue integral agrees with the (proper) Riemann integral when both exist. In more complicated cases, the sets being measured can be highly fragmented, with no continuity and no resemblance to intervals.

Using the "partitioning the range of " philosophy, the integral of a non-negative function should be the sum over of the areas between a thin horizontal strip between and . This area is just . Let }. The Lebesgue integral of is then defined by

∫_f_ = ∫₀^(∞)_f_^(*)(_t_) _d__t_
where the integral on the right is an ordinary improper Riemann integral ( is a strictly decreasing positive function, and therefore has a well-defined improper Riemann integral). For a suitable class of functions (the measurable functions) this defines the Lebesgue integral.

A general measurable function is Lebesgue-integrable if the sum of the absolute values of the areas of the regions between the graph of and the -axis is finite:

∫_(_E_)|_f_| _d__μ_ <  + ∞.
In that case, the integral is, as in the Riemannian case, the difference between the area above the -axis and the area below the -axis:

∫_(_E_)_f_ _d__μ_ = ∫_(_E_)_f_⁺ _d__μ_ − ∫_(_E_)_f_^(−) _d__μ_
where

$$\begin{alignat}{3}
 & f^+(x) &&{}={} \max \{f(x),0\} &&{}={} \begin{cases}
               f(x), & \text{if } f(x) > 0, \\
               0, & \text{otherwise,}
             \end{cases}\\
 & f^-(x) &&{}={} \max \{-f(x),0\} &&{}={} \begin{cases}
               -f(x), & \text{if } f(x) < 0, \\
               0, & \text{otherwise.}
             \end{cases}
\end{alignat}$$

Other integrals

Although the Riemann and Lebesgue integrals are the most widely used definitions of the integral, a number of others exist, including:

-   The Darboux integral, which is constructed using Darboux sums and is equivalent to a Riemann integral, meaning that a function is Darboux-integrable if and only if it is Riemann-integrable. Darboux integrals have the advantage of being simpler to define than Riemann integrals.
-   The Riemann–Stieltjes integral, an extension of the Riemann integral.
-   The Lebesgue–Stieltjes integral, further developed by Johann Radon, which generalizes the Riemann–Stieltjes and Lebesgue integrals.
-   The Daniell integral, which subsumes the Lebesgue integral and Lebesgue–Stieltjes integral without the dependence on measures.
-   The Haar integral, used for integration on locally compact topological groups, introduced by Alfréd Haar in 1933.
-   The Henstock–Kurzweil integral, variously defined by Arnaud Denjoy, Oskar Perron, and (most elegantly, as the gauge integral) Jaroslav Kurzweil, and developed by Ralph Henstock.
-   The Itô integral and Stratonovich integral, which define integration with respect to semimartingales such as Brownian motion.

-   The Young integral, which is a kind of Riemann–Stieltjes integral with respect to certain functions of unbounded variation.
-   The rough path integral, which is defined for functions equipped with some additional "rough path" structure and generalizes stochastic integration against both semimartingales and processes such as the fractional Brownian motion.


Properties

Linearity

The collection of Riemann-integrable functions on a closed interval forms a vector space under the operations of pointwise addition and multiplication by a scalar, and the operation of integration

_f_ ↦ ∫_(_a_)^(_b_)_f_(_x_) _d__x_
is a linear functional on this vector space. Thus, firstly, the collection of integrable functions is closed under taking linear combinations; and, secondly, the integral of a linear combination is the linear combination of the integrals,

∫_(_a_)^(_b_)(_α__f_ + _β__g_)(_x_) _d__x_ = _α_∫_(_a_)^(_b_)_f_(_x_) _d__x_ + _β_∫_(_a_)^(_b_)_g_(_x_) _d__x_. 

Similarly, the set of real-valued Lebesgue-integrable functions on a given measure space with measure is closed under taking linear combinations and hence form a vector space, and the Lebesgue integral

    f ↦ ∫_(E)f dμ

is a linear functional on this vector space, so that

∫_(_E_)(_α__f_ + _β__g_) _d__μ_ = _α_∫_(_E_)_f_ _d__μ_ + _β_∫_(_E_)_g_ _d__μ_.

More generally, consider the vector space of all measurable functions on a measure space , taking values in a locally compact complete topological vector space over a locally compact topological field . Then one may define an abstract integration map assigning to each function an element of or the symbol ,

_f_ ↦ ∫_(_E_)_f_ _d__μ_, 
that is compatible with linear combinations. In this situation, the linearity holds for the subspace of functions whose integral is an element of (i.e. "finite"). The most important special cases arise when is , , or a finite extension of the field of p-adic numbers, and is a finite-dimensional vector space over , and when C}} and is a complex Hilbert space.

Linearity, together with some natural continuity properties and normalisation for a certain class of "simple" functions, may be used to give an alternative definition of the integral. This is the approach of Daniell for the case of real-valued functions on a set , generalized by Nicolas Bourbaki to functions with values in a locally compact topological vector space. See for an axiomatic characterisation of the integral.

Inequalities

A number of general inequalities hold for Riemann-integrable functions defined on a closed and bounded interval and can be generalized to other notions of integral (Lebesgue and Daniell).

-   _Upper and lower bounds._ An integrable function on , is necessarily bounded on that interval. Thus there are real numbers and so that for all in . Since the lower and upper sums of over are therefore bounded by, respectively, and , it follows that



        m(b − a) ≤ ∫_(a)^(b)f(x) dx ≤ M(b − a).

-   _Inequalities between functions._ If for each in then each of the upper and lower sums of is bounded above by the upper and lower sums, respectively, of . Thus



        ∫_(a)^(b)f(x) dx ≤ ∫_(a)^(b)g(x) dx.

    This is a generalization of the above inequalities, as is the integral of the constant function with value over .
    In addition, if the inequality between functions is strict, then the inequality between integrals is also strict. That is, if for each in , then

        ∫_(a)^(b)f(x) dx < ∫_(a)^(b)g(x) dx.

-   _Subintervals._ If is a subinterval of and is non-negative for all , then



        ∫_(c)^(d)f(x) dx ≤ ∫_(a)^(b)f(x) dx.

-   _Products and absolute values of functions._ If and are two functions, then we may consider their pointwise products and powers, and absolute values:





(fg)(x)= f(x) g(x), \; f^2 (x) = (f(x))^2, \; |f| (x) = |f(x)|.\,

    If is Riemann-integrable on then the same is true for , and

        |∫_(a)^(b)f(x) dx| ≤ ∫_(a)^(b)|f(x)| dx.

    Moreover, if and are both Riemann-integrable then is also Riemann-integrable, and

        (∫_(a)^(b)(fg)(x) dx)² ≤ (∫_(a)^(b)f(x)² dx)(∫_(a)^(b)g(x)² dx).

    This inequality, known as the Cauchy–Schwarz inequality, plays a prominent role in Hilbert space theory, where the left hand side is interpreted as the inner product of two square-integrable functions and on the interval .

-   _Hölder's inequality_. Suppose that and are two real numbers, with 1}}, and and are two Riemann-integrable functions. Then the functions and are also integrable and the following Hölder's inequality holds:

|∫_f_(_x_)_g_(_x_) _d__x_| ≤ (∫|_f_(_x_)|^(_p_) _d__x_)^(1/_p_)(∫|_g_(_x_)|^(_q_) _d__x_)^(1/_q_).

    For = = 2, Hölder's inequality becomes the Cauchy–Schwarz inequality.

-   _Minkowski inequality_. Suppose that is a real number and and are Riemann-integrable functions. Then and are also Riemann-integrable and the following Minkowski inequality holds:

(∫|_f_(_x_)+_g_(_x_)|^(_p_) _d__x_)^(1/_p_) ≤ (∫|_f_(_x_)|^(_p_) _d__x_)^(1/_p_) + (∫|_g_(_x_)|^(_p_) _d__x_)^(1/_p_).

    An analogue of this inequality for Lebesgue integral is used in construction of L^(p) spaces.

Conventions

In this section, is a real-valued Riemann-integrable function. The integral

∫_(_a_)^(_b_)_f_(_x_) _d__x_
over an interval is defined if . This means that the upper and lower sums of the function are evaluated on a partition _x_₀ ≤ _x_₁ ≤ . . . ≤ _x__(_n_) {{=}} _b_}} whose values are increasing. Geometrically, this signifies that integration takes place "left to right", evaluating within intervals where an interval with a higher index lies to the right of one with a lower index. The values and , the end-points of the interval, are called the limits of integration of . Integrals can also be defined if :

-   _Reversing limits of integration._ If then define



        ∫_(a)^(b)f(x) dx =  − ∫_(b)^(a)f(x) dx.

This, with _b_}}, implies:

-   _Integrals over intervals of length zero._ If is a real number then



        ∫_(a)^(a)f(x) dx = 0.

The first convention is necessary in consideration of taking integrals over subintervals of ; the second says that an integral taken over a degenerate interval, or a point, should be zero. One reason for the first convention is that the integrability of on an interval implies that is integrable on any subinterval , but in particular integrals have the property that:

-   _Additivity of integration on intervals._ If is any element of , then



        ∫_(a)^(b)f(x) dx = ∫_(a)^(c)f(x) dx + ∫_(c)^(b)f(x) dx.

With the first convention, the resulting relation

    \begin{align}

\int_a^c f(x) \, dx &{}= \int_a^b f(x) \, dx - \int_c^b f(x) \, dx \\
&{} = \int_a^b f(x) \, dx + \int_b^c f(x) \, dx

\end{align} is then well-defined for any cyclic permutation of , , and .


Fundamental theorem of calculus

The _fundamental theorem of calculus_ is the statement that differentiation and integration are inverse operations: if a continuous function is first integrated and then differentiated, the original function is retrieved. An important consequence, sometimes called the _second fundamental theorem of calculus_, allows one to compute integrals by using an antiderivative of the function to be integrated.

Statements of theorems

Fundamental theorem of calculus

Let be a continuous real-valued function defined on a closed interval . Let be the function defined, for all in , by

_F_(_x_) = ∫_(_a_)^(_x_)_f_(_t_) _d__t_.
Then, is continuous on , differentiable on the open interval , and

_F_′(_x_) = _f_(_x_)

for all in .

Second fundamental theorem of calculus

Let be a real-valued function defined on a closed interval [] that admits an antiderivative on . That is, and are functions such that for all in ,

_f_(_x_) = _F_′(_x_).

If is integrable on then

∫_(_a_)^(_b_)_f_(_x_) _d__x_ = _F_(_b_) − _F_(_a_).

Calculating integrals

The second fundamental theorem allows many integrals to be calculated explicitly. For example, to calculate the integral

∫₀¹_x_^(1/2) _d__x_,
of the square root function _x_^(1/2)}} between 0 and 1, it is sufficient to find an antiderivative, that is, a function whose derivative equals :

_F_′(_x_) = _f_(_x_).
One such function is _x_^(3/2)}}. Then the value of the integral in question is

$$\int_0^1x^{1/2}\,dx = F(1) - F(0) = \frac{2}{3} (1)^{3/2} - \frac{2}{3} (0)^{3/2}=\frac{2}{3}.$$

This is a case of a general rule, that for _x_^(_q_)}}, with , the related function, the so-called antiderivative is _x_^(_q_\ +\ 1)/(_q_ + 1).}} Tables of this and similar antiderivatives can be used to calculate integrals explicitly, in much the same way that tables of derivatives can be used.


Extensions

Improper integrals

$\int_{0}^{\infty} \frac{dx}{(x+1)\sqrt{x}} = \pi$
has unbounded intervals for both domain and range.]] A "proper" Riemann integral assumes the integrand is defined and finite on a closed and bounded interval, bracketed by the limits of integration. An improper integral occurs when one or more of these conditions is not satisfied. In some cases such integrals may be defined by considering the limit of a sequence of proper Riemann integrals on progressively larger intervals.

If the interval is unbounded, for instance at its upper end, then the improper integral is the limit as that endpoint goes to infinity.

∫_(_a_)^(∞)_f_(_x_) _d__x_ = lim_(_b_ → ∞)∫_(_a_)^(_b_)_f_(_x_) _d__x_
If the integrand is only defined or finite on a half-open interval, for instance , then again a limit may provide a finite result.

∫_(_a_)^(_b_)_f_(_x_) _d__x_ = lim_(_ϵ_ → 0)∫_(_a_ + _ϵ_)^(_b_)_f_(_x_) _d__x_

That is, the improper integral is the limit of proper integrals as one endpoint of the interval of integration approaches either a specified real number, or , or . In more complicated cases, limits are required at both endpoints, or at interior points.

Multiple integration

Just as the definite integral of a positive function of one variable represents the area of the region between the graph of the function and the _x_-axis, the _double integral_ of a positive function of two variables represents the volume of the region between the surface defined by the function and the plane that contains its domain. For example, a function in two dimensions depends on two real variables, _x_ and _y_, and the integral of a function _f_ over the rectangle _R_ given as the Cartesian product of two intervals R = [a, b] × [c, d] can be written

∫_(_R_)_f_(_x_, _y_) _d__A_

where the differential indicates that integration is taken with respect to area. This double integral can be defined using Riemann sums, and represents the (signed) volume under the graph of _f_(_x_,_y_)}} over the domain _R_. Under suitable conditions (e.g., if _f_ is continuous), then Fubini's theorem guarantees that this integral can be expressed as an equivalent iterated integral

∫_(_a_)^(_b_)[∫_(_c_)^(_d_)_f_(_x_,_y_) _d__y_] _d__x_.

This reduces the problem of computing a double integral to computing one-dimensional integrals. Because of this, another notation for the integral over _R_ uses a double integral sign:

∬_(_R_)_f_(_x_, _y_)_d__A_.

Integration over more general domains is possible. The integral of a function _f_, with respect to volume, over a subset _D_ of ℝ^(n) is denoted by notation such as

∫_(_D_)_f_(X)_d_^(_n_)X, ∫_(_D_)_f_ _d__V_

or similar. See volume integral.

Line integrals

The concept of an integral can be extended to more general domains of integration, such as curved lines and surfaces. Such integrals are known as line integrals and surface integrals respectively. These have important applications in physics, as when dealing with vector fields.

A _line integral_ (sometimes called a _path integral_) is an integral where the function to be integrated is evaluated along a curve. Various different line integrals are in use. In the case of a closed curve it is also called a _contour integral_.

The function to be integrated may be a scalar field or a vector field. The value of the line integral is the sum of values of the field at all points on the curve, weighted by some scalar function on the curve (commonly arc length or, for a vector field, the scalar product of the vector field with a differential vector in the curve). This weighting distinguishes the line integral from simpler integrals defined on intervals. Many simple formulas in physics have natural continuous analogs in terms of line integrals; for example, the fact that work is equal to force, , multiplied by displacement, , may be expressed (in terms of vector quantities) as:

_W_ = F ⋅ S.
For an object moving along a path in a vector field such as an electric field or gravitational field, the total work done by the field on the object is obtained by summing up the differential work done in moving from to . This gives the line integral

_W_ = ∫_(_C_)F ⋅ _d_S.

Surface integrals

A _surface integral_ is a definite integral taken over a surface (which may be a curved set in space); it can be thought of as the double integral analog of the line integral. The function to be integrated may be a scalar field or a vector field. The value of the surface integral is the sum of the field at all points on the surface. This can be achieved by splitting the surface into surface elements, which provide the partitioning for Riemann sums.

For an example of applications of surface integrals, consider a vector field on a surface ; that is, for each point in , is a vector. Imagine that we have a fluid flowing through , such that determines the velocity of the fluid at . The flux is defined as the quantity of fluid flowing through in unit amount of time. To find the flux, we need to take the dot product of with the unit surface normal to at each point, which will give us a scalar field, which we integrate over the surface:

∫_(_S_)V⋅ _d_S.
The fluid flux in this example may be from a physical fluid such as water or air, or from electrical or magnetic flux. Thus surface integrals have applications in physics, particularly with the classical theory of electromagnetism.

Contour integrals

In complex analysis, the integrand is a complex-valued function of a complex variable instead of a real function of a real variable . When a complex function is integrated along a curve γ in the complex plane, the integral is denoted as follows

∫_(_γ_)_f_(_z_) _d__z_
.

This is known as a contour integral.

Integrals of differential forms

A differential form is a mathematical concept in the fields of multivariable calculus, differential topology, and tensors. Differential forms are organized by degree. For example, a one-form is a weighted sum of the differentials of the coordinates, such as:

_E_(_x_, _y_, _z_) _d__x_ + _F_(_x_, _y_, _z_) _d__y_ + _G_(_x_, _y_, _z_) _d__z_
where _E_, _F_, _G_ are functions in three dimensions. A differential one-form can be integrated over an oriented path, and the resulting integral is just another way of writing a line integral. Here the basic differentials _dx_, _dy_, _dz_ measure infinitesimal oriented lengths parallel to the three coordinate axes.

A differential two-form is a sum of the form

_G_(_x_, _y_, _z_)_d__x_ ∧ _d__y_ + _E_(_x_, _y_, _z_)_d__y_ ∧ _d__z_ + _F_(_x_, _y_, _z_)_d__z_ ∧ _d__x_.
Here the basic two-forms dx ∧ dy, dz ∧ dx, dy ∧ dz measure oriented areas parallel to the coordinate two-planes. The symbol ∧ denotes the wedge product, which is similar to the cross product in the sense that the wedge product of two forms representing oriented lengths represents an oriented area. A two-form can be integrated over an oriented surface, and the resulting integral is equivalent to the surface integral giving the flux of EI + FJ + GK.

Unlike the cross product, and the three-dimensional vector calculus, the wedge product and the calculus of differential forms makes sense in arbitrary dimension and on more general manifolds (curves, surfaces, and their higher-dimensional analogs). The exterior derivative plays the role of the gradient and curl of vector calculus, and Stokes' theorem simultaneously generalizes the three theorems of vector calculus: the divergence theorem, Green's theorem, and the Kelvin-Stokes theorem.

Summations

The discrete equivalent of integration is summation. Summations and integrals can be put on the same foundations using the theory of Lebesgue integrals or time scale calculus.


Computation

Analytical

The most basic technique for computing definite integrals of one real variable is based on the fundamental theorem of calculus. Let be the function of to be integrated over a given interval . Then, find an antiderivative of ; that is, a function such that _f_}} on the interval. Provided the integrand and integral have no singularities on the path of integration, by the fundamental theorem of calculus,

∫_(_a_)^(_b_)_f_(_x_) _d__x_ = _F_(_b_) − _F_(_a_).

The integral is not actually the antiderivative, but the fundamental theorem provides a way to use antiderivatives to evaluate definite integrals.

The most difficult step is usually to find the antiderivative of . It is rarely possible to glance at a function and write down its antiderivative. More often, it is necessary to use one of the many techniques that have been developed to evaluate integrals. Most of these techniques rewrite one integral as a different one which is hopefully more tractable. Techniques include:

-   Integration by substitution
-   Integration by parts
-   Inverse function integration
-   Changing the order of integration
-   Integration by trigonometric substitution
-   Tangent half-angle substitution
-   Integration by partial fractions
-   Integration by reduction formulae
-   Integration using parametric derivatives
-   Integration using Euler's formula
-   Euler substitution
-   Differentiation under the integral sign
-   Contour integration

Alternative methods exist to compute more complex integrals. Many nonelementary integrals can be expanded in a Taylor series and integrated term by term. Occasionally, the resulting infinite series can be summed analytically. The method of convolution using Meijer G-functions can also be used, assuming that the integrand can be written as a product of Meijer G-functions. There are also many less common ways of calculating definite integrals; for instance, Parseval's identity can be used to transform an integral over a rectangular region into an infinite sum. Occasionally, an integral can be evaluated by a trick; for an example of this, see Gaussian integral.

Computations of volumes of solids of revolution can usually be done with disk integration or shell integration.

Specific results which have been worked out by various techniques are collected in the list of integrals.

Symbolic

Many problems in mathematics, physics, and engineering involve integration where an explicit formula for the integral is desired. Extensive tables of integrals have been compiled and published over the years for this purpose. With the spread of computers, many professionals, educators, and students have turned to computer algebra systems that are specifically designed to perform difficult or tedious tasks, including integration. Symbolic integration has been one of the motivations for the development of the first such systems, like Macsyma.

A major mathematical difficulty in symbolic integration is that in many cases, a closed formula for the antiderivative of a rather simple-looking function does not exist. For instance, it is known that the antiderivatives of the functions and cannot be expressed in the closed form involving only rational and exponential functions, logarithm, trigonometric functions and inverse trigonometric functions, and the operations of multiplication and composition; in other words, none of the three given functions is integrable in elementary functions, which are the functions which may be built from rational functions, roots of a polynomial, logarithm, and exponential functions. The Risch algorithm provides a general criterion to determine whether the antiderivative of an elementary function is elementary, and, if it is, to compute it. Unfortunately, it turns out that functions with closed expressions of antiderivatives are the exception rather than the rule. Consequently, computerized algebra systems have no hope of being able to find an antiderivative for a randomly constructed elementary function. On the positive side, if the 'building blocks' for antiderivatives are fixed in advance, it may be still be possible to decide whether the antiderivative of a given function can be expressed using these blocks and operations of multiplication and composition, and to find the symbolic answer whenever it exists. The Risch algorithm, implemented in Mathematica and other computer algebra systems, does just that for functions and antiderivatives built from rational functions, radicals, logarithm, and exponential functions.

Some special integrands occur often enough to warrant special study. In particular, it may be useful to have, in the set of antiderivatives, the special functions (like the Legendre functions, the hypergeometric function, the gamma function, the incomplete gamma function and so on — see Symbolic integration for more details). Extending the Risch's algorithm to include such functions is possible but challenging and has been an active research subject.

More recently a new approach has emerged, using _D_-finite functions, which are the solutions of linear differential equations with polynomial coefficients. Most of the elementary and special functions are _D_-finite, and the integral of a _D_-finite function is also a _D_-finite function. This provides an algorithm to express the antiderivative of a _D_-finite function as the solution of a differential equation.

This theory also allows one to compute the definite integral of a _D_-function as the sum of a series given by the first coefficients, and provides an algorithm to compute any coefficient.[5]

Numerical

Some integrals found in real applications can be computed by closed-form antiderivatives. Others are not so accommodating. Some antiderivatives do not have closed forms, some closed forms require special functions that themselves are a challenge to compute, and others are so complex that finding the exact answer is too slow. This motivates the study and application of numerical approximations of integrals. This subject, called _numerical integration_ or _numerical quadrature_, arose early in the study of integration for the purpose of making hand calculations. The development of general-purpose computers made numerical integration more practical and drove a desire for improvements. The goals of numerical integration are accuracy, reliability, efficiency, and generality, and sophisticated modern methods can vastly outperform a naive method by all four measures (; ; ).

Consider, for example, the integral

$$\int_{-2}^{2} \tfrac{1}{5} \left( \tfrac{1}{100}(322 + 3 x (98 + x (37 + x))) - 24 \frac{x}{1+x^2} \right) dx$$
which has the exact answer 3.76}}. (In ordinary practice, the answer is not known in advance, so an important task — not explored here — is to decide when an approximation is good enough.) A “calculus book” approach divides the integration range into, say, 16 equal pieces, and computes function values.

    {| cellpadding="0" cellspacing="0" class="wikitable" style="text-align:center;background-color:white"

|+ Spaced function values |- ! _x_ | colspan="2" | −2.00 || colspan="2" | −1.50 || colspan="2" | −1.00 || colspan="2" | −0.50 || colspan="2" |  0.00 || colspan="2" |  0.50 || colspan="2" |  1.00 || colspan="2" |  1.50 || colspan="2" |  2.00 |- style="font-size:80%" ! style="font-size:125%" | _f_(_x_) | colspan="2" |  2.22800 || colspan="2" |  2.45663 || colspan="2" |  2.67200 || colspan="2" |  2.32475 || colspan="2" |  0.64400 || colspan="2" | −0.92575 || colspan="2" | −0.94000 || colspan="2" | −0.16963 || colspan="2" |  0.83600 |- ! _x_ |   | colspan="2" | −1.75 || colspan="2" | −1.25 || colspan="2" | −0.75 || colspan="2" | −0.25 || colspan="2" |  0.25 || colspan="2" |  0.75 || colspan="2" |  1.25 || colspan="2" |  1.75 || |- style="font-size:80%" ! style="font-size:125%" | _f_(_x_) | | colspan="2" |  2.33041 || colspan="2" |  2.58562 || colspan="2" |  2.62934 || colspan="2" |  1.64019 || colspan="2" | −0.32444 || colspan="2" | −1.09159 || colspan="2" | −0.60387 || colspan="2" |  0.31734 || |- style="background-color:#aaa" | || || || || || || || || || || || || || || || || || || |} Using the left end of each piece, the rectangle method sums 16 function values and multiplies by the step width, , here 0.25, to get an approximate value of 3.94325 for the integral. The accuracy is not impressive, but calculus formally uses pieces of infinitesimal width, so initially this may seem little cause for concern. Indeed, repeatedly doubling the number of steps eventually produces an approximation of 3.76001. However, 2¹⁸ pieces are required, a great computational expense for such little accuracy; and a reach for greater accuracy can force steps so small that arithmetic precision becomes an obstacle.

A better approach replaces the rectangles used in a Riemann sum with trapezoids. The trapezoid rule is almost as easy to calculate; it sums all 17 function values, but weights the first and last by one half, and again multiplies by the step width. This immediately improves the approximation to 3.76925, which is noticeably more accurate. Furthermore, only 2¹⁰ pieces are needed to achieve 3.76000, substantially less computation than the rectangle method for comparable accuracy. The idea behind the trapezoid rule, that more accurate approximations to the function yield better approximations to the integral, can be carried further. Simpson's rule approximates the integrand by a piecewise quadratic function. Riemann sums, the trapezoid rule, and Simpson's rule are examples of a family of quadrature rules called Newton–Cotes formulas. The degree Newton–Cotes quadrature rule approximates the polynomial on each subinterval by a degree polynomial. This polynomial is chosen to interpolate the values of the function on the interval. Higher degree Newton-Cotes approximations can be more accurate, but they require more function evaluations (already Simpson's rule requires twice the function evaluations of the trapezoid rule), and they can suffer from numerical inaccuracy due to Runge's phenomenon. One solution to this problem is Clenshaw–Curtis quadrature, in which the integrand is approximated by expanding it in terms of Chebyshev polynomials. This produces an approximation whose values never deviate far from those of the original function.

Romberg's method builds on the trapezoid method to great effect. First, the step lengths are halved incrementally, giving trapezoid approximations denoted by , and so on, where is half of . For each new step size, only half the new function values need to be computed; the others carry over from the previous size (as shown in the table above). But the really powerful idea is to interpolate a polynomial through the approximations, and extrapolate to . With this method a numerically _exact_ answer here requires only four pieces (five function values). The Lagrange polynomial interpolating 0...2 {{=}}}} {(4.00,6.128), (2.00,4.352), (1.00,3.908)} is 3.76 + 0.148, producing the extrapolated value 3.76 at 0}}.

Gaussian quadrature often requires noticeably less work for superior accuracy. In this example, it can compute the function values at just two positions, , then double each value and sum to get the numerically exact answer. The explanation for this dramatic success lies in the choice of points. Unlike Newton–Cotes rules, which interpolate the integrand at evenly spaced points, Gaussian quadrature evaluates the function at the roots of a set of orthogonal polynomials. An -point Gaussian method is exact for polynomials of degree up to . The function in this example is a degree 3 polynomial, plus a term that cancels because the chosen endpoints are symmetric around zero. (Cancellation also benefits the Romberg method.)

In practice, each method must use extra evaluations to ensure an error bound on an unknown function; this tends to offset some of the advantage of the pure Gaussian method, and motivates the popular Gauss–Kronrod quadrature formulae. More broadly, adaptive quadrature partitions a range into pieces based on function properties, so that data points are concentrated where they are needed most.

The computation of higher-dimensional integrals (for example, volume calculations) makes important use of such alternatives as Monte Carlo integration.

A calculus text is no substitute for numerical analysis, but the reverse is also true. Even the best adaptive numerical code sometimes requires a user to help with the more demanding integrals. For example, improper integrals may require a change of variable or methods that can avoid infinite function values, and known properties like symmetry and periodicity may provide critical leverage. For example, the integral ∫₀¹x^( − 1/2)e^( − x) dx is difficult to evaluate numerically because it is infinite at . However, the substitution transforms the integral into 2∫₀¹e^( − u²) du, which has no singularities at all.

Mechanical

The area of an arbitrary two-dimensional shape can be determined using a measuring instrument called planimeter. The volume of irregular objects can be measured with precision by the fluid displaced as the object is submerged.

Geometrical

Area can sometimes be found via geometrical compass-and-straightedge constructions of an equivalent square.


See also

-   Integral equation
-   Integral symbol
-   Non-Newtonian calculus


References


Bibliography

-   -   . In particular chapters III and IV.

-   -   -   -   -
    Available in translation as

-
    (Originally published by Cambridge University Press, 1897, based on J. L. Heiberg's Greek version.)

-   -   -   -   -

-   -   -   -   -   -   -   .

-   .

-


External links

-   -   Online Integral Calculator, Wolfram Alpha.
-   Online Integral Calculator, by MathsTools.

Online books

-   Keisler, H. Jerome, Elementary Calculus: An Approach Using Infinitesimals, University of Wisconsin
-   Stroyan, K. D., A Brief Introduction to Infinitesimal Calculus, University of Iowa
-   Mauch, Sean, _Sean's Applied Math Book_, CIT, an online textbook that includes a complete introduction to calculus
-   Crowell, Benjamin, _Calculus_, Fullerton College, an online textbook
-   Garrett, Paul, Notes on First-Year Calculus
-   Hussain, Faraz, Understanding Calculus, an online textbook
-   Johnson, William Woolsey (1909) Elementary Treatise on Integral Calculus, link from HathiTrust.
-   Kowalk, W. P., _Integration Theory_, University of Oldenburg. A new concept to an old problem. Online textbook
-   Sloughter, Dan, Difference Equations to Differential Equations, an introduction to calculus
-   Numerical Methods of Integration at _Holistic Numerical Methods Institute_
-   P. S. Wang, Evaluation of Definite Integrals by Symbolic Manipulation (1972) — a cookbook of definite integral techniques

de:Integralrechnung

* Category:Functions and mappings Category:Linear operators in calculus

[1] Katz, V.J. 1995. "Ideas of Calculus in Islam and India." _Mathematics Magazine_ (Mathematical Association of America), 68(3):163–174.

[2] In the 20th century, nonstandard analysis was developed as a new approach to calculus that incorporates a rigorous concept of infinitesimals by using an expanded number system called the hyperreal numbers. Though placed on a sound axiomatic footing and of interest in its own right as a new area of investigation, nonstandard analysis remains somewhat controversial from a pedagogical standpoint, with proponents pointing out the intuitive nature of infinitesimals for beginning students of calculus and opponents criticizing the logical complexity of the system as a whole.

[3] .

[4]

[5] Frédéric Chyzak's Mgfun Project: Introduction to the Package Mgfun and Related Packages