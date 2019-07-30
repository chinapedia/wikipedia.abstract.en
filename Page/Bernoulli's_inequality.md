In real analysis, BERNOULLI'S INEQUALITY (named after Jacob Bernoulli) is an inequality that approximates exponentiations of 1 + _x_.

The inequality states that

(1 + _x_)^(_r_) ≥ 1 + _r__x_

for every integer _r_ ≥ 0 and every real number _x_ ≥ −2. If the exponent _r_ is even, then the inequality is valid for _all_ real numbers _x_. The strict version of the inequality reads

(1 + _x_)^(_r_) > 1 + _r__x_

for every integer _r_ ≥ 2 and every real number _x_ ≥ −1 with _x_ ≠ 0.

There is also a generalized version that says for every real number r ≥ 1 and real number x ≥ -1,

(1 + _x_)^(_r_) ≥ 1 + _r__x_,

while for 0 ≤ _r_ ≤ 1 and real number x ≥ -1,

(1 + _x_)^(_r_) ≤ 1 + _r__x_.

Bernoulli's inequality is often used as the crucial step in the proof of other inequalities. It can itself be proved using mathematical induction, as shown below.


History

Jacob Bernoulli first published the inequality in his treatise “Positiones Arithmeticae de Seriebus Infinitis” (Basel, 1689), where he used the inequality often.[1]

According to Joseph E. Hofmann, Über die Exercitatio Geometrica des M. A. Ricci (1963), p. 177, the inequality is actually due to Sluse in his Mesolabum (1668 edition), Chapter IV "De maximis & minimis".[2]


Proof of the inequality

We proceed with mathematical induction in the following form:

-   we prove the inequality for r ∈ {0, 1},
-   from validity for some _r_ we deduce validity for _r+2_.

For _r_ = 0,

(1 + _x_)⁰ ≥ 1 + 0_x_

is equivalent to 1 ≥ 1 which is true as required.

Similarly, for _r_ = 1 we have

(1 + _x_)^(_r_) = 1 + _x_ ≥ 1 + _x_ = 1 + _r__x_.

Now suppose the statement is true for _r_ = _k_:

(1 + _x_)^(_k_) ≥ 1 + _k__x_.

Then it follows that

$$\begin{align}
(1+x)^{k+2} &= (1+x)^k(1+x)^2 \ge \\
&\ge (1+kx)\left(1+2x+x^2\right)= \qquad\qquad\qquad\text{ by hypothesis and }(1+x)^2\ge 0 \\
&=1+2x+x^2+kx+2kx^2+kx^3= \\
&=1+(k+2)x+kx^2(x+2)+x^2\ge \\
&\ge 1+(k+2)x
\end{align}$$

since x² ≥ 0 as well as x + 2 ≥ 0. By the modified induction we conclude the statement is true for every non-negative integer _r_.


Generalization

The exponent _r_ can be generalized to an arbitrary real number as follows: if _x_ > −1, then

(1 + _x_)^(_r_) ≥ 1 + _r__x_

for _r_ ≤ 0 or _r_ ≥ 1, and

(1 + _x_)^(_r_) ≤ 1 + _r__x_

for 0 ≤ _r_ ≤ 1.

This generalization can be proved by comparing derivatives. Again, the strict versions of these inequalities require _x_ ≠ 0 and _r_ ≠ 0, 1.


Related inequalities

The following inequality estimates the _r_-th power of 1 + _x_ from the other side. For any real numbers _x_, _r_  with _r_ > 0, one has

(1 + _x_)^(_r_) ≤ _e_^(_r__x_),

where _e_ = 2.718.... This may be proved using the inequality (1 + 1/_k_)^(_k_) < _e_.


Alternative form

An alternative form of Bernoulli's inequality for t ≥ 1 and 0 ≤ x ≤ 1 is:

(1 − _x_)^(_t_) ≥ 1 − _x__t_.

This can be proved (for integer t) by using the formula for geometric series: (using y=1-x)

