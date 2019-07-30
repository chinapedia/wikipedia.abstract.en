In mathematics, and more specifically in calculus, L'HÔPITAL'S RULE or L'HOSPITAL'S RULE () uses derivatives to help evaluate limits involving indeterminate forms. Application (or repeated application) of the rule often converts an indeterminate form to an expression that can be evaluated by substitution, allowing easier evaluation of the limit. The rule is named after the 17th-century French mathematician Guillaume de l'Hôpital. Although the contribution of the rule is often attributed to L'Hôpital, the theorem was first introduced to L'Hôpital in 1694 by the Swiss mathematician Johann Bernoulli.

L'Hôpital's rule states that for functions and which are differentiable on an open interval except possibly at a point contained in , if lim_(x → c)f(x) = lim_(x → c)g(x) = 0 or  ± ∞, g′(x) ≠ 0 for all in with , and $\lim_{x\to c}\frac{f'(x)}{g'(x)}$ exists, then

$$\lim_{x\to c}\frac{f(x)}{g(x)} = \lim_{x\to c}\frac{f'(x)}{g'(x)}.$$

The differentiation of the numerator and denominator often simplifies the quotient or converts it to a limit that can be evaluated directly.


History

Guillaume de l'Hôpital (also written l'Hospital) published this rule in his 1696 book _Analyse des Infiniment Petits pour l'Intelligence des Lignes Courbes_ (literal translation: _Analysis of the Infinitely Small for the Understanding of Curved Lines_), the first textbook on differential calculus.[1] However, it is believed that the rule was discovered by the Swiss mathematician Johann Bernoulli.[2][3]


General form

The general form of L'Hôpital's rule covers many cases. Let and be extended real numbers (i.e., real numbers, positive infinity, or negative infinity). Let be an open interval containing (for a two-sided limit) or an open interval with endpoint (for a one-sided limit, or a limit at infinity if is infinite). The real valued functions and are assumed to be differentiable on except possibly at , and additionally g′(x) ≠ 0 on except possibly at . It is also assumed that $\lim_{x\to c}\frac{f'(x)}{g'(x)} = L.$ Thus the rule applies to situations in which the ratio of the derivatives has a finite or infinite limit, but not to situations in which that ratio fluctuates permanently as gets closer and closer to .

If either

lim_(_x_ → _c_)_f_(_x_) = lim_(_x_ → _c_)_g_(_x_) = 0
or

lim_(_x_ → _c_)|_f_(_x_)| = lim_(_x_ → _c_)|_g_(_x_)| = ∞,
then

$$\lim_{x\to c}\frac{f(x)}{g(x)}=L.$$
Although we have written _x_ → _c_ throughout, the limits may also be one-sided limits (_x_ → _c_⁺ or _x_ → _c_^(−)), when is a finite endpoint of .

In the second case, the hypothesis that diverges to infinity is not used in the proof (see note at the end of the proof section); thus, while the conditions of the rule are normally stated as above, the second sufficient condition for the rule's procedure to be valid can be more briefly stated as lim_(x → c)|g(x)| = ∞.

The hypothesis that g′(x) ≠ 0 appears most commonly in the literature, but some authors sidestep this hypothesis by adding other hypotheses elsewhere. One method[4] is to define the limit of a function with the additional requirement that the limiting function is defined everywhere on the relevant interval except possibly at . Another method[5] is to require that both and be differentiable everywhere on an interval containing .


Requirement that the limit exist

The requirement that the limit

$$\lim_{x\to c}\frac{f'(x)}{g'(x)}$$

must exist is essential. Without this condition, f′ or g′ may exhibit undampened oscillations as x approaches c, in which case L'Hôpital's rule does not apply. For example, if f(x) = x + sin (x), g(x) = x and c =  ± ∞, then

$$\frac{f'(x)}{g'(x)}=\frac{1+\cos(x)}{1};$$

this expression does not approach a limit as x goes to c, since the cosine function oscillates between and . But working with the original functions, $\lim_{x\to\infty}\frac{f(x)}{g(x)}$ can be shown to exist:

