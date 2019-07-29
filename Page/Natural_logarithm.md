Log.svg of _x_); the _y_-axis is an asymptote.]]

The NATURAL LOGARITHM of a number is its logarithm to the base of the mathematical constant _e_, where _e_ is an irrational and transcendental number approximately equal to . The natural logarithm of _x_ is generally written as , , or sometimes, if the base _e_ is implicit, simply .[1] Parentheses are sometimes added for clarity, giving ln(_x_), log_(_e_)(_x_) or log(_x_). This is done in particular when the argument to the logarithm is not a single symbol, to prevent ambiguity.

The natural logarithm of _x_ is the power to which _e_ would have to be raised to equal _x_. For example, ln(7.5) is 2.0149..., because . The natural log of _e_ itself, ln(_e_), is 1, because , while the natural logarithm of 1, ln(1), is 0, since .

The natural logarithm can be defined for any positive real number _a_ as the area under the curve from 1 to _a_ (the area being taken as negative when _a_ < 1). The simplicity of this definition, which is matched in many other formulas involving the natural logarithm, leads to the term "natural". The definition of the natural logarithm can be extended to give logarithm values for negative numbers and for all non-zero complex numbers, although this leads to a multi-valued function: see Complex logarithm.

The natural logarithm function, if considered as a real-valued function of a real variable, is the inverse function of the exponential function, leading to the identities:

_e_^(ln _x_) = _x_  if _x_ > 0

ln (_e_^(_x_)) = _x_.

Like all logarithms, the natural logarithm maps multiplication into addition:

ln (_x__y_) = ln _x_ + ln _y_.

Thus, the logarithm function is a group isomorphism from positive real numbers under multiplication to the group of real numbers under addition, represented as a function:

ln : ℝ⁺ → ℝ.

Logarithms can be defined to any positive base other than 1, not only _e_. However, logarithms in other bases differ only by a constant multiplier from the natural logarithm, and are usually defined in terms of the latter. For instance, the binary logarithm is the natural logarithm divided by ln(2), the natural logarithm of 2. Logarithms are useful for solving equations in which the unknown appears as the exponent of some other quantity. For example, logarithms are used to solve for the half-life, decay constant, or unknown time in exponential decay problems. They are important in many branches of mathematics and the sciences and are used in finance to solve problems involving compound interest.

By Lindemann–Weierstrass theorem, the natural logarithm of any positive algebraic number other than 1 is a transcendental number.

  ---------------------
    Natural logarithm
     REPRESENTATION
         INVERSE
       DERIVATIVE
     NTH DERIVATIVE
   INDEFINITE INTEGRAL
  ---------------------


History

The concept of the natural logarithm was worked out by Gregoire de Saint-Vincent and Alphonse Antonio de Sarasa before 1649.[2] Their work involved quadrature of the hyperbola by determination of the area of hyperbolic sectors. Their solution generated the requisite "hyperbolic logarithm" function having properties now associated with the natural logarithm.

An early mention of the natural logarithm was by Nicholas Mercator in his work _Logarithmotechnia_ published in 1668,[3] although the mathematics teacher John Speidell had already in 1619 compiled a table of what in fact were effectively natural logarithms.[4] It has been said that Speidell's logarithms were to the base _e_, but this is not entirely true due to complications with the values being expressed as integers.[5]


Notational conventions

The notations and both refer unambiguously to the natural logarithm of _x_. without an explicit base may also refer to the natural logarithm. This usage is common in mathematics and some scientific contexts as well as in many programming languages.[6] In some other contexts, however, can be used to denote the common (base 10) logarithm.

Historically, the notations "" and "" were in use at least since the 1730s,[7][8] and until at least the 1840s,[9] then "log."[10] or "log",[11] at least since the 1790s. Finally, in the twentieth century, the notations "Log"[12] and "logh"[13] are attested.


Definitions

Log-pole-x_1.svg The area under the hyperbola satisfies the logarithm rule. Here _A_(_s_,_t_) denotes the area under the hyperbola between _s_ and _t_.

Formally, ln(_a_) may be defined as the area under the hyperbola 1/_x_. This is the integral,

$$\ln a = \int_1^a \frac{1}{x}\,dx.$$

This function is a logarithm because it satisfies the fundamental property of a logarithm:

ln (_a__b_) = ln _a_ + ln _b_.

This can be demonstrated by splitting the integral that defines ln(_ab_) into two parts and then making the variable substitution in the second part, as follows:

$$\begin{align}
\ln(ab)= \int_1^{ab}\frac{1}{x} \, dx
&=\int_1^a \frac 1 x \, dx + \int_a^{ab} \frac{1}{x} \, dx\\[5pt]
&=\int_1^a \frac 1 x \, dx + \int_1^b \frac{1}{at} \, d(at)\\[5pt]
&=\int_1^a \frac 1 x \, dx + \int_1^b \frac{1}{t} \, dt\\[5pt]
&= \ln a + \ln b.
\end{align}$$

In elementary terms, this is simply scaling by 1/_a_ in the horizontal direction and by _a_ in the vertical direction. Area does not change under this transformation, but the region between _a_ and _ab_ is reconfigured. Because the function _a_/(_ax_) is equal to the function 1/_x_, the resulting area is precisely ln(_b_).

The number _e_ is defined as the unique real number _a_ such that ln(_a_) = 1.

Alternatively, if the exponential function has been defined first, say by using an infinite series, the natural logarithm may be defined as its inverse function, i.e., ln is that function such that exp(ln(_x_)) = _x_. Since the range of the exponential function on real arguments is all positive real numbers and since the exponential function is strictly increasing, this is well-defined for all positive _x_.


Properties

-   ln 1 = 0
-   ln e = 1
-   ln (xy) = ln x + ln y for  x > 0 and  y > 0
-   ln (x^(y)) = yln x for  x > 0
-   ln x < ln y for  0 < x < y
-   $\lim_{x \to 0} \frac{\ln(1+x)}{x} = 1$

$$\lim_{h \to 0} \frac{\ln(1+h)}{h} = \lim_{h \to 0} \frac{\ln(1+h)-\ln 1}{h} = \frac{d}{dx} \ln x \Bigg|_{x=1} = 1$$

-   $\lim_{\alpha \to 0} \frac{x^\alpha-1}{\alpha} = \ln x\quad \text{for }\; x > 0$

Since ln  is the inverse of the exponential function e^(x), one can write

$$\lim_{\alpha \to 0} \frac{x^\alpha-1}{\alpha}
    = \ln x \cdot \lim_{\alpha \to 0} \frac{e^{\ln x\cdot\alpha}-1}{\ln x\cdot\alpha}
  = \ln x \cdot \lim_{\beta \to 0} \frac{e^{\beta}-1}{\beta}  = \ln x,$$
which proves the claim.

-   $\frac{x-1}{x} \leq \ln x \leq x-1 \quad\text{for}\quad x > 0$
-   ln (1 + x^(α)) ≤ αx for x ≥ 0 and  α ≥ 1

The statement is true for x = 0, and we now show that $\frac{d}{dx} \ln{( 1+x^\alpha )} \leq \frac{d}{dx} ( \alpha x )$ for all x, which completes the proof by the fundamental theorem of calculus. Hence, we want to show that

$$\frac{d}{dx} \ln{( 1+x^\alpha )} = \frac{\alpha x^{\alpha - 1}}{1 + x^\alpha} \leq \alpha = \frac{d}{dx} ( \alpha x )$$

(Note that we have not yet proved that this statement is true.) If this is true, then by multiplying the middle statement by the positive quantity (1 + x^(α))/α and subtracting x^(α) we would obtain

_x_^(_α_ − 1) ≤ _x_^(_α_) + 1

_x_^(_α_ − 1)(1 − _x_) ≤ 1

This statement is trivially true for x ≥ 1 since the left hand side is negative or zero. For 0 ≤ x < 1 it is still true since both factors on the left are less than 1 (recall that α ≥ 1). Thus this last statement is true and by repeating our steps in reverse order we find that $\frac{d}{dx} \ln{( 1+x^\alpha )} \leq \frac{d}{dx} ( \alpha x )$ for all x. This completes the proof.

An alternate proof is to observe that (1 + x^(α)) ≤ (1 + x)^(α) under the given conditions. This can be proved, e.g., by the norm inequalities. Taking logarithms and using ln (1 + x) ≤ x completes the proof.


Derivative