$$t=1+1+\dots+1 \ge 1+y+y^2+\ldots+y^{t-1}=\frac{1-y^t}{1-y}$$
or equivalently xt ≥ 1 − (1 − x)^(t).


Alternative Proof

USING AM-GM

An elementary proof for 0 ≤ r ≤ 1 and x ≥ -1 can be given using Weighted AM-GM.

Let λ₁, λ₂ be two non-negative real constants. By Weighted AM-GM on 1, 1 + x with weights λ₁, λ₂ respectively, we get

$\dfrac{\lambda_1\cdot 1+\lambda_2\cdot (1+x)}{\lambda_1+\lambda_2}\ge \sqrt[\lambda_1+\lambda_2]{(1+x)^{\lambda_2}}$

Note that

$\dfrac{\lambda_1\cdot 1+\lambda_2\cdot (1+x)}{\lambda_1+\lambda_2}=\dfrac{\lambda_1+\lambda_2+\lambda_2x}{\lambda_1+\lambda_2}=1+\dfrac{\lambda_2}{\lambda_1+\lambda_2}x$

and

$\sqrt[\lambda_1+\lambda_2]{(1+x)^{\lambda_2}}=(1+x)^{\frac{\lambda_2}{\lambda_1+\lambda_2}}$

so our inequality is equivalent to

$1+\dfrac{\lambda_2}{\lambda_1+\lambda_2}x\ge (1+x)^{\frac{\lambda_2}{\lambda_1+\lambda_2}}$

After substituting $r=\dfrac{\lambda_2}{\lambda_1+\lambda_2}$ (bearing in mind that this implies 0 ≤ r ≤ 1) our inequality turns into

1 + rx ≥ (1 + x)^(r) which is Bernoulli's inequality.

USING THE FORMULA FOR GEOMETRIC SERIES

Bernoulli's inequality

is equivalent to

and by the formula for geometric series (using y=1+x) we get which leads to

Now if x ≥ 0 then by monotony of the powers each summand (1 + x)^(k) − 1 ≥ 0, therefore their sum is greater 0 and hence the product on the LHS of ().

If 0 ≥ x ≥  − 2 then by the same arguments 1 ≥ (1 + x)^(k) and thus all addends (1 + x)^(k) − 1 are non-positive and hence their sum. Since the product of two non-positive numbers is non-negative, we get again ().

USING BINOMIAL THEOREM

(1) For , $(1+x)^r=1+rx+\tbinom r2 x^2+...+\tbinom rr x^r$ Obviously, $\tbinom r2 x^2+...+\tbinom rr x^r \ge0$

Thus, (1 + x)^(r) ≥ 1 + rx

(2) For 0}}, (1 + x)^(r) = 1 + rx

(3) For , let _−x_}}, then

Replace with , we have $(1-y)^r=1-ry+\tbinom r2 y^2+...+(-1)^r\tbinom rr y^r$

Also, according to the binomial theorem, $0=1-r+\tbinom r2+...+(-1)^r\tbinom rr$

then$\tbinom r2+...+(-1)^r\tbinom rr =r-1\ge 0$

Notice that y² ≥ y³ ≥ ... ≥ y^(r)

Therefore, we can see that each binomial term $\tbinom rn$ is multiplied by a factor y^(n) , and that will make each term smaller than the term before.

For that reason, $\tbinom r2 y^2+...+(-1)^r\tbinom rr y^r\ge 0$

Hence, $(1-y)^r=1-ry+\tbinom r2 y^2+...+(-1)^r\tbinom rr y^r\ge 1-ry$

Replace with back, we get (1 + x)^(r) ≥ 1 + rx

Notice that by using binomial theorem, we can only prove the cases when r is a positive integer or zero.


Notes


References

-   -   -


External links

-   -   Bernoulli Inequality by Chris Boucher, Wolfram Demonstrations Project.
-   -   Paper “Some Equivalent Forms of Bernoulli’s Inequality: A Survey“

Category:Inequalities

[1] mathematics - First use of Bernoulli's inequality and its name - History of Science and Mathematics Stack Exchange

[2]