$$\lim_{x\to\infty}\frac{f(x)}{g(x)} = \lim_{x\to\infty}\left(1+\frac{\sin(x)}{x}\right) = 1.$$

In a case such as this, all that can be concluded is that

    $\liminf_{x \to c} \frac{f'(x)}{g'(x)} \leq \liminf_{x \to c} \frac{f(x)}{g(x)} \leq \limsup_{x \to c} \frac{f(x)}{g(x)} \leq \limsup_{x \to c} \frac{f'(x)}{g'(x)} ,$

so that if the limit of _f_/_g_ exists, then it must lie between the inferior and superior limits of _f_′/_g_′. (In the example above, this is true, since 1 indeed lies between 0 and 2.)


Examples

-   Here is a basic example involving the exponential function, which involves the indeterminate form at 0}}:

$$\begin{align}
  \lim_{x\to 0} \frac{e^x - 1}{x^2+x} &= \lim_{x\to 0} \frac{\frac{d}{dx}(e^x - 1)}{\frac{d}{dx}(x^2+x)} \\[4pt]
  &= \lim_{x\to 0} \frac{e^x}{2x+1} \\[4pt]
  &= 1.
\end{align}$$

-   This is a more elaborate example involving . Applying L'Hôpital's rule a single time still results in an indeterminate form. In this case, the limit may be evaluated by applying the rule three times:

$$\begin{align}
\lim_{x\to 0}{\frac{2\sin(x)-\sin(2x)}{x-\sin(x)}}
& =\lim_{x\to 0}{\frac{2\cos(x)-2\cos(2x)}{1-\cos(x)}} \\[4pt]
& = \lim_{x\to 0}{\frac{-2\sin(x)+4\sin(2x)}{\sin(x)}} \\[4pt]
& = \lim_{x\to 0}{\frac{-2\cos(x)+8\cos(2x)}{\cos(x)}} \\[4pt]
& ={\frac{-2+8}{1}} \\[4pt]
& =6.
\end{align}$$

-   Here is an example involving :

$$\lim_{x\to\infty}x^n\cdot e^{-x}
=\lim_{x\to\infty}{\frac{x^n}{e^x}}
=\lim_{x\to\infty}{\frac{nx^{n-1}}{e^x}}
=n\cdot \lim_{x\to\infty}{\frac{x^{n-1}}{e^x}}.$$

    Repeatedly apply L'Hôpital's rule until the exponent is zero (if is an integer) or negative (if is fractional) to conclude that the limit is zero.

-   Here is an example involving the indeterminate form (see below), which is rewritten as the form :

$$\lim_{x\to 0^+}x \ln x =\lim_{x\to 0^+} \frac{\ln x}{\frac{1}{x}}
  = \lim_{x\to 0^+} \frac{\frac{1}{x}}{-\frac{1}{x^2}}
  = \lim_{x\to 0^+} -x = 0.$$

-   Here is an example involving the mortgage repayment formula and . Let be the principal (loan amount), the interest rate per period and the number of periods. When is zero, the repayment amount per period is $\frac{P}{n}$ (since only principal is being repaid); this is consistent with the formula for non-zero interest rates:

$$\begin{align}
    \lim_{r\to 0}\frac{Pr(1+r)^n}{(1+r)^n-1}
    & = P \lim_{r\to 0} \frac{(1+r)^n+rn(1+r)^{n-1}}{n(1+r)^{n-1}} \\[4pt]
    & = \frac{P}{n}.
  \end{align}$$

-   One can also use L'Hôpital's rule to prove the following theorem. If is twice-differentiable in a neighborhood of , then

$$\begin{align}
    \lim_{h\to 0}\frac{f(x+h)+f(x-h)-2f(x)}{h^2}
    &= \lim_{h\to 0}\frac{f'(x+h)-f'(x-h)}{2h} \\[4pt]
    &= \lim_{h\to 0}\frac{f''(x+h) + f''(x-h)}{2} \\[4pt]
    &= f''(x).
  \end{align}$$