The derivative of the natural logarithm as a real-valued function on the positive reals is given by

$$\frac{d}{dx} \ln x = \frac{1}{x}.$$

How to establish this derivative of the natural logarithm depends on how it is defined firsthand. If the natural logarithm is defined as the integral

$$\ln x = \int_1^x \frac{1}{t}\,dt,$$
then the derivative immediately follows from the first part of the fundamental theorem of calculus.

If the natural logarithm is defined as the inverse of the (natural) exponential function, then the derivative for _x_ > 0 can be found by using the properties of the logarithm and a definition of the exponential function.

$$\begin{align}
   \frac{d}{dx} \ln x &= \lim_{h\to 0} \frac{\ln(x+h) - \ln x}{h} \\
   &= \lim_{h\to 0}\left( \frac{1}{h} \ln\left(\frac{x+h}{x}\right)\right) \\
   &= \lim_{h\to 0} \ln\left(1 + \frac{h}{x}\right)^{\frac{1}{h}} \quad &&\text{all above for logarithmic properties}\\
   &= \ln \lim_{h\to 0} \left(1 + \frac{h}{x}\right)^{\frac{1}{h}}\quad &&\text{for continuity of the logarithm} \\
   &= \ln e^{1/x} \quad &&\text{for the definition of } e^x= \lim_{h\to 0}(1 + hx)^{(1/h)}\\
   &= \frac{1}{x} \quad &&\text{for the definition of the ln as inverse function.}
 \end{align}$$


Series

LogTay.svg

If |x − 1| ≤ 1 and x ≠ 0, then[14]

$$\begin{align}
   \ln x &= \int_1^x \frac{1}{t} \, dt = \int_0^{x - 1} \frac{1}{1 + u} \, du \\
   &= \int_0^{x - 1} (1 - u + u^2 - u^3 + \cdots) \, du \\
   &= (x - 1) - \frac{(x - 1)^2}{2} + \frac{(x - 1)^3}{3} - \frac{(x - 1)^4}{4} + \cdots \\
   &= \sum_{k=1}^\infty \frac{(-1)^{k-1} (x-1)^k}{k}.
 \end{align}$$

This is the Taylor series for ln _x_ around 1. A change of variables yields the Mercator series:

$$\ln(1+x)=\sum_{k=1}^\infty \frac{(-1)^{k-1}}{k} x^k = x - \frac{x^2}{2} + \frac{x^3}{3} - \cdots,$$

valid for |_x_| ≤ 1 and _x_ ≠ −1.

Leonhard Euler,[15] disregarding x ≠  − 1, nevertheless applied this series to _x_ = −1, in order to show that the harmonic series equals the (natural) logarithm of 1/(1 − 1), that is the logarithm of infinity. Nowadays, more formally, one can prove that the harmonic series truncated at _N_ is close to the logarithm of _N_, when _N_ is large.

At right is a picture of ln(1 + _x_) and some of its Taylor polynomials around 0. These approximations converge to the function only in the region −1 < _x_ ≤ 1; outside of this region the higher-degree Taylor polynomials evolve to _worse_ approximations for the function.

A useful special case for positive integers _n_, taking $x=\tfrac{1}{n}$, is:

$$\ln \left(\frac{n + 1}{n}\right) = \sum_{k=1}^\infty \frac{(-1)^{k-1}}{k n^k}  = \frac{1}{n} - \frac{1}{2 n^2} + \frac{1}{3 n^3} - \frac{1}{4 n^4} + \cdots$$

If Re (x) ≥ 1/2, then

$$\begin{align}
   \ln (x) &= - \ln \left(\frac{1}{x}\right) = - \sum_{k=1}^\infty \frac{(-1)^{k-1} (\frac{1}{x} - 1)^k}{k} = \sum_{k=1}^\infty \frac{(x - 1)^k}{k x^k} \\
   &= \frac{x - 1}{x} + \frac{(x - 1)^2}{2 x^2} +  \frac{(x - 1)^3}{3 x^3} + \frac{(x - 1)^4}{4 x^4} + \cdots
 \end{align}$$

Now taking $x=\tfrac{n+1}{n}$ for positive integers _n_, yields:

$$\ln \left(\frac{n + 1}{n}\right) = \sum_{k=1}^\infty \frac{1}{k (n + 1)^k} = \frac{1}{n + 1} + \frac{1}{2 (n + 1)^2} + \frac{1}{3 (n + 1)^3} + \frac{1}{4 (n + 1)^4} + \cdots$$

If Re (x) ≥ 0 and x ≠ 0, then

$$\ln (x) = \ln \left(\frac{2x}{2}\right) = \ln\left(\frac{1 + \frac{x - 1}{x + 1}}{1 - \frac{x - 1}{x + 1}}\right) = \ln \left(1 + \frac{x - 1}{x + 1}\right) - \ln \left(1 - \frac{x - 1}{x + 1}\right).$$
Since

$$\begin{align}
\ln(1+y) - \ln(1-y)&= \sum^\infty_{i=1}\frac{1}{i}\left((-1)^{i-1}y^i - (-1)^{i-1}(-y)^i\right) = \sum^\infty_{i=1}\frac{y^i}{i}\left((-1)^{i-1} +1\right)  \\
&= y\sum^\infty_{i=1}\frac{y^{i-1}}{i}\left((-1)^{i-1} +1\right)\overset{i-1\to 2k}{=}\; 2y\sum^\infty_{k=0}\frac{y^{2k}}{2k+1},
\end{align}$$
we arrive at

$$\begin{align}
   \ln (x) &= \frac{2(x - 1)}{x + 1} \sum_{k = 0}^\infty \frac{1}{2k + 1} {\left(\frac{(x - 1)^2}{(x + 1)^2}\right)}^k \\
&= \frac{2(x - 1)}{x + 1} \left( \frac{1}{1} + \frac{1}{3} \frac{(x - 1)^2}{(x + 1)^2} + \frac{1}{5} {\left(\frac{(x - 1)^2}{(x + 1)^2}\right)}^2 + \cdots \right) .
 \end{align}$$
Substituting again $x=\tfrac{n+1}{n}$ for positive integers _n_, yields:

$$\begin{align}
   \ln \left(\frac{n + 1}{n}\right) &= \frac{2}{2n + 1} \sum_{k=0}^\infty \frac{1}{(2k + 1) ((2n + 1)^2)^k}\\
&= 2 \left(\frac{1}{2n + 1} + \frac{1}{3 (2n + 1)^3} + \frac{1}{5 (2n + 1)^5} + \cdots \right).
\end{align}$$

This is, by far, the fastest converging of the series described here.


The natural logarithm in integration

The natural logarithm allows simple integration of functions of the form _g_(_x_) = _f_ '(_x_)/_f_(_x_): an antiderivative of _g_(_x_) is given by ln(|_f_(_x_)|). This is the case because of the chain rule and the following fact:

$$\frac{d}{dx}\ln \left| x \right| = \frac{1}{x}.$$

In other words,

$$\int \frac{1}{x} \,dx = \ln|x| + C$$

and

$$\int { \frac{f'(x)}{f(x)}\,dx} = \ln|f(x)| + C.$$

Here is an example in the case of _g_(_x_) = tan(_x_):



\begin{align} & \int \tan x \,dx = \int \frac{\sin x}{\cos x} \,dx \\[6pt] & \int \tan x \,dx = \int \frac{-\frac{d}{dx} \cos x}{\cos x} \,dx. \end{align} Letting _f_(_x_) = cos(_x_):

∫tan _x_ _d__x_ =  − ln |cos_x_| + _C_

∫tan _x_ _d__x_ = ln |sec_x_| + _C_

where _C_ is an arbitrary constant of integration.

The natural logarithm can be integrated using integration by parts:

∫ln _x_ _d__x_ = _x_ln _x_ − _x_ + _C_.

Let:

$$u = \ln x \Rightarrow du = \frac{dx}{x}$$

_d__v_ = _d__x_ ⇒ _v_ = _x_

then:



\begin{align} \int \ln x \,dx & = x \ln x - \int \frac{x}{x} \,dx \\ & = x \ln x - \int 1 \,dx \\ & = x \ln x - x + C \end{align}


Numerical value

For ln(_x_) where _x_ > 1, the closer the value of _x_ is to 1, the faster the rate of convergence. The identities associated with the logarithm can be leveraged to exploit this:

$$\begin{align}
\ln 123.456 &= \ln(1.23456 \cdot 10^2)\\
&= \ln 1.23456 + \ln(10^2)\\
&= \ln 1.23456 + 2 \ln 10\\
&\approx \ln 1.23456 + 2 \cdot 2.3025851.
\end{align}$$

Such techniques were used before calculators, by referring to numerical tables and performing manipulations such as those above.

Natural logarithm of 10

The natural logarithm of 10, which has the decimal expansion 2.30258509...,[16] plays a role for example in the computation of natural logarithms of numbers represented in scientific notation, as a mantissa multiplied by a power of 10:

    ln (a ⋅ 10^(n)) = ln a + nln 10.

This means that one can effectively calculate the logarithms of numbers with very large or very small magnitude using the logarithms of a relatively small set of decimals in the range [1, 10).

High precision

To compute the natural logarithm with many digits of precision, the Taylor series approach is not efficient since the convergence is slow. Especially if is near 1, a good alternative is to use Halley's method or Newton's method to invert the exponential function, because the series of the exponential function converges more quickly. For finding the value of to give using Halley's method, or equivalently to give using Newton's method, the iteration simplifies to

$$y_{n+1} = y_n + 2 \cdot \frac{ x - \exp ( y_n ) }{ x + \exp ( y_n ) }$$
which has cubic convergence to .

Another alternative for extremely high precision calculation is the formula[17] [18]

$$\ln x \approx \frac{\pi}{2 M(1,4/s)} - m \ln 2,$$

where denotes the arithmetic-geometric mean of 1 and , and

_s_ = _x_2^(_m_) > 2^(_p_/2),

with chosen so that bits of precision is attained. (For most purposes, the value of 8 for m is sufficient.) In fact, if this method is used, Newton inversion of the natural logarithm may conversely be used to calculate the exponential function efficiently. (The constants ln 2 and π can be pre-computed to the desired precision using any of several known quickly converging series.)

Based on a proposal by William Kahan and first implemented in the Hewlett-Packard HP-41C calculator in 1979 (referred to under "LN1" in the display, only), some calculators, computer algebra systems and programming languages (for example C99[19]) provide a special NATURAL LOGARITHM PLUS 1 function, alternatively named LNP1,[20][21] or LOG1P[22] to give more accurate results for logarithms close to zero by passing arguments _x_, also close to zero, to a function log1p(_x_), which returns the value ln(1+_x_), instead of passing a value _y_ close to 1 to a function returning ln(_y_).[23][24][25] The function log1p avoids in the floating point arithmetic a near cancelling of the absolute term 1 with the second term from the Taylor expansion of the ln, thereby allowing for a high accuracy for both the argument and the result near zero.[26][27] Similar inverse functions named "expm1",[28] "expm"[29][30] or "exp1m" exist as well, all with the meaning of exp(_x_) - 1.}}[31]

An identity in terms of the inverse hyperbolic tangent,

$$\mathrm{log1p}(x) = \log(1+x) = 2 ~ \mathrm{artanh}\left(\frac{x}{2+x}\right)\,,$$
gives a high precision value for small values of on systems that do not implement .

Computational complexity

The computational complexity of computing the natural logarithm (using the arithmetic-geometric mean) is O(_M_(_n_) ln _n_). Here _n_ is the number of digits of precision at which the natural logarithm is to be evaluated and _M_(_n_) is the computational complexity of multiplying two _n_-digit numbers.


Continued fractions

While no simple continued fractions are available, several generalized continued fractions are, including:

$$\begin{align}
\ln(1+x) & =\frac{x^1}{1}-\frac{x^2}{2}+\frac{x^3}{3}-\frac{x^4}{4}+\frac{x^5}{5}-\cdots \\[5pt]
& = \cfrac{x}{1-0x+\cfrac{1^2x}{2-1x+\cfrac{2^2x}{3-2x+\cfrac{3^2x}{4-3x+\cfrac{4^2x}{5-4x+\ddots}}}}}
\end{align}$$



\begin{align} \ln\left(1+\frac{x}{y}\right) & = \cfrac{x} {y+\cfrac{1x} {2+\cfrac{1x} {3y+\cfrac{2x} {2+\cfrac{2x} {5y+\cfrac{3x} {2+\ddots}}}}}} \\[5pt] & = \cfrac{2x} {2y+x-\cfrac{(1x)^2} {3(2y+x)-\cfrac{(2x)^2} {5(2y+x)-\cfrac{(3x)^2} {7(2y+x)-\ddots}}}} \end{align}