-   Sometimes L'Hôpital's rule is invoked in a tricky way: suppose converges as and that e^(x) ⋅ f(x) converges to positive or negative infinity. Then:

$$\lim_{x\to\infty}f(x) = \lim_{x\to\infty}\frac{e^x\cdot f(x)}{e^x} = \lim_{x\to\infty}\frac{e^x\bigl(f(x)+f'(x)\bigr)}{e^x} = \lim_{x\to\infty}\bigl(f(x)+f'(x)\bigr)$$

    and so,  lim_(x → ∞)f(x)  exists and  lim_(x → ∞)f′(x) = 0.
    The result remains true without the added hypothesis that e^(x) ⋅ f(x) converges to positive or negative infinity, but the justification is then incomplete.


Complications

Sometimes L'Hôpital's rule does not lead to an answer in a finite number of steps unless some additional steps are applied. Examples include the following:

-   Two applications can lead to a return to the original expression that was to be evaluated:

$$\lim_{x\to\infty}\frac{e^x+e^{-x}}{e^x-e^{-x}} = \lim_{x\to\infty}\frac{e^x-e^{-x}}{e^x+e^{-x}} = \lim_{x\to\infty}\frac{e^x+e^{-x}}{e^x-e^{-x}} = \cdots .$$

    This situation can be dealt with by substituting y = e^(x) and noting that goes to infinity as goes to infinity; with this substitution, this problem can be solved with a single application of the rule:

$$\lim_{x\to\infty}\frac{e^x+e^{-x}}{e^x-e^{-x}} = \lim_{y\to\infty}\frac{y+y^{-1}}{y-y^{-1}} = \lim_{y\to\infty}\frac{1-y^{-2}}{1+y^{-2}} = \frac{1}{1} = 1.$$

    Alternatively, the numerator and denominator can both be multiplied by e^(x), at which point L'Hôpital's rule can immediately be applied successfully:[6]

$$\lim_{x\to\infty}\frac{e^x+e^{-x}}{e^x-e^{-x}} = \lim_{x\to\infty}\frac{e^{2x} + 1}{e^{2x} - 1} = \lim_{x\to\infty}\frac{2e^{2x}}{2e^{2x}} = 1.$$

-   An arbitrarily large number of applications may never lead to an answer even without repeating:

$$\lim_{x\to\infty}\frac{x^\frac1{2}+x^{-\frac1{2}}}{x^\frac1{2}-x^{-\frac1{2}}} = \lim_{x\to\infty}\frac{\frac1{2}x^{-\frac1{2}}-\frac{1}{2}x^{-\frac3{2}}}{\frac1{2}x^{-\frac1{2}}+\frac1{2}x^{-\frac3{2}}} = \lim_{x\to\infty}\frac{-\frac1{4}x^{-\frac3{2}}+\frac3{4}x^{-\frac5{2}}}{-\frac1{4}x^{-\frac3{2}}-\frac3{4}x^{-\frac5{2}}} = \cdots .$$

    This situation too can be dealt with by a transformation of variables, in this case $y = \sqrt{x}$:

$$\lim_{x\to\infty}\frac{x^\frac1{2}+x^{-\frac1{2}}}{x^\frac1{2}-x^{-\frac1{2}}} = \lim_{y\to\infty}\frac{y+y^{-1}}{y-y^{-1}} = \lim_{y\to\infty} \frac{1-y^{-2}}{1+y^{-2}} = \frac1{1} = 1.$$

    Again, an alternative approach is to multiply numerator and denominator by x^(1/2) before applying L'Hôpital's rule:

$$\lim_{x\to\infty}\frac{x^\frac{1}{2}+x^{-\frac{1}{2}}}{x^\frac{1}{2}-x^{-\frac{1}{2}}} = \lim_{x\to\infty}\frac{x+1}{x-1} = \lim_{x\to\infty}\frac{1}{1} = 1.$$

A common pitfall is using L'Hôpital's rule with some circular reasoning to compute a derivative via a difference quotient. For example, consider the task of proving the derivative formula for powers of _x_:

$$\lim_{h\to 0}\frac{(x+h)^n-x^n}{h}=nx^{n-1}.$$

Applying L'Hôpital's rule and finding the derivatives with respect to of the numerator and the denominator yields as expected. However, differentiating the numerator required the use of the very fact that is being proven. This is an example of begging the question, since one may not assume the fact to be proven during the course of the proof.


Counterexamples when the derivative of the denominator is zero

The necessity of the condition that g′(x) ≠ 0 near c can be seen by the following counterexample due to Otto Stolz.[7] Let f(x) = x + sin xcos x and g(x) = f(x)e^(sin x). Then there is no limit for f(x)/g(x) as x → ∞. However,

$$\begin{align}
   \frac{f'(x)}{g'(x)} &= \frac{2\cos^2 x}{(2 \cos^2 x) e^{\sin x} + (x+\sin x \cos x) e^{\sin x} \cos x} \\[4pt]
   &= \frac{2\cos x}{2 \cos x +x+\sin x \cos x} e^{-\sin x},
 \end{align}$$

which tends to 0 as x → ∞. Further examples of this type were found by Ralph P. Boas Jr.[8]


Other indeterminate forms

Other indeterminate forms, such as , , , , and , can sometimes be evaluated using L'Hôpital's rule. For example, to evaluate a limit involving , convert the difference of two functions to a quotient:

$$\begin{align}
\lim_{x\to 1}\left(\frac{x}{x-1}-\frac1{\ln x}\right)
& = \lim_{x\to 1}\frac{x\cdot\ln x -x+1}{(x-1)\cdot\ln x} & \quad (1) \\[6pt]
& = \lim_{x\to 1}\frac{\ln x}{\frac{x-1}{x}+\ln x} & \quad (2) \\[6pt]
& = \lim_{x\to 1}\frac{x\cdot\ln x}{x-1+x\cdot\ln x}     & \quad (3) \\[6pt]
& = \lim_{x\to 1}\frac{1+\ln x}{1+1+\ln x}     & \quad (4) \\[6pt]
& = \lim_{x\to 1}\frac{1+\ln x}{2+\ln x} \\[6pt]
& = \frac{1}{2},
\end{align}$$

where L'Hôpital's rule is applied when going from (1) to (2) and again when going from (3) to (4).

L'Hôpital's rule can be used on indeterminate forms involving exponents by using logarithms to "move the exponent down". Here is an example involving the indeterminate form :

$$\lim_{x\to 0^+}x^x
= \lim_{x\to 0^+}e^{\ln (x^x)}
= \lim_{x\to 0^+}e^{x\cdot\ln x}
= e^{\lim\limits_{x\to 0^+}(x\cdot\ln x)}.$$

It is valid to move the limit inside the exponential function because the exponential function is continuous. Now the exponent x has been "moved down". The limit lim_(x → 0⁺)x ⋅ ln x is of the indeterminate form , but as shown in an example above, l'Hôpital's rule may be used to determine that

lim_(_x_ → 0⁺)_x_ ⋅ ln _x_ = 0.

Thus

lim_(_x_ → 0⁺)_x_^(_x_) = _e_⁰ = 1.


Stolz–Cesàro theorem

The Stolz–Cesàro theorem is a similar result involving limits of sequences, but it uses finite difference operators rather than derivatives.


Geometric interpretation

Consider the curve in the plane whose -coordinate is given by and whose -coordinate is given by , with both functions continuous, i.e., the locus of points of the form . Suppose . The limit of the ratio as is the slope of the tangent to the curve at the point . The tangent to the curve at the point is given by . L'Hôpital's rule then states that the slope of the curve when is the limit of the slope of the tangent to the curve as the curve approaches the origin, provided that this is defined.


Proof of L'Hôpital's rule

Special case

The proof of L'Hôpital's rule is simple in the case where and are continuously differentiable at the point and where a finite limit is found after the first round of differentiation. It is not a proof of the general L'Hôpital's rule because it is stricter in its definition, requiring both differentiability and that _c_ be a real number. Since many common functions have continuous derivatives (e.g. polynomials, sine and cosine, exponential functions), it is a special case worthy of attention.

Suppose that and are continuously differentiable at a real number , that f(c) = g(c) = 0, and that g′(c) ≠ 0. Then



\begin{align} & \lim_{x\to c}\frac{f(x)}{g(x)} = \lim_{x\to c}\frac{f(x)-0}{g(x)-0} = \lim_{x\to c}\frac{f(x)-f(c)}{g(x)-g(c)} \\[6pt]



{} & \LIM_{X\TO C}\FRAC{\LEFT(\FRAC{F(X)-F(C)}{X-C}\RIGHT)}{\LEFT(\FRAC{G(X)-G(C)}{X-C} \RIGHT)}


\frac{\lim\limits_{x\to c}\left(\frac{f(x)-f(c)}{x-c}\right)}{\lim\limits_{x\to c} \left(\frac{g(x)-g(c)}{x-c}\right)}= \frac{f'(c)}{g'(c)} = \lim_{x\to c}\frac{f'(x)}{g'(x)}. \end{align}

This follows from the difference-quotient definition of the derivative. The last equality follows from the continuity of the derivatives at . The limit in the conclusion is not indeterminate because g′(c) ≠ 0.

The proof of a more general version of L'Hôpital's rule is given below.

General proof

The following proof is due to , where a unified proof for the and indeterminate forms is given. Taylor notes that different proofs may be found in and .

Let _f_ and _g_ be functions satisfying the hypotheses in the General form section. Let ℐ be the open interval in the hypothesis with endpoint _c_. Considering that g′(x) ≠ 0 on this interval and _g_ is continuous, ℐ can be chosen smaller so that _g_ is nonzero on ℐ.

For each _x_ in the interval, define $m(x)=\inf\frac{f'(\xi)}{g'(\xi)}$ and $M(x)=\sup\frac{f'(\xi)}{g'(\xi)}$ as ξ ranges over all values between _x_ and _c_. (The symbols inf and sup denote the infimum and supremum.)

From the differentiability of _f_ and _g_ on ℐ, Cauchy's mean value theorem ensures that for any two distinct points _x_ and _y_ in ℐ there exists a ξ between _x_ and _y_ such that $\frac{f(x)-f(y)}{g(x)-g(y)}=\frac{f'(\xi)}{g'(\xi)}$. Consequently, $m(x)\leq \frac{f(x)-f(y)}{g(x)-g(y)} \leq M(x)$ for all choices of distinct _x_ and _y_ in the interval. The value _g_(_x_)-_g_(_y_) is always nonzero for distinct _x_ and _y_ in the interval, for if it was not, the mean value theorem would imply the existence of a _p_ between _x_ and _y_ such that ''g' _(_p'')=0.

The definition of _m_(_x_) and _M_(_x_) will result in an extended real number, and so it is possible for them to take on the values ±∞. In the following two cases, _m_(_x_) and _M_(_x_) will establish bounds on the ratio .

CASE 1: lim_(x → c)f(x) = lim_(x → c)g(x) = 0

For any _x_ in the interval ℐ, and point _y_ between _x_ and _c_,

$$m(x)\le \frac{f(x)-f(y)}{g(x)-g(y)}=\frac{\frac{f(x)}{g(x)}-\frac{f(y)}{g(x)}}{1-\frac{g(y)}{g(x)}}\le M(x)$$
and therefore as _y_ approaches _c_, $\frac{f(y)}{g(x)}$ and $\frac{g(y)}{g(x)}$ become zero, and so

$$m(x)\leq\frac{f(x)}{g(x)}\leq M(x).$$

CASE 2: lim_(x → c)|g(x)| = ∞

For every _x_ in the interval ℐ, define S_(x) = {y ∣ y is between x and c}. For every point _y_ between _x_ and _c_,

    $m(x)\le \frac{f(y)-f(x)}{g(y)-g(x)}=\frac{\frac{f(y)}{g(y)}-\frac{f(x)}{g(y)}}{1-\frac{g(x)}{g(y)}} \le M(x).$

As _y_ approaches _c_, both $\frac{f(x)}{g(y)}$ and $\frac{g(x)}{g(y)}$ become zero, and therefore

    $m(x)\le \liminf_{y\in S_x} \frac{f(y)}{g(y)} \le \limsup_{y\in S_x} \frac{f(y)}{g(y)} \le M(x).$

The limit superior and limit inferior are necessary since the existence of the limit of has not yet been established.

It is also the case that

$$\lim_{x\to c}m(x)=\lim_{x\to c}M(x)=\lim_{x\to c}\frac{f'(x)}{g'(x)}=L.$$
and

$$\lim_{x\to c}\left(\liminf_{y\in S_x}\frac{f(y)}{g(y)}\right)=\liminf_{x\to c}\frac{f(x)}{g(x)}$$
and $\lim_{x\to c}\left(\limsup_{y\in S_x} \frac{f(y)}{g(y)}\right)=\limsup_{x\to c}\frac{f(x)}{g(x)}.$

In case 1, the squeeze theorem establishes that $\lim_{x\to c}\frac{f(x)}{g(x)}$ exists and is equal to _L_. In the case 2, and the squeeze theorem again asserts that $\liminf_{x\to c}\frac{f(x)}{g(x)}=\limsup_{x\to c}\frac{f(x)}{g(x)}=L$, and so the limit $\lim_{x\to c}\frac{f(x)}{g(x)}$ exists and is equal to _L_. This is the result that was to be proven.

In case 2 the assumption that _f_(_x_) diverges to infinity was not used within the proof. This means that if |_g_(_x_)| diverges to infinity as _x_ approaches _c_ and both _f_ and _g_ satisfy the hypotheses of L'Hôpital's rule, then no additional assumption is needed about the limit of _f_(_x_): It could even be the case that the limit of _f_(_x_) does not exist. In this case, L'Hopital's theorem is actually a consequence of Cesàro–Stolz.[9]

In the case when |_g_(_x_)| diverges to infinity as _x_ approaches _c_ and _f_(_x_) converges to a finite limit at _c_, then L'Hôpital's rule would be applicable, but not absolutely necessary, since basic limit calculus will show that the limit of _f_(_x_)/_g_(_x_) as _x_ approaches _c_ must be zero.


Corollary

A simple but very useful consequence of L'Hopital's rule is a well-known criterion for differentiability. It states the following: suppose that _f_ is continuous at _a_, and that f′(x) exists for all _x_ in some open interval containing _a_, except perhaps for x = a. Suppose, moreover, that lim_(x → a)f′(x) exists. Then f′(a) also exists and

_f_′(_a_) = lim_(_x_ → _a_)_f_′(_x_).
In particular, _f_' is also continuous at _a_.

Proof

Consider the functions h(x) = f(x) − f(a) and g(x) = x − a. The continuity of _f_ at _a_ tells us that lim_(x → a)h(x) = 0. Moreover, lim_(x → a)g(x) = 0 since a polynomial function is always continuous everywhere. Applying L'Hopital's rule shows that $f'(a) := \lim_{x\to a}\frac{f(x)-f(a)}{x-a} = \lim_{x\to a}\frac{h(x)}{g(x)} = \lim_{x\to a}f'(x)$.


See also

-   L'Hôpital controversy


Notes


References

Sources

-   -   -   -   -

Category:Articles containing proofs Category:Theorems in calculus Category:Theorems in real analysis Category:Limits (mathematics)

[1]

[2]  Extract of page 321

[3]

[4]

[5]

[6] Multiplying by e^(−)x instead yields a solution to the limit without need for l'Hôpital's rule.

[7]

[8]

[9]