These continued fractions—particularly the last—converge rapidly for values close to 1. However, the natural logarithms of much larger numbers can easily be computed by repeatedly adding those of smaller numbers, with similarly rapid convergence.

For example, since 2 = 1.25³ × 1.024, the natural logarithm of 2 can be computed as:



\begin{align} \ln 2 & = 3 \ln\left(1+\frac{1}{4}\right) + \ln\left(1+\frac{3}{125}\right) \\[8pt] & = \cfrac{6} {9-\cfrac{1^2} {27-\cfrac{2^2} {45-\cfrac{3^2} {63-\ddots}}}} + \cfrac{6} {253-\cfrac{3^2} {759-\cfrac{6^2} {1265-\cfrac{9^2} {1771-\ddots}}}}. \end{align}

Furthermore, since 10 = 1.25¹⁰ × 1.024³, even the natural logarithm of 10 similarly can be computed as:



\begin{align} \ln 10 & = 10 \ln\left(1+\frac{1}{4}\right) + 3\ln\left(1+\frac{3}{125}\right) \\[10pt] & = \cfrac{20} {9-\cfrac{1^2} {27-\cfrac{2^2} {45-\cfrac{3^2} {63-\ddots}}}} + \cfrac{18} {253-\cfrac{3^2} {759-\cfrac{6^2} {1265-\cfrac{9^2} {1771-\ddots}}}}. \end{align}


Complex logarithms

The exponential function can be extended to a function which gives a complex number as for any arbitrary complex number _x_; simply use the infinite series with _x_ complex. This exponential function can be inverted to form a complex logarithm that exhibits most of the properties of the ordinary logarithm. There are two difficulties involved: no _x_ has 0}}; and it turns out that 1 {{=}} _e_⁰}}. Since the multiplicative property still works for the complex exponential function, _e_^(_z_+2_ki_)}}, for all complex _z_ and integers _k_.

So the logarithm cannot be defined for the whole complex plane, and even then it is multi-valued – any complex logarithm can be changed into an "equivalent" logarithm by adding any integer multiple of 2_i_ at will. The complex logarithm can only be single-valued on the cut plane. For example, = or or -, etc.; and although 1, 4 log(_i_)}} can be defined as 2_i_, or 10_i_ or −6_i_, and so on.

Image:NaturalLogarithmRe.png| _z_ = Re(ln(_x_ + _yi_)) Image:NaturalLogarithmImAbs.png| _z_ = abs(Im(ln(_x_ + _yi_))) Image:NaturalLogarithmAbs.png| _z_ = abs(ln(_x_ + _yi_)) Image:NaturalLogarithmAll.png| Superposition of the previous three graphs


See also

-   Approximating natural exponents (log base e)
-   Napierian logarithm
-   Logarithm of a matrix
-   Logarithmic integral function
-   Nicholas Mercator – first to use the term natural logarithm
-   Polylogarithm
-   Von Mangoldt function
-   The number _e_


Notes


References

de:Logarithmus#Natürlicher Logarithmus

Category:Logarithms Category:Elementary special functions Category:E (mathematical constant) Category:Unary operations

[1]  Extract of page 9

[2]

[3]

[4]

[5]

[6] Including C, C++, SAS, MATLAB, Mathematica, Fortran, and BASIC

[7]

[8]

[9]

[10]

[11]

[12]

[13]

[14] "Logarithmic Expansions" at Math2.org

[15] Leonhard Euler, Introductio in Analysin Infinitorum. Tomus Primus. Bousquet, Lausanne 1748. Exemplum 1, p. 228; quoque in: Opera Omnia, Series Prima, Opera Mathematica, Volumen Octavum, Teubner 1922

[16]

[17]

[18]

[19]

[20]

[21]  Searchable PDF

[22]

[23]

[24]

[25]

[26]

[27]

[28]

[29]

[30]

[31] For a similar approach to reduce round-off errors of calculations for certain input values see trigonometric functions like versine, vercosine, coversine, covercosine, haversine, havercosine, hacoversine, hacovercosine, exsecant and excosecant.