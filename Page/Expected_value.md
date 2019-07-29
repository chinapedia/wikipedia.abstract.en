In probability theory, the EXPECTED VALUE of a random variable, intuitively, is the long-run average value of repetitions of the SAME EXPERIMENT it represents. For example, the expected value in rolling a six-sided d i e is 3.5, because the average of all the numbers that come up is 3.5 as the number of rolls approaches infinity (see for details). In other words, the law of large numbers states that the arithmetic mean of the values almost surely converges to the expected value as the number of repetitions approaches infinity. The expected value is also known as the EXPECTATION, MATHEMATICAL EXPECTATION, EV, AVERAGE, MEAN VALUE, MEAN, or FIRST MOMENT.

More practically, the expected value of a discrete random variable is the probability-weighted average of all possible values. In other words, each possible value the random variable can assume is multiplied by its probability of occurring, and the resulting products are summed to produce the expected value. The same principle applies to an absolutely continuous random variable, except that an integral of the variable with respect to its probability density replaces the sum. The formal definition subsumes both of these and also works for distributions which are neither discrete nor absolutely continuous; the expected value of a random variable is the integral of the random variable with respect to its probability measure.[1][2]

The expected value does not exist for random variables having some distributions with large "tails", such as the Cauchy distribution.[3] For random variables such as these, the long-tails of the distribution prevent the sum or integral from converging.

The expected value is a key aspect of how one characterizes a probability distribution; it is one type of location parameter. By contrast, the variance is a measure of dispersion of the possible values of the random variable around the expected value. The variance itself is defined in terms of two expectations: it is the expected value of the squared deviation of the variable's value from the variable's expected value (_var(X)_ = E[(X - E[X])²] = E(X²) - [E(X)]²).

The expected value plays important roles in a variety of contexts. In regression analysis, one desires a formula in terms of observed data that will give a "good" estimate of the parameter giving the effect of some explanatory variable upon a dependent variable. The formula will give different estimates using different samples of data, so the estimate it gives is itself a random variable. A formula is typically considered good in this context if it is an unbiased estimator— that is if the expected value of the estimate (the average value it would give over an arbitrarily large number of separate samples) can be shown to equal the true value of the desired parameter.

In decision theory, and in particular in choice under uncertainty, an agent is described as making an optimal choice in the context of incomplete information. For risk neutral agents, the choice involves using the expected values of uncertain quantities, while for risk averse agents it involves maximizing the expected value of some objective function such as a von Neumann–Morgenstern utility function. One example of using expected value in reaching optimal decisions is the Gordon–Loeb model of information security investment. According to the model, one can conclude that the amount a firm spends to protect information should generally be only a small fraction of the expected loss (i.e., the expected value of the loss resulting from a cyber or information security breach).[4]


Definition

Finite case

Let X be a random variable with a finite number of finite outcomes x₁, x₂, ..., x_(k) occurring with probabilities p₁, p₂, ..., p_(k), respectively. The EXPECTATION of X is defined as

$$\operatorname{E}[X] =\sum_{i=1}^k x_i\,p_i=x_1p_1 + x_2p_2 + \cdots + x_kp_k.$$

Since all probabilities p_(i) add up to 1 (p₁ + p₂ + ⋯ + p_(k) = 1), the expected value is the weighted average, with p_(i)’s being the weights.

If all outcomes x_(i) are equiprobable (that is, p₁ = p₂ = ⋯ = p_(k)), then the weighted average turns into the simple average. This is intuitive: the expected value of a random variable is the average of all values it can take; thus the expected value is what one expects to happen _on average_. If the outcomes x_(i) are not equiprobable, then the simple average must be replaced with the weighted average, which takes into account the fact that some outcomes are more likely than the others. The intuition however remains the same: the expected value of X is what one expects to happen _on average_.

An illustration of the convergence of sequence averages of rolls of a to the expected value of 3.5 as the number of rolls (trials) grows.

Examples

-   Let X represent the outcome of a roll of a fair six-sided . More specifically, X will be the number of pips showing on the top face of the after the toss. The possible values for X are 1, 2, 3, 4, 5, and 6, all of which are equally likely with a probability of . The expectation of X is



        $\operatorname{E}[X] = 1\cdot\frac16 + 2\cdot\frac16 + 3\cdot\frac16 + 4\cdot\frac16 + 5\cdot\frac16 + 6\cdot\frac16 = 3.5.$

    If one rolls the n times and computes the average (arithmetic mean) of the results, then as n grows, the average will almost surely converge to the expected value, a fact known as the strong law of large numbers. One example sequence of ten rolls of the is 2, 3, 1, 2, 5, 6, 2, 2, 2, 6, which has the average of 3.1, with the distance of 0.4 from the expected value of 3.5. The convergence is relatively slow: the probability that the average falls within the range is 21.6% for ten rolls, 46.1% for a hundred rolls and 93.7% for a thousand rolls. See the figure for an illustration of the averages of longer sequences of rolls of the and how they converge to the expected value of 3.5. More generally, the rate of convergence can be roughly quantified by e.g. Chebyshev's inequality and the Berry–Esseen theorem.

-   The roulette game consists of a small ball and a wheel with 38 numbered pockets around the edge. As the wheel is spun, the ball bounces around randomly until it settles down in one of the pockets. Suppose random variable X represents the (monetary) outcome of a $1 bet on a single number ("straight up" bet). If the bet wins (which happens with probability in American roulette), the payoff is $35; otherwise the player loses the bet. The expected profit from such a bet will be



        $\operatorname{E}[\,\text{gain from }\$1\text{ bet}\,] = -\$1 \cdot \frac{37}{38} + \$35 \cdot \frac{1}{38} = -\$0.0526.$

    That is, the bet of $1 stands to lose $0.0526, so its expected value is -$0.0526.

Countably infinite case

Let X be a random variable with a countable set of finite outcomes x₁, x₂, ..., occurring with probabilities p₁, p₂, ..., respectively, such that the infinite sum $\textstyle \sum_{i=1}^\infty |x_i|\, p_i$ converges. The expected value of X is defined as the series

    $\operatorname{E}[X] = \sum_{i=1}^\infty x_i\, p_i.$

REMARK 1. Observe that $\textstyle \Bigl|\operatorname{E}[X]\Bigr| \leq \sum_{i=1}^\infty |x_i|\, p_i<\infty.$

REMARK 2. Due to absolute convergence, the expected value does not depend on the order in which the outcomes are presented. By contrast, a conditionally convergent series can be made to converge or diverge arbitrarily, via the Riemann rearrangement theorem.

Example

-   Suppose x_(i) = i and $p_i = \frac{k}{i2^i},$ for i = 1, 2, 3, …, where $k = \frac{1}{\ln 2}$ (with ln  being the natural logarithm) is the scale factor such that the probabilities sum to 1. Then

$$\operatorname{E}[X]=1\left(\frac{k}{2}\right) + 2\left(\frac{k}{8}\right) + 3\left(\frac{k}{24}\right) + \dots = \frac{k}{2}+\frac{k}{4}+\frac{k}{8}+\dots = k.$$

    Since this series converges absolutely, the expected value of X is k.

-   For an example that is not absolutely convergent, suppose random variable X takes values 1, −2, 3, −4, ..., with respective probabilities $\frac{c}{1^2},\frac{c}{2^2},\frac{c}{3^2},\frac{c}{4^2}$, ..., where $c=\frac{6}{\pi^2}$ is a normalizing constant that ensures the probabilities sum up to one. Then the infinite sum

$$\sum_{i=1}^\infty x_i\,p_i = c\,\bigg( 1 - \frac{1}{2} + \frac{1}{3} - \frac{1}{4} + \dotsb \bigg)$$

    converges and its sum is equal to $\frac{6\ln 2}{\pi^2}\approx 0.421383$. However it would be incorrect to claim that the expected value of X is equal to this number—in fact E [X] does not exist (finite or infinite), as this series does not converge absolutely (see Alternating harmonic series).

-   An example that diverges arises in the context of the St. Petersburg paradox. Let x_(i) = 2^(i) and $p_i=\frac{1}{2^i}$ for i = 1, 2, 3, …. The expected value calculation gives

$$\sum_{i=1}^\infty x_i\,p_i  =2\cdot \frac{1}{2}+4\cdot\frac{1}{4} + 8\cdot\frac{1}{8}+ 16\cdot\frac{1}{16}+ \cdots = 1 + 1 + 1 + 1 + \cdots  \,.$$

    Since this does not converge but instead keeps growing, the expected value is infinite.

Absolutely continuous case

If X is a random variable whose cumulative distribution function admits a density f(x), then the expected value is defined as the following Lebesgue integral:

    $\operatorname{E}[X] = \int_{\R} x f(x)\, dx.$

REMARK. From computational perspective, the integral in the definition of E [X] may often be treated as an improper Riemann integral $\textstyle \int^{+\infty}_{-\infty} x f(x)\, dx.$ Specifically, if the function xf(x) is Riemann-integrable on every finite interval [a, b], and

$$\min\left( (-1) \cdot \hbox{(R)}\int^0_{-\infty} xf(x)\, dx,\ \hbox{(R)} \int^{+\infty}_0 xf(x)\, dx\right) < \infty,$$

then the values (whether finite or infinite) of both integrals agree.

General case

In general, if X is a random variable defined on a probability space (Ω, Σ, P ), then the expected value of X, denoted by E [X], ⟨X⟩, or X̄, is defined as the Lebesgue integral

E [_X_] = ∫_(_Ω_)_X_(_ω_) _d_P (_ω_).

REMARK 1. If X₊(ω) = max (X(ω), 0) and X_(−)(ω) =  − min (X(ω), 0), then X = X₊ − X_(−). The functions X₊ and X_(−) can be shown to be measurable (hence, random variables), and, by definition of Lebesgue integral,

$$\begin{align}
\operatorname{E}[X]&=\int_\Omega X(\omega)\,d\operatorname{P}(\omega)\\
                   &=\int_\Omega X_+(\omega)\,d\operatorname{P}(\omega)-\int_\Omega X_-(\omega)\,d\operatorname{P}(\omega)\\
                   &=\operatorname{E}[X_+]-\operatorname{E}[X_-],
\end{align}$$

where E [X₊] and E [X_(−)] are non-negative and possibly infinite.

The following scenarios are possible:

-   E [X] is finite, i.e. max (E [X₊], E [X_(−)]) < ∞;
-   E [X] is infinite, i.e. max (E [X₊], E [X_(−)]) = ∞ and min (E [X₊], E [X_(−)]) < ∞;
-   E [X] is neither finite nor infinite, i.e. E [X₊] = E [X_(−)] = ∞.

REMARK 2. If F_(X)(x) = P (X ≤ x) is the cumulative distribution function of X, then

E [_X_] = ∫_( − ∞)^( + ∞)_x_ _d__F__(_X_)(_x_),
where the integral is interpreted in the sense of Lebesgue–Stieltjes.

REMARK 3. An example of a distribution for which there is no expected value is Cauchy distribution.

REMARK 4. For multidimensional random variables, their expected value is defined per component, i.e.

E [(_X_₁, …, _X__(_n_))] = (E [_X_₁], …, E [_X__(_n_)])

and, for a random matrix X with elements X_(ij),

(E [_X_])_(_i__j_) = E [_X__(_i__j_)].


Basic properties

The properties below replicate or follow immediately from those of Lebesgue integral.

E [1_(A)] = P (A)

If A is an event, then E [1_(A)] = P (A), where 1_(A) is the indicator function of the set A.

PROOF. By definition of Lebesgue integral of the simple function 1_(A) = 1_(A)(ω),

E [1_(_A_)] = 1 ⋅ P (_A_) + 0 ⋅ P (_Ω_ \ _A_) = P (_A_).

===If _X_ = _Y_ (a.s.) then E[_X_] = E[_Y_]=== The statement follows from the definition of Lebesgue integral if we notice that X₊ = Y₊ (a.s.), X_(−) = Y_(−) (a.s.), and that changing a simple random variable on a set of probability zero does not alter the expected value.

Expected value of a constant

If X is a random variable, and X = c (a.s.), where c ∈ [ − ∞,  + ∞], then E [X] = c. In particular, for an arbitrary random variable X, E [E [X]] = E [X].

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| PROOF.                                                                                                                                                                            |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Let C be a constant random variable, i.e. C ≡ c. It follows from the definition of Lebesgue integral that E [C] = c. It also follows that X = C (a.s.). By the previous property, |
|                                                                                                                                                                                   |
| E [_X_] = E [_C_] = _c_.                                                                                                                                                          |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Linearity

The expected value operator (or EXPECTATION OPERATOR) E [ ⋅ ] is linear in the sense that

$$\begin{align}
  \operatorname{E}[X + Y] &=   \operatorname{E}[X] + \operatorname{E}[Y], \\[6pt]
  \operatorname{E}[aX]    &= a \operatorname{E}[X],
\end{align}$$
where X and Y are arbitrary random variables, and a is a constant.

More rigorously, let X and Y be random variables whose expected values are defined (different from ∞ − ∞).

-   If E [X] + E [Y] is also defined (i.e. differs from ∞ − ∞), then

E [_X_ + _Y_] = E [_X_] + E [_Y_].

-   Let E [X] be finite, and $a\in\R$ be a finite scalar. Then E [aX] = aE [X].

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| PROOF.                                                                                                                                                                                                                                                                                                                                                                                                                      |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 1. We prove ADDITIVITY in several steps.                                                                                                                                                                                                                                                                                                                                                                                    |
|                                                                                                                                                                                                                                                                                                                                                                                                                             |
| 1A. If X and Y are simple and non-negative, taking intersections where necessary, one can re-write X and Y in the form                                                                                                                                                                                                                                                                                                      |
|                                                                                                                                                                                                                                                                                                                                                                                                                             |
| $$X=\sum^n_{i=1}x_i \cdot {\mathbf 1}_{A_i}$$                                                                                                                                                                                                                                                                                                                                                                               |
|                                                                                                                                                                                                                                                                                                                                                                                                                             |
| and                                                                                                                                                                                                                                                                                                                                                                                                                         |
|                                                                                                                                                                                                                                                                                                                                                                                                                             |
| $$Y=\sum^n_{i=1}y_i\cdot {\mathbf 1}_{A_i},$$                                                                                                                                                                                                                                                                                                                                                                               |
|                                                                                                                                                                                                                                                                                                                                                                                                                             |
| for some measurable pairwise-disjoint sets {A_(i)}_(i = 1)^(n) partitioning Ω, and 1_(A_(i)) = 1_(A_(i))(ω) being the indicator function of the set A_(i). By a straightforward check, the additivity follows.                                                                                                                                                                                                              |
|                                                                                                                                                                                                                                                                                                                                                                                                                             |
| 1B. Assuming that X and Y are arbitrary and non-negative, recall that every non-negative measurable function is a pointwise limit of a pointwise non-decreasing sequence of simple non-negative ones. Let {X_(n)} and {Y_(n)} be such sequences converging to X and Y, respectively. We see that {X_(n) + Y_(n)} pointwise non-decreases, and X_(n) + Y_(n) → X + Y pointwise. By monotone convergence theorem and case 1A, |
|                                                                                                                                                                                                                                                                                                                                                                                                                             |
| $$\begin{align}                                                                                                                                                                                                                                                                                                                                                                                                             |
| \operatorname{E}[X+Y] &= \operatorname{E}[\lim_n (X_n+Y_n)]\\                                                                                                                                                                                                                                                                                                                                                               |
|                       &= \lim_n\operatorname{E}[X_n+Y_n]\\                                                                                                                                                                                                                                                                                                                                                                  |
|                       &= \lim_n(\operatorname{E}[X_n] + \operatorname{E}[Y_n])\\                                                                                                                                                                                                                                                                                                                                            |
|                       &= \lim_n\operatorname{E}[X_n] + \lim_n\operatorname{E}[Y_n]\\                                                                                                                                                                                                                                                                                                                                        |
|                       &= \operatorname{E}[\lim_n X_n] + \operatorname{E}[\lim_n Y_n]\\                                                                                                                                                                                                                                                                                                                                      |
|                       &= \operatorname{E}[X] + \operatorname{E}[Y].                                                                                                                                                                                                                                                                                                                                                         |
| \end{align}$$                                                                                                                                                                                                                                                                                                                                                                                                               |
|                                                                                                                                                                                                                                                                                                                                                                                                                             |
| (The reader can verify that using the monotone convergence theorem this way does _not_ lead to circular logic).                                                                                                                                                                                                                                                                                                             |
|                                                                                                                                                                                                                                                                                                                                                                                                                             |
| 1C. In the general case, if Z = X + Y, then Z₊ + X_(−) + Y_(−) = Z_(−) + X₊ + Y₊, and                                                                                                                                                                                                                                                                                                                                       |
|                                                                                                                                                                                                                                                                                                                                                                                                                             |
| E [_Z_₊ + _X__(−) + _Y__(−)] = E [_Z__(−) + _X_₊ + _Y_₊].                                                                                                                                                                                                                                                                                                                                                                   |
|                                                                                                                                                                                                                                                                                                                                                                                                                             |
| Splitting up,                                                                                                                                                                                                                                                                                                                                                                                                               |
|                                                                                                                                                                                                                                                                                                                                                                                                                             |
| E [_Z_₊] + E [_X__(−)] + E [_Y__(−)] = E [_Z__(−)] + E [_X_₊] + E [_Y_₊],                                                                                                                                                                                                                                                                                                                                                   |
|                                                                                                                                                                                                                                                                                                                                                                                                                             |
| which is equivalent to,                                                                                                                                                                                                                                                                                                                                                                                                     |
|                                                                                                                                                                                                                                                                                                                                                                                                                             |
| E [_Z_₊] − E [_Z__(−)] = E [_X_₊] + E [_Y_₊] − E [_X__(−)] − E [_Y__(−)],                                                                                                                                                                                                                                                                                                                                                   |
|                                                                                                                                                                                                                                                                                                                                                                                                                             |
| and finally,                                                                                                                                                                                                                                                                                                                                                                                                                |
|                                                                                                                                                                                                                                                                                                                                                                                                                             |
| E [_Z_] = E [_X_] + E [_Y_].                                                                                                                                                                                                                                                                                                                                                                                                |
|                                                                                                                                                                                                                                                                                                                                                                                                                             |
| 2. To prove HOMOGENEITY, we first assume that the scalar a above is non-negative. The finiteness of E [X] implies that X is finite (a.s.). Therefore, a ⋅ X is also finite (a.s.), which guarantees that E [aX] is finite. The equality, thus, is a straightforward check based on the definition of Lebesgue integral.                                                                                                     |
|                                                                                                                                                                                                                                                                                                                                                                                                                             |
| If a < 0, then we first prove that E [ − X] =  − E [X] by observing that ( − X)₊ = X_(−) and vice versa.                                                                                                                                                                                                                                                                                                                    |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

E[_X_] exists and is finite if and only if E[|_X_|] is finite

The following statements regarding a random variable X are equivalent:

-   E [X] exists and is finite.
-   Both E [X₊] and E [X_(−)] are finite.
-   E [|X|] is finite.

SKETCH OF PROOF. Indeed, |X| = X₊ + X_(−). By linearity, E [|X|] = E [X₊] + E [X_(−)]. The above equivalency relies on the definition of Lebesgue integral and measurability of X.

REMARK. For the reasons above, the expressions "X is integrable" and "the expected value of X is finite" are used interchangeably when speaking of a random variable throughout this article.

If _X_ ≥ 0 (a.s.) then E[_X_] ≥ 0

+--------------------------------------------------------------------------------------------------------------------------------------------+
| PROOF.                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------+
| Denote                                                                                                                                     |
|                                                                                                                                            |
| $$\operatorname{SF}=\{s:\Omega\to\R\mid s \text{ is a simple random variable, and } 0\leq s\leq X_+\}.$$                                   |
| If s ∈ SF , then E [s] ∈ [0,  + ∞), and hence, by definition of Lebesgue integral,                                                         |
|                                                                                                                                            |
| E [_X_₊] = sup_(_s_ ∈ SF )E [_s_] ≥ 0.                                                                                                     |
|                                                                                                                                            |
| On the other hand, X_(−) = 0 (a.s.), so, through a similar argument, E [X_(−)] = 0, and therefore E [X] = E [X₊] − E [X_(−)] = E [X₊] ≥ 0. |
+--------------------------------------------------------------------------------------------------------------------------------------------+

Monotonicity

If X ≤ Y (a.s.), and both E [X] and E [Y] exist, then E [X] ≤ E [Y].

REMARK. E [X] and E [Y] _exist_ in the sense that min (E [X₊], E [X_(−)]) < ∞ and min (E [Y₊], E [Y_(−)]) < ∞.

PROOF follows from the linearity and the previous property if we set Z = Y − X and notice that Z ≥ 0 (a.s.).

If |X| ≤ Y (a.s.) and E [Y] is finite then so is E [X]

Let X and Y be random variables such that |X| ≤ Y (a.s.) and E [Y] < ∞. Then E [X] ≠  ± ∞.

PROOF. Due to non-negativity of |X|, E |X| exists, finite or infinite. By monotonicity, E |X| ≤ E [Y] < ∞, so E |X| is finite which, as we saw earlier, is equivalent to E [X] being finite.

If E |X^(β)| < ∞ and 0 < α < β then E |X^(α)| < ∞

The proposition below will be used to prove the extremal property of E [X] later on.

PROPOSITION. If X is a random variable, then so is X^(α), for every α > 0. If, in addition, E |X^(β)| < ∞ and 0 < α < β, then E |X^(α)| < ∞.

+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| PROOF.                                                                                                                                                            |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| To see why the first statement holds, observe that X^(α) is a composition of X with x ↦ x^(α). As a composition of two measurable functions, X^(α) is measurable. |
|                                                                                                                                                                   |
| To prove the second statement, define                                                                                                                             |
|                                                                                                                                                                   |
| _Y_(_ω_) = max (|_X_(_ω_)|^(_β_), 1).                                                                                                                             |
| The reader can verify that Y is a random variable and |X|^(α) ≤ Y. By non-negativity,                                                                             |
|                                                                                                                                                                   |
| $$\begin{align}                                                                                                                                                   |
| \operatorname{E}[Y]&=\int\limits_{\{\omega\ \mid\ |X(\omega)|^\beta\leq 1\}}Y\,dP                                                                                 |
| +\int\limits_{\{\omega\ \mid\ |X(\omega)|^\beta>1 \}}Y\,dP\\[6pt]                                                                                                 |
|                    &=\operatorname{P}\bigl(|X(\omega)|^\beta\leq 1\bigr)                                                                                          |
| +\int\limits_{\{\omega\ \mid\ |X(\omega)|^\beta>1 \}}|X|^\beta\,dP\\[6pt]                                                                                         |
| &\leq 1+\operatorname{E}|X^\beta|<\infty.                                                                                                                         |
| \end{align}$$                                                                                                                                                     |
| By monotonicity,                                                                                                                                                  |
|                                                                                                                                                                   |
| E |_X_^(_α_)| ≤ E [_Y_] ≤ 1 + E |_X_^(_β_)| < ∞.                                                                                                                  |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Counterexample for infinite measure

The requirement that P (Ω) < ∞ is essential. By way of counterexample, consider the measurable space

$$([1, +\infty), {\mathcal B}_{\R_{ [1, +\infty) }}, \lambda ),$$

where ${\mathcal B}_{\R_{ [1, +\infty) }}$ is the Borel σ-algebra on the interval [1,  + ∞), and λ is the linear Lebesgue measure. The reader can prove that $\textstyle \int_{ [1, +\infty) }\frac{1}{x}\, dx = \infty,$ even though $\textstyle \int_{ [1, +\infty) }\frac{1}{x^2}\, dx = 1.$ (Sketch of proof: $\textstyle \int_S \frac{1}{x}\, dx$ and $\textstyle \int_S \frac{1}{x^2}\, dx$ define a measure μ on $\textstyle [1, +\infty) = \cup^\infty_{n=1}[1,n].$ Use "continuity from below" w.r. to μ and reduce to Riemann integral on each finite subinterval [1, n]).

Extremal property

Recall, as we proved early on, that if X is a random variable, then so is X².

PROPOSITION (EXTREMAL PROPERTY OF E [X])). Let X be a random variable, and E [X²] < ∞. Then E [X] and Var [X] are finite, and E [X] is the best least squares approximation for X among constants. Specifically,

-   for every $c \in \R$, $\textstyle \operatorname{E}[X-c]^2 \geq \operatorname{Var}[X];$
-   equality holds if and only if c = E [X].

(Var [X] denotes the variance of X).

REMARK (INTUITIVE INTERPRETATION OF EXTREMAL PROPERTY). In intuitive terms, the extremal property says that if one is asked to predict the outcome of a _trial_ of a random variable X, then E [X], in some practically useful sense, is one's best bet _if no advance information about the outcome is available_. If, on the other hand, one does have some advance knowledge ℱ regarding the outcome, then — again, in some practically useful sense — one's bet may be improved upon by using conditional expectations E [X ∣ ℱ] (of which E [X] is a special case) rather than E [X].

PROOF OF PROPOSITION. By the above properties, both E [X] and Var [X] = E [X²] − E²[X] are finite, and

$$\begin{align}
\operatorname{E}[X-c]^2 &= \operatorname{E}[X^2-2cX+c^2]\\[6pt]
    &=\operatorname{E}[X^2]-2c\operatorname{E}[X]+c^2\\[6pt]
    &=(c-\operatorname{E}[X])^2+\operatorname{E}[X^2]-\operatorname{E}^2[X]\\[6pt]
    &=(c-\operatorname{E}[X])^2+\operatorname{Var}[X],
\end{align}$$
whence the extremal property follows.

Non-degeneracy

If E |X| = 0, then X = 0 (a.s.).

+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| PROOF.                                                                                                                                                                                                                                                         |
+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| For every positive constant r ∈ ℝ_( > 0), P (|X| ≥ r) = 0. Indeed,                                                                                                                                                                                             |
|                                                                                                                                                                                                                                                                |
| _r_ ⋅ 1_(|_X_| ≥ _r_) ≤ |_X_| ⋅ 1_(|_X_| ≥ _r_) ≤ |_X_|,                                                                                                                                                                                                       |
|                                                                                                                                                                                                                                                                |
| where 1_(|X| ≥ r) = 1_(|X| ≥ r)(ω) is the indicator function of the set {ω ∈ Ω ∣ |X(ω)| ≥ r}. By a property above, the finiteness of E |X| guarantees that the expected values E [r ⋅ 1_(|X| ≥ r)] and E [|X| ⋅ 1_(|X| ≥ r)] are also finite. By monotonicity, |
|                                                                                                                                                                                                                                                                |
| _r_ ⋅ P (|_X_| ≥ _r_) = E [_r_ ⋅ 1_(|_X_| ≥ _r_)] ≤ E [|_X_| ⋅ 1_(|_X_| ≥ _r_)] ≤ E |_X_| = 0.                                                                                                                                                                 |
|                                                                                                                                                                                                                                                                |
| For some integer n > 0, set $\textstyle r=\frac{1}{n}$. Define $\textstyle S_n=\{\omega\in\Omega\mid |X(\omega)|\geq\frac{1}{n}\}$, and                                                                                                                        |
|                                                                                                                                                                                                                                                                |
| $$\textstyle S=\{\omega\in\Omega\mid |X(\omega)| > 0\}.$$                                                                                                                                                                                                      |
| The chain of sets                                                                                                                                                                                                                                              |
|                                                                                                                                                                                                                                                                |
| _S_₁ ⊆ ⋯ ⊆ _S__(_n_) ⊆ _S__(_n_ + 1) ⊆ ⋯ ⊆ _S_                                                                                                                                                                                                                 |
| monotonically non-decreases, and $S=\cup^\infty_{n=1}S_n$. By "continuity from below", $\textstyle \operatorname{P}(S)=\lim_n\operatorname{P}(S_n)$. Applying this formula, obtain                                                                             |
|                                                                                                                                                                                                                                                                |
| $$\operatorname{P}(X\neq 0) = \operatorname{P}(|X|>0) = \lim_n\operatorname{P}\left(|X|\geq\frac{1}{n}\right) = \lim_n 0=0,$$                                                                                                                                  |
| as required.                                                                                                                                                                                                                                                   |
+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

If E [X] <  + ∞ then X <  + ∞ (a.s.)

+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| PROOF.                                                                                                                                                                                               |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Since E [X] is defined (i.e. min (E [X₊], E [X_(−)]) < ∞), and E [X] = E [X₊] − E [X_(−)], we know that E [X₊] is finite. We want to show that X₊ <  + ∞ (a.s.), or equivalently, P (X₊ =  + ∞) = 0. |
|                                                                                                                                                                                                      |
| Let P (X₊ =  + ∞) > 0. Then {ω | X₊(ω) =  + ∞} ≠ ∅. Define                                                                                                                                           |
|                                                                                                                                                                                                      |
| $$\operatorname{SF} = \{ s \mid s\ \hbox{ is a simple random variable s.t.}\ 0\leq s\leq X_+ \}$$                                                                                                    |
|                                                                                                                                                                                                      |
| and                                                                                                                                                                                                  |
|                                                                                                                                                                                                      |
| _f__(_n_) = _n_ ⋅ 1_({_X_₊ =  + ∞}),                                                                                                                                                                 |
|                                                                                                                                                                                                      |
| where n ≥ 0. Clearly, $f_n\in {\rm SF},$ and                                                                                                                                                         |
|                                                                                                                                                                                                      |
| E [_f__(_n_)] = _n_ ⋅ P (_X_₊ =  + ∞).                                                                                                                                                               |
|                                                                                                                                                                                                      |
| We have                                                                                                                                                                                              |
|                                                                                                                                                                                                      |
| $$\operatorname{E}[X_+] = \sup_{s \in {\rm SF}} \operatorname{E}[s]                                                                                                                                  |
| \geq \sup_{n \geq 0} \operatorname{E}[f_n] = +\infty \cdot \operatorname{P}\bigl( X_+=+\infty \bigr) = +\infty,$$                                                                                    |
|                                                                                                                                                                                                      |
| in contradiction with an earlier conclusion that E [X₊] is finite.                                                                                                                                   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Corollary: if E [X] >  − ∞ then X >  − ∞ (a.s.)

Corollary: if E |X| < ∞ then X ≠  ± ∞ (a.s.)

|E [X]| ≤ E |X|

For an arbitrary random variable X, |E [X]| ≤ E |X|.

PROOF. By definition of Lebesgue integral,

$$\begin{align}
|\operatorname{E}[X]| &= \Bigl|\operatorname{E}[X_+]-\operatorname{E}[X_-]\Bigr|\leq\Bigl|\operatorname{E}[X_+]\Bigr|+\Bigl|\operatorname{E}[X_-]\Bigr|\\[5pt]
                     &=\operatorname{E}[X_+]+\operatorname{E}[X_-]=\operatorname{E}[X_++X_-]\\[5pt]
                     &=\operatorname{E}|X|.
\end{align}$$
Note that this result can also be proved based on Jensen's inequality.

Non-multiplicativity

In general, the expected value operator is not multiplicative, i.e. E [XY] is not necessarily equal to E [X] ⋅ E [Y]. Indeed, let X assume the values of 1 and -1 with probability 0.5 each. Then

$$\operatorname{E^2}[X]=\left(\frac{1}{2}\cdot (-1)+\frac{1}{2}\cdot 1\right)^2=0,$$
and

$$\operatorname{E}[X^2]=\frac{1}{2}\cdot (-1)^2+\frac{1}{2}\cdot 1^2=1, \text{ so } \operatorname{E}[X^2]\neq\operatorname{E^2}[X].$$

The amount by which the multiplicativity fails is called the covariance:

Cov (_X_, _Y_) = E [_X__Y_] − E [_X_]E [_Y_].

However, if X and Y are independent, then E [XY] = E [X]E [Y], and Cov (X, Y) = 0.

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| PROOF.                                                                                                                                                                                                                                  |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 1. THE CASE OF NON-NEGATIVE ℚ-VALUED RANDOM VARIABLES.                                                                                                                                                                                  |
|                                                                                                                                                                                                                                         |
| Given a positive integer n, let the random variables X : Ω₁ → ℝ and Y : Ω₂ → ℝ assume their values in the set                                                                                                                           |
|                                                                                                                                                                                                                                         |
| $$\left\{\frac{m}{n}\,\mathrel{\Big|}\,m=0,1,2,3,\ldots\right\}\subset{\mathbb Q}_{\geq 0}.$$                                                                                                                                           |
| Then $\textstyle X=\sum_{m\geq 0}\frac{m}{n}\cdot {\mathbf 1}_{X_{mn}}$, $\textstyle Y=\sum_{m\geq 0}\frac{m}{n}\cdot {\mathbf 1}_{Y_{mn}}$, and                                                                                        |
|                                                                                                                                                                                                                                         |
| $$\begin{align}                                                                                                                                                                                                                         |
| XY&=\mathop{\sum_{m_1\geq 0}}\sum\limits_{m_2\geq 0}\frac{m_1}{n}{\mathbf 1}_{X_{m_1n}}\cdot\frac{m_2}{n}{\mathbf 1}_{Y_{m_2n}}\\                                                                                                       |
|   &=\frac{1}{n^2}\sum_{i\geq 0}i\cdot\sum_{m_1\cdot m_2=i}{\mathbf 1}_{X_{m_1n}\times Y_{m_2n}},                                                                                                                                        |
| \end{align}$$                                                                                                                                                                                                                           |
| or equivalently,                                                                                                                                                                                                                        |
|                                                                                                                                                                                                                                         |
| $$XY(\omega)=\frac{i}{n^2}\Longleftrightarrow\omega\in\bigsqcup_{m_1m_2=i}(X_{m_1n}\times Y_{m_2n}),$$                                                                                                                                  |
| where 1_(S) is the indicator function of the set S,                                                                                                                                                                                     |
|                                                                                                                                                                                                                                         |
| $$X_{mn}=\left\{\omega\in\Omega_1\,\mathrel{\Big|}\,X(\omega)=\frac{m}{n}\right\},$$                                                                                                                                                    |
|                                                                                                                                                                                                                                         |
| $$Y_{mn}=\left\{\omega\in\Omega_2\,\mathrel{\Big|}\,Y(\omega)=\frac{m}{n}\right\},$$                                                                                                                                                    |
| and ⨆ denotes disjoint union. By definition of expected value,                                                                                                                                                                          |
|                                                                                                                                                                                                                                         |
| $$\begin{align}                                                                                                                                                                                                                         |
| \operatorname{E}[XY]&=\int\limits_{\Omega_1\times\Omega_2}XYd\operatorname{P}\\                                                                                                                                                         |
| &=\frac{1}{n^2}\sum_{i\geq 0}i\cdot\sum_{m_1\cdot m_2=i}\operatorname{P}(X\in X_{m_1n}, Y\in Y_{m_2n})                                                                                                                                  |
| \end{align}$$                                                                                                                                                                                                                           |
| Due to independence,                                                                                                                                                                                                                    |
|                                                                                                                                                                                                                                         |
| P (_X_ ∈ _X__(_m_₁_n_), _Y_ ∈ _Y__(_m_₂_n_)) = P (_X_ ∈ _X__(_m_₁_n_)) ⋅ P (_Y_ ∈ _Y__(_m_₂_n_)),                                                                                                                                       |
| whence                                                                                                                                                                                                                                  |
|                                                                                                                                                                                                                                         |
| $$\begin{align}                                                                                                                                                                                                                         |
|     \operatorname{E}[XY]&=\frac{1}{n^2}\sum_{i\geq 0}i\cdot\sum_{m_1\cdot m_2=i}\operatorname{P}(X\in X_{m_1n})\operatorname{P}(Y\in Y_{m_2n})\\[6pt]                                                                                   |
|     &=\mathop{\sum_{m_1\geq 0}}\sum\limits_{m_2\geq 0}\frac{m_1}{n}\operatorname{P}(X\in X_{m_1n})\cdot\frac{m_2}{n}\operatorname{P}(Y\in Y_{m_2n})\\[6pt]                                                                              |
|     &=\left(\sum_{m_1\geq 0}\frac{m_1}{n}\operatorname{P}(X\in X_{m_1n})\right)\cdot\left(\sum_{m_2\geq 0}\frac{m_2}{n}\operatorname{P}(Y\in Y_{m_2n})\right)\\[6pt]                                                                    |
|     &=\operatorname{E}[X]\operatorname{E}[Y].                                                                                                                                                                                           |
| \end{align}$$                                                                                                                                                                                                                           |
|                                                                                                                                                                                                                                         |
| 2. THE CASE OF NON-NEGATIVE RANDOM VARIABLES.                                                                                                                                                                                           |
|                                                                                                                                                                                                                                         |
| Let X and Y be (arbitrary) non-negative random variable. Define                                                                                                                                                                         |
|                                                                                                                                                                                                                                         |
| $$X_n(\omega)=                                                                                                                                                                                                                          |
| \begin{cases}                                                                                                                                                                                                                           |
| \frac{m}{n} &\text{if}\ \frac{m}{n}\leq X(\omega)<\frac{m+1}{n},\\[6pt]                                                                                                                                                                 |
| 0           &\text{if}\ X(\omega)=+\infty,                                                                                                                                                                                              |
| \end{cases}$$                                                                                                                                                                                                                           |
| for an arbitrary ω ∈ Ω₁. Note that X_(n) : Ω₁ → ℝ is a random variable and                                                                                                                                                              |
|                                                                                                                                                                                                                                         |
| $$\text{Range}(X_n)\subseteq\left\{\frac{m}{n}\,\mathrel{\Big|}\,m=0,1,2,3,\ldots\right\}\subset\mathbb{Q}_{\geq 0}.$$                                                                                                                  |
| As we saw previously, the finiteness of E [X] implies that X is finite almost sure, and consequently, $\textstyle |X_n-X|\leq\frac{1}{n}$ (a.s.) on Ω₁. This, in turn, implies that $\textstyle\operatorname{E}|X_n-X|\leq\frac{1}{n}$. |
|                                                                                                                                                                                                                                         |
| Let the random variable Y_(n) be defined the same way but with respect to Y. We have                                                                                                                                                    |
|                                                                                                                                                                                                                                         |
| $$\begin{align}                                                                                                                                                                                                                         |
|     &\Bigl|\operatorname{E}[XY]-\operatorname{E}[X]\operatorname{E}[Y]\Bigr|=\\                                                                                                                                                         |
|     &=\Bigl|\operatorname{E}[XY]-\operatorname{E}[X_nY]+\operatorname{E}[X_nY]-\operatorname{E}[X]\operatorname{E}[Y]\Bigr|\\                                                                                                           |
|     &=\Bigl|\operatorname{E}[(X-X_n)Y]+\operatorname{E}[X_nY]-\operatorname{E}[X]\operatorname{E}[Y]\Bigr|\\                                                                                                                            |
|     &\leq\frac{1}{n}\operatorname{E}|Y|+\Bigl|\operatorname{E}[X_nY]-\operatorname{E}[X]\operatorname{E}[Y]\Bigr|\\                                                                                                                     |
|     &=\frac{1}{n}\operatorname{E}|Y|+\Bigl|\operatorname{E}[X_nY]-\operatorname{E}[X_nY_n]+\operatorname{E}[X_nY_n]-\operatorname{E}[X]\operatorname{E}[Y]\Bigr|\\                                                                      |
|     &\leq\frac{1}{n}\operatorname{E}|Y|+\frac{1}{n}\operatorname{E}|X_n|+\Bigl|\operatorname{E}[X_nY_n]-\operatorname{E}[X]\operatorname{E}[Y]\Bigr|\\                                                                                  |
|     &=\frac{1}{n}\operatorname{E}|Y|+\frac{1}{n}\operatorname{E}|X_n-X+X|+\Bigl|\operatorname{E}[X_nY_n]-\operatorname{E}[X]\operatorname{E}[Y]\Bigr|\\                                                                                 |
|     &\leq\frac{1}{n}\operatorname{E}|Y|+\frac{\operatorname{E}|X_n-X|+\operatorname{E}|X|}{n}+\Bigl|\operatorname{E}[X_nY_n]-\operatorname{E}[X]\operatorname{E}[Y]\Bigr|\\                                                             |
|     &\leq\frac{1}{n}\operatorname{E}|Y|+\frac{1}{n^2}+\frac{\operatorname{E}|X|}{n}+\Bigl|\operatorname{E}[X_nY_n]-\operatorname{E}[X]\operatorname{E}[Y]\Bigr|.                                                                        |
| \end{align}$$                                                                                                                                                                                                                           |
| X_(n) and Y_(n) were shown to satisfy E [X_(n)Y_(n)] = E [X_(n)]E [Y_(n)]. Therefore,                                                                                                                                                   |
|                                                                                                                                                                                                                                         |
| $$\begin{align}                                                                                                                                                                                                                         |
|     &\Bigl|\operatorname{E}[X_nY_n]-\operatorname{E}[X]\operatorname{E}[Y]\Bigr|=\\                                                                                                                                                     |
|     &=\Bigl|\operatorname{E}[X_n]\operatorname{E}[Y_n]-\operatorname{E}[X]\operatorname{E}[Y]\Bigr|=\\                                                                                                                                  |
|     &=\Bigl|\operatorname{E}[X_n]\operatorname{E}[Y_n]-\operatorname{E}[X]\operatorname{E}[Y_n]+\operatorname{E}[X]\operatorname{E}[Y_n]-\operatorname{E}[X]\operatorname{E}[Y]\Bigr|\\                                                 |
|     &\leq\Bigl|\operatorname{E}[X_n]\operatorname{E}[Y_n]-\operatorname{E}[X]\operatorname{E}[Y_n]\Bigr|+\Bigl|\operatorname{E}[X]\operatorname{E}[Y_n]-\operatorname{E}[X]\operatorname{E}[Y]\Bigr|\\                                  |
|     &\leq\operatorname{E}|X_n-X|\cdot\operatorname{E}|Y_n|+\operatorname{E}|X|\cdot\operatorname{E}|Y_n-Y|\\                                                                                                                            |
|     &\leq\frac{\operatorname{E}|Y_n|+\operatorname{E}|X|}{n}=\frac{\operatorname{E}|Y_n-Y+Y|+\operatorname{E}|X|}{n}\\                                                                                                                  |
|     &\leq\frac{\operatorname{E}|Y_n-Y|+\operatorname{E}|Y|+\operatorname{E}|X|}{n}\\                                                                                                                                                    |
|     &\leq\frac{1}{n^2}+\frac{\operatorname{E}|Y|+\operatorname{E}|X|}{n}.                                                                                                                                                               |
| \end{align}$$                                                                                                                                                                                                                           |
| It follows that, being independent from n, the constant value $\Bigl|\operatorname{E}[XY]-\operatorname{E}[X]\operatorname{E}[Y]\Bigr|$ can only be equal to 0.                                                                         |
|                                                                                                                                                                                                                                         |
| 3. THE GENERAL CASE.                                                                                                                                                                                                                    |
|                                                                                                                                                                                                                                         |
| Let X and Y be arbitrary random variables. We have                                                                                                                                                                                      |
|                                                                                                                                                                                                                                         |
| $$\begin{align}                                                                                                                                                                                                                         |
|     \operatorname{E}[XY]&=\operatorname{E}[(X_+-X_-)(Y_+-Y_-)]\\                                                                                                                                                                        |
|     &=\operatorname{E}[X_+Y_+]-\operatorname{E}[X_+Y_-]-\operatorname{E}[X_-Y_+]+\operatorname{E}[X_-Y_-]\\                                                                                                                             |
|     &=\operatorname{E}[X_+]\operatorname{E}[Y_+]-\operatorname{E}[X_+]\operatorname{E}[Y_-]-\operatorname{E}[X_-]\operatorname{E}[Y_+]+\operatorname{E}[X_-]\operatorname{E}[Y_-]\\                                                     |
|     &=(\operatorname{E}[X_+]-\operatorname{E}[X_-])(\operatorname{E}[Y_+]-\operatorname{E}[Y_-])\\                                                                                                                                      |
|     &=\operatorname{E}[X_+-X_-]\operatorname{E}[Y_+-Y_-]\\                                                                                                                                                                              |
|     &=\operatorname{E}[X]\operatorname{E}[Y].                                                                                                                                                                                           |
| \end{align}$$                                                                                                                                                                                                                           |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Counterexample: $\operatorname{E}[X_i] \not\to \operatorname{E}[X]$ despite X_(i) → X pointwise

Let ([0,1],ℬ_([0, 1]),P) be the probability space, where ℬ_([0, 1]) is the Borel σ-algebra on [0, 1] and P the linear Lebesgue measure. For i ≥ 1, define a sequence of random variables

$$X_i = i \cdot {\mathbf 1}_{\left[0,\frac{1}{i}\right]}$$

and a random variable

$$X=
\begin{cases}
+\infty & \text{if}\ x=0\\
0 & \text{otherwise.}
\end{cases}$$

on [0, 1], with 1_(S) being the indicator function of the set S ⊆ [0, 1].

For every x ∈ [0, 1], as i →  + ∞, X_(i)(x) → X(x), and

$$\operatorname{E}[X_i] = i \cdot {\mathrm P} \left( \left[ 0,\frac{1}{i} \right] \right) = i \cdot \dfrac{1}{i} = 1,$$

so lim_(i → ∞)E [X_(i)] = 1. On the other hand, P ({0}) = 0, and hence E [X] = 0.

Countable non-additivity

In general, the expected value operator is not σ-additive, i.e.

$$\operatorname{E}\left[\sum^\infty_{i=0} X_i\right] \neq \sum^\infty_{i=0}\operatorname{E}[X_i].$$

By way of counterexample, let ([0,1],ℬ_([0, 1]),P) be the probability space, where ℬ_([0, 1]) is the Borel σ-algebra on [0, 1] and P the linear Lebesgue measure. Define a sequence of random variables $\textstyle X_i = (i+1)\cdot {\mathbf 1}_{\left[0,\frac{1}{i+1}\right]} - i\cdot {\mathbf 1}_{\left[0,\frac{1}{i}\right]}$ on [0, 1], with 1_(S) being the indicator function of the set S ⊆ [0, 1]. For the pointwise sums, we have

$$\sum^n_{i=0} X_i = (n+1)\cdot {\mathbf 1}_{\left[0,\frac{1}{n+1}\right]},$$

$$\sum^\infty_{i=0} X_i (x)=
\begin{cases}
+\infty & \text{if}\ x=0\\
0 & \text{otherwise.}
\end{cases}$$
By finite additivity,

$$\sum^\infty_{i=0}\operatorname{E}[X_i] = \lim_{n\to\infty}\sum^n_{i=0}\operatorname{E}[X_i]
= \lim_{n\to\infty}\operatorname{E}\left[\sum^n_{i=0} X_i\right] = 1.$$
On the other hand, P ({0}) = 0, and hence

$$\operatorname{E}\left[\sum^\infty_{i=0} X_i\right] = 0\neq 1 =
\sum^\infty_{i=0}\operatorname{E}[X_i].$$

Countable additivity for non-negative random variables

Let {X_(i)}_(i = 0)^(∞) be non-negative random variables. It follows from monotone convergence theorem that

$$\operatorname{E}\left[\sum^\infty_{i=0}X_i\right] = \sum^\infty_{i=0}\operatorname{E}[X_i].$$


Inequalities

Cauchy–Bunyakovsky–Schwarz inequality

The Cauchy–Bunyakovsky–Schwarz inequality states that

(E [_X__Y_])² ≤ E [_X_²] ⋅ E [_Y_²].

Markov's inequality

For a _nonnegative_ random variable X and a > 0, Markov's inequality states that

$$\operatorname{P}(X\geq a)\leq\frac{\operatorname{E}[X]}{a}.$$

Bienaymé-Chebyshev inequality

Let X be an arbitrary random variable with finite expected value E [X] and finite variance Var [X] ≠ 0. The Bienaymé-Chebyshev inequality states that, for any real number k > 0,

$$\operatorname{P}\Bigl(\Bigl|X-\operatorname{E}[X]\Bigr|\geq k\sqrt{\operatorname{Var}[X]}\Bigr)\leq\frac{1}{k^2}.$$

Jensen's inequality

Let f : ℝ → ℝ be a Borel convex function and X a random variable such that E |X| < ∞. Jensen's inequality states that

_f_(E (_X_)) ≤ E (_f_(_X_)).

REMARK 1. The expected value E (f(X)) is well-defined even if X is allowed to assume infinite values. Indeed, E |X| < ∞ implies that X ≠  ± ∞ (a.s.), so the random variable f(X(ω)) is defined almost sure, and therefore there is enough information to compute E (f(X)).

'''Remark 2. ''' Jensen's inequality implies that |E [X]| ≤ E |X| since the absolute value function is convex.

 Lyapunov's inequality

Let 0 < s < t. Lyapunov's inequality states that

$$\Bigl(\operatorname{E}|X|^s\Bigr)^{1/s}\leq\left(\operatorname{E}|X|^t\right)^{1/t}.$$

PROOF. Applying Jensen's inequality to |X|^(s) and g(x) = |x|^(t/s), obtain $\Bigl|\operatorname{E}|X^s|\Bigr|^{t/s}\leq\operatorname{E}|X^s|^{t/s}=\operatorname{E}|X|^t$. Taking the tth root of each side completes the proof.

COROLLARY.

$$\operatorname{E}|X|\leq\Bigl(\operatorname{E}|X|^2\Bigr)^{1/2}\leq\cdots\leq\Bigl(\operatorname{E}|X|^n\Bigr)^{1/n}\leq\cdots$$

 Hölder's inequality

Let p and q satisfy 1 ≤ p ≤ ∞, 1 ≤ q ≤ ∞, and 1/p + 1/q = 1. The Hölder's inequality states that

E |_X__Y_| ≤ (E |_X_|^(_p_))^(1/_p_)(E |_Y_|^(_q_))^(1/_q_).

Minkowski inequality

Let p be an integer satisfying 1 ≤ p ≤ ∞. Let, in addition, E |X|^(p) < ∞ and E |Y|^(p) < ∞. Then, according to the Minkowski inequality, E |X + Y|^(p) < ∞ and

$$\Bigl(\operatorname{E}|X+Y|^p\Bigr)^{1/p}\leq\Bigl(\operatorname{E}|X|^p\Bigr)^{1/p}+\Bigl(\operatorname{E}|Y|^p\Bigr)^{1/p}.$$


Taking limits under the E  sign

Monotone convergence theorem

Let the sequence of random variables {X_(n)} and the random variables X and Y be defined on the same probability space (Ω, Σ, P ). Suppose that

-   all the expected values E [X_(n)], E [X], and E [Y] are defined (differ from ∞ − ∞);
-   E [Y] >  − ∞;
-   for every n,

$$-\infty \leq Y \leq X_n \leq X_{n+1} \leq +\infty \quad \hbox{(a.s.)};$$

-   X is the pointwise limit of {X_(n)} (a.s.), i.e. X(ω) = lim_(n)X_(n)(ω) (a.s.).

The monotone convergence theorem states that

lim_(n)E [X_(n)] = E [X].

+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| PROOF.                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Observe that, by monotonicity, the sequence {E [X_(n)]} monotonically non-decreases, and E [Y] ≤ E [X_(n)] ≤ E [X].                                                                                                                                                                                                                                                                                                                                         |
|                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| If E [Y] =  + ∞, then E [Y] = E [X_(n)] = E [X], and we are done.                                                                                                                                                                                                                                                                                                                                                                                           |
|                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| If E [Y] <  + ∞, then, following the assumption that E [Y] >  − ∞, we conclude that E [Y] is finite which, in turn, implies, as we saw previously, that Y is finite (a.s.).                                                                                                                                                                                                                                                                                 |
|                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| Denote Z_(n) = X_(n) − Y and Z = X − Y. The finiteness of Y (a.s.) implies that the differences Z_(n) = X_(n) − Y and Z = X − Y are defined (do not have the form ∞ − ∞) everywhere outside of a null set. On that null set, Z_(n) and Z may be defined arbitrarily (e.g. as zero or in any other way, as long as measurability is preserved) without affecting this proof. As a difference of two random variables, Z_(n) and Z are also random variables. |
|                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| It follows from the definition that Z_(n) ≥ 0 (a.s.), Z ≥ 0 (a.s.), the sequence {Z_(n)} pointwise non-decreases (a.s.), and Z_(n) → Z pointwise (a.s.).                                                                                                                                                                                                                                                                                                    |
|                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| By (the general version of) monotone convergence theorem,                                                                                                                                                                                                                                                                                                                                                                                                   |
|                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| $$\begin{align}                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| (\lim_n\operatorname{E}[X_n])-\operatorname{E}[Y]&= \lim_n(\operatorname{E}[X_n]-\operatorname{E}[Y])\\                                                                                                                                                                                                                                                                                                                                                     |
| &= \lim_n\operatorname{E}[X_n-Y]\\                                                                                                                                                                                                                                                                                                                                                                                                                          |
| &= \lim_n\operatorname{E}[Z_n]\\                                                                                                                                                                                                                                                                                                                                                                                                                            |
| &=\operatorname{E}[Z]\\                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| &=\operatorname{E}[X-Y]\\                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| &=\operatorname{E}[X]-\operatorname{E}[Y],                                                                                                                                                                                                                                                                                                                                                                                                                  |
| \end{align}$$                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| whence the assertion follows.                                                                                                                                                                                                                                                                                                                                                                                                                               |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Fatou's lemma

Let the sequence of random variables {X_(n)} and the random variable Y be defined on the same probability space (Ω, Σ, P ). Suppose that

-   all the expected values E [X_(n)], $\textstyle \operatorname{E}[\liminf_n X_n],$ and E [Y] are defined (differ from ∞ − ∞);
-   E [Y] >  − ∞;
-    − ∞ ≤ Y ≤ X_(n) ≤  + ∞ (a.s.), for every n.

Fatou's lemma states that

E [liminf_(_n_)_X__(_n_)] ≤ liminf_(_n_)E [_X__(_n_)].

(Note that $\textstyle \liminf_n X_n$ is a random variable, for every n, by the properties of limit inferior).

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| PROOF.                                                                                                                                                                                                                                                                                                                                                                                                    |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| If E [Y] =  + ∞, then, by monotonicity, E [Y] = E [X_(n)] =  + ∞, so $\textstyle \liminf_n \operatorname{E}[X_n] = +\infty,$ and the assertion follows.                                                                                                                                                                                                                                                   |
|                                                                                                                                                                                                                                                                                                                                                                                                           |
| If E [Y] <  + ∞, then, following the assumption that E [Y] >  − ∞, we conclude that E [Y] is finite which, in turn, implies, as we saw previously, that Y is finite (a.s.).                                                                                                                                                                                                                               |
|                                                                                                                                                                                                                                                                                                                                                                                                           |
| Denote Z_(n) = X_(n) − Y. Then Z_(n) ≥ 0 (a.s.). The finiteness of Y (a.s.) implies that Z_(n) is defined (does not have the form ∞ − ∞) everywhere outside of a null set. On that null set Z_(n) may be defined arbitrarily (e.g. as zero or in any other way, as long as measurability is preserved) without affecting this proof. As a difference of two random variables, Z_(n) is a random variable. |
|                                                                                                                                                                                                                                                                                                                                                                                                           |
| By (the general version of) Fatou's lemma,                                                                                                                                                                                                                                                                                                                                                                |
|                                                                                                                                                                                                                                                                                                                                                                                                           |
| $$\begin{align}                                                                                                                                                                                                                                                                                                                                                                                           |
| \operatorname{E}[\liminf_n X_n]-\operatorname{E}[Y] &= \operatorname{E}[\liminf_n (X_n-Y)]\\                                                                                                                                                                                                                                                                                                              |
| &= \operatorname{E}[\liminf_n Z_n]\\                                                                                                                                                                                                                                                                                                                                                                      |
| &\leq \liminf_n\operatorname{E}[Z_n]\\                                                                                                                                                                                                                                                                                                                                                                    |
| &=\liminf_n\operatorname{E}[X_n-Y]\\                                                                                                                                                                                                                                                                                                                                                                      |
| &=\liminf_n(\operatorname{E}[X_n]-\operatorname{E}[Y])\\                                                                                                                                                                                                                                                                                                                                                  |
| &=(\liminf_n\operatorname{E}[X_n])-\operatorname{E}[Y],                                                                                                                                                                                                                                                                                                                                                   |
| \end{align}$$                                                                                                                                                                                                                                                                                                                                                                                             |
| whence the assertion follows.                                                                                                                                                                                                                                                                                                                                                                             |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

COROLLARY. Let

-   X_(n) → X pointwise (a.s.);
-   E [X_(n)] ≤ C, for some constant C (independent from n);
-   E [Y] >  − ∞;
-    − ∞ ≤ Y ≤ X_(n) ≤  + ∞ (a.s.), for every n.

Then E [X] ≤ C.

PROOF is by observing that $\textstyle X = \liminf_n X_n$ (a.s.) and applying Fatou's lemma.

Dominated convergence theorem

Let {X_(n)}_(n) be a sequence of random variables. If X_(n) → X pointwise (a.s.), |X_(n)| ≤ Y ≤  + ∞ (a.s.), and E [Y] < ∞. Then, according to the dominated convergence theorem,

-   the function X is measurable (hence a random variable);
-   E |X| < ∞;
-   all the expected values E [X_(n)] and E [X] are defined (do not have the form ∞ − ∞);
-   lim_(n)E [X_(n)] = E [X] (both sides may be infinite);
-   lim_(n)E |X_(n) − X| = 0.

Uniform integrability

In some cases, the equality lim_(n)E [X_(n)] = E [lim_(n)X_(n)] holds when the sequence {X_(n)} is _uniformly integrable_.


Relationship with characteristic function

The probability density function f_(X) of a scalar random variable X is related to its characteristic function φ_(X) by the inversion formula:

    $f_X(x) = \frac{1}{2\pi}\int_{\mathbb{R}} e^{-itx}\varphi_X(t) \, dt.$

For the expected value of g(X) (where g : ℝ → ℝ is a Borel function), we can use this inversion formula to obtain

$$\operatorname{E}[g(X)] = \frac{1}{2\pi} \int_{\mathbb R} g(x)\left[ \int_{\mathbb R} e^{-itx}\varphi_X(t) \, dt \right]\,dx.$$

If E [g(X)] is finite, changing the order of integration, we get, in accordance with Fubini–Tonelli theorem,

$$\operatorname{E}[g(X)] = \frac{1}{2\pi} \int_{\mathbb R} G(t) \varphi_X(t) \, dt,$$

where

_G_(_t_) = ∫_(ℝ)_g_(_x_)_e_^( − _i__t__x_) _d__x_

is the Fourier transform of g(x). The expression for E [g(X)] also follows directly from Plancherel theorem.


Uses and applications

It is possible to construct an expected value equal to the probability of an event by taking the expectation of an indicator function that is one if the event has occurred and zero otherwise. This relationship can be used to translate properties of expected values into properties of probabilities, e.g. using the law of large numbers to justify estimating probabilities by frequencies.

The expected values of the powers of _X_ are called the moments of _X_; the moments about the mean of _X_ are expected values of powers of _X_ − E[_X_]. The moments of some random variables can be used to specify their distributions, via their moment generating functions.

To empirically estimate the expected value of a random variable, one repeatedly measures observations of the variable and computes the arithmetic mean of the results. If the expected value exists, this procedure estimates the true expected value in an unbiased manner and has the property of minimizing the sum of the squares of the residuals (the sum of the squared differences between the observations and the estimate). The law of large numbers demonstrates (under fairly mild conditions) that, as the size of the sample gets larger, the variance of this estimate gets smaller.

This property is often exploited in a wide variety of applications, including general problems of statistical estimation and machine learning, to estimate (probabilistic) quantities of interest via Monte Carlo methods, since most quantities of interest can be written in terms of expectation, e.g. P (X ∈ 𝒜) = E [1_(𝒜)], where 1_(𝒜) is the indicator function of the set 𝒜.

Beta_first_moment.svg In classical mechanics, the center of mass is an analogous concept to expectation. For example, suppose _X_ is a discrete random variable with values _x_(i)_ and corresponding probabilities _p_(i)_. Now consider a weightless rod on which are placed weights, at locations _x_(i)_ along the rod and having masses _p_(i)_ (whose sum is one). The point at which the rod balances is E[_X_].

Expected values can also be used to compute the variance, by means of the computational formula for the variance

Var (_X_) = E [_X_²] − (E [_X_])².

A very important application of the expectation value is in the field of quantum mechanics. The expectation value of a quantum mechanical operator Â operating on a quantum state vector |ψ⟩ is written as ⟨Â⟩ = ⟨ψ|A|ψ⟩. The uncertainty in Â can be calculated using the formula (ΔA)² = ⟨Â²⟩ − ⟨Â⟩².


The law of the unconscious statistician

The expected value of a measurable function of X, g(X), given that X has a probability density function f(x), is given by the inner product of f and g:

$$\operatorname{E}[g(X)] = \int_{\R} g(x) f(x)\, dx .$$

This formula also holds in multidimensional case, when g is a function of several random variables, and f is their joint density.[5][6]


Alternative formula for expected value

Formula for non-negative random variables

Finite and countably infinite case

For a non-negative integer-valued random variable X : Ω → {0, 1, 2, 3, …} ∪ { + ∞},

$$\operatorname{E}[X]=\sum _{i=1}^\infty \operatorname{P}(X\geq i).$$

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| PROOF.                                                                                                                                                                                                                                                                                                                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| If P (X =  + ∞) > 0, then E [X] =  + ∞. On the other hand,                                                                                                                                                                                                                                                                                                                                                                                 |
|                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| P (_X_ ≥ _i_) ≥ P (_X_ =  + ∞) > 0,                                                                                                                                                                                                                                                                                                                                                                                                        |
|                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| so the series on the right diverges to  + ∞, and the equality holds.                                                                                                                                                                                                                                                                                                                                                                       |
|                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| If P (X =  + ∞) = 0, then                                                                                                                                                                                                                                                                                                                                                                                                                  |
|                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| $$\sum _{i=1}^\infty \operatorname{P} (X\geq i) = \sum _{i=1}^\infty \sum _{j=i}^\infty \operatorname{P}(X = j).$$                                                                                                                                                                                                                                                                                                                         |
|                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| Let                                                                                                                                                                                                                                                                                                                                                                                                                                        |
|                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| $$M=                                                                                                                                                                                                                                                                                                                                                                                                                                       |
|   \begin{bmatrix}                                                                                                                                                                                                                                                                                                                                                                                                                          |
|     \operatorname{P}(X=1)&\operatorname{P}(X=2)&\operatorname{P}(X=3)&\cdots&\operatorname{P}(X=n)& \cdots \\                                                                                                                                                                                                                                                                                                                              |
|                          &\operatorname{P}(X=2)&\operatorname{P}(X=3)&\cdots&\operatorname{P}(X=n)& \cdots \\                                                                                                                                                                                                                                                                                                                              |
|                          &                     &\operatorname{P}(X=3)&\cdots&\operatorname{P}(X=n)& \cdots \\                                                                                                                                                                                                                                                                                                                              |
|                          &                     &                     &\ddots&\vdots               &        \\                                                                                                                                                                                                                                                                                                                              |
|                          &                     &                     &      &\operatorname{P}(X=n)& \cdots \\                                                                                                                                                                                                                                                                                                                              |
|                          &                     &                     &      &                     & \ddots                                                                                                                                                                                                                                                                                                                                 |
|   \end{bmatrix}$$                                                                                                                                                                                                                                                                                                                                                                                                                          |
| be an infinite upper triangular matrix. The double series $\textstyle \sum _{i=1}^\infty \sum _{j=i}^\infty \operatorname{P}(X = j)$ is the sum of M's elements if summation is done row by row. Since every summand is non-negative, the series either converges absolutely or diverges to  + ∞. In both cases, changing summation order does not affect the sum. Changing summation order, from row-by-row to column-by-column, gives us |
|                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| $$\begin{align}                                                                                                                                                                                                                                                                                                                                                                                                                            |
| \sum _{i=1}^\infty \sum _{j=i}^\infty \operatorname{P}(X = j) &=\sum _{j=1}^\infty \sum _{i=1}^j \operatorname{P}(X = j)\\                                                                                                                                                                                                                                                                                                                 |
|                    &=\sum _{j=1}^\infty j \operatorname{P}(X = j)\\                                                                                                                                                                                                                                                                                                                                                                        |
|                    &=\operatorname{E}[X].                                                                                                                                                                                                                                                                                                                                                                                                  |
| \end{align}$$                                                                                                                                                                                                                                                                                                                                                                                                                              |
|                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| Example                                                                                                                                                                                                                                                                                                                                                                                                                                    |
|                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| In a coin tossing experiment, let the probability of heads be p. Including the final attempt, how many tosses can we expect until the first head?                                                                                                                                                                                                                                                                                          |
|                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| SOLUTION. If N is the random variable indicating the numbers of coin tosses before and including the first head, then, for i ≥ 1,                                                                                                                                                                                                                                                                                                          |
|                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| $$\begin{align}                                                                                                                                                                                                                                                                                                                                                                                                                            |
| \operatorname{P}(N\geq i)&=1-\operatorname{P}(N\leq i-1)\\[1pt]                                                                                                                                                                                                                                                                                                                                                                            |
|                          &=1-\sum\limits_{j=0}^{i-1}\operatorname{P}(N=j)\\[1pt]                                                                                                                                                                                                                                                                                                                                                           |
|                          &=1-\sum\limits_{j=1}^{i-1}(1-p)^{j-1}p\\[1pt]                                                                                                                                                                                                                                                                                                                                                                    |
|                          &=1-\frac{1-(1-p)^{i-1}}{p}\cdot p\\[1pt]                                                                                                                                                                                                                                                                                                                                                                         |
|                          &=(1-p)^{i-1},                                                                                                                                                                                                                                                                                                                                                                                                    |
| \end{align}$$                                                                                                                                                                                                                                                                                                                                                                                                                              |
| where we took into account the geometric series summation formula. We now compute                                                                                                                                                                                                                                                                                                                                                          |
|                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| $$\begin{align}                                                                                                                                                                                                                                                                                                                                                                                                                            |
| \operatorname{E}[N]&=\sum\limits_{i=1}^{\infty}\operatorname{P}(N\geq i)\\                                                                                                                                                                                                                                                                                                                                                                 |
|                    &=\sum\limits_{i=1}^\infty (1-p)^{i-1}\\                                                                                                                                                                                                                                                                                                                                                                                |
|                    &=\frac{1}{p}.                                                                                                                                                                                                                                                                                                                                                                                                          |
| \end{align}$$                                                                                                                                                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

General case

If X : Ω → [0,  + ∞] is a non-negative random variable, then

$$\operatorname{E}[X]=\int\limits_{[0,+\infty)} \operatorname{P}(X \ge x)\,dx=\int\limits_{[0,+\infty)} \operatorname{P}(X > x)\,dx,$$

and

$$\operatorname{E}[X] = \hbox{(R)} \int\limits_0^\infty \operatorname{P}(X \ge x)\,dx=\hbox{(R)}\int\limits_0^\infty \operatorname{P}(X > x)\,dx,$$

where $\hbox{(R)}\textstyle\int_0^\infty$ denotes improper Riemann integral.

+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| PROOF.                                                                                                                                                                                                                                                                                                                                                                                                                 |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 1. For every ω ∈ Ω,                                                                                                                                                                                                                                                                                                                                                                                                    |
|                                                                                                                                                                                                                                                                                                                                                                                                                        |
| $$X(\omega)=\int\limits_{(0,X(\omega))} dx=\int\limits_{[0,+\infty)} {\mathbf 1}_{(0,X(\omega))}(x)\,dx=\int\limits_{[0,+\infty)} {\mathbf 1}_{(0,X(\omega)]}(x)\,dx,$$                                                                                                                                                                                                                                                |
| where 1_((0, X(ω))) and 1_((0, X(ω)]) are the indicator functions of (0, X(ω)) and (0, X(ω)], respectively. Substituting this into the definition of E [X], obtain                                                                                                                                                                                                                                                     |
|                                                                                                                                                                                                                                                                                                                                                                                                                        |
| $$\begin{align}                                                                                                                                                                                                                                                                                                                                                                                                        |
| \operatorname{E}[X]&=\int\limits_\Omega Xd\operatorname{P}\\                                                                                                                                                                                                                                                                                                                                                           |
|                    &=\int\limits_\Omega\int\limits_{[0,+\infty)} {\mathbf 1}_{(0,X(\omega)]}(x)\,dx\,d\operatorname{P}(\omega).                                                                                                                                                                                                                                                                                        |
| \end{align}$$                                                                                                                                                                                                                                                                                                                                                                                                          |
|                                                                                                                                                                                                                                                                                                                                                                                                                        |
| Since X(ω) ≥ 0 and 1_((0, X(ω)])(x) ≥ 0, this integral (finite or infinite) meets the requirements of Tonelli's theorem. Changing the order of integration gives us                                                                                                                                                                                                                                                    |
|                                                                                                                                                                                                                                                                                                                                                                                                                        |
| $$\begin{align}                                                                                                                                                                                                                                                                                                                                                                                                        |
| &\int\limits_{[0,+\infty)} \int\limits_\Omega {\mathbf 1}_{(0,X(\omega)]}(x)\,d\operatorname{P}(\omega)\,dx\\                                                                                                                                                                                                                                                                                                          |
| &=\int\limits_{[0,+\infty)} \operatorname{P}(X\geq x)\,dx.                                                                                                                                                                                                                                                                                                                                                             |
| \end{align}$$                                                                                                                                                                                                                                                                                                                                                                                                          |
|                                                                                                                                                                                                                                                                                                                                                                                                                        |
| 2a. The function y(x) = P (X ≥ x) is Riemann-integrable on each finite interval [a, b]. Indeed, since y(x) is non-increasing, the set D of its discontinuities is countable. Due to countable additivity, D is a null set with respect to the linear Lebesgue measure. Furthermore, 0 ≤ y(x) ≤ 1, for all x ∈ [ − ∞,  + ∞]. Using the Lebesgue criterion, Riemann integrability of y(x) follows. We also conclude that |
|                                                                                                                                                                                                                                                                                                                                                                                                                        |
| $$\int\limits_{[a,b]} \operatorname{P}(X \ge x)\,dx = \hbox{(R)} \int_a^b \operatorname{P}(X \ge x)\,dx.$$                                                                                                                                                                                                                                                                                                             |
|                                                                                                                                                                                                                                                                                                                                                                                                                        |
| 2b. By "continuity from below",                                                                                                                                                                                                                                                                                                                                                                                        |
|                                                                                                                                                                                                                                                                                                                                                                                                                        |
| $$\begin{align}                                                                                                                                                                                                                                                                                                                                                                                                        |
| \int\limits_{[0,+\infty)} \operatorname{P}(X \ge x)\,dx                                                                                                                                                                                                                                                                                                                                                                |
| &= \lim_{t\to+\infty} \int\limits_{[0,t]} \operatorname{P}(X \ge x)\,dx\\                                                                                                                                                                                                                                                                                                                                              |
| &= \lim_{t\to+\infty} \hbox{(R)} \int\limits_0^t \operatorname{P}(X \ge x)\,dx\\                                                                                                                                                                                                                                                                                                                                       |
| &= \hbox{(R)} \int\limits_0^\infty \operatorname{P}(X \ge x)\,dx.                                                                                                                                                                                                                                                                                                                                                      |
| \end{align}$$                                                                                                                                                                                                                                                                                                                                                                                                          |
|                                                                                                                                                                                                                                                                                                                                                                                                                        |
| The case of P (X > x) is similar.                                                                                                                                                                                                                                                                                                                                                                                      |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Formula for non-positive random variables

If X : Ω → [ − ∞, 0] is a non-positive random variable, then

$$\operatorname{E}[X]=-\int\limits_{(-\infty,0]} \operatorname{P}(X \leq x)\,dx=
-\int\limits_{(-\infty,0]} \operatorname{P}(X < x)\,dx,$$

and

$$\operatorname{E}[X] = -\hbox{(R)} \int\limits_{-\infty}^0 \operatorname{P}(X \leq x)\,dx = -\hbox{(R)}\int\limits_{-\infty}^0 \operatorname{P}(X < x)\,dx,$$

where $\hbox{(R)}\textstyle\int_{-\infty}^0$ denotes improper Riemann integral.

This formula follows from that for the non-negative case applied to  − X.

If, in addition, X is integer-valued, i.e. X : Ω → {…,  − 3,  − 2,  − 1, 0} ∪ { − ∞}, then

$$\operatorname{E}[X]=-\sum _{i=-1}^{-\infty} \operatorname{P}(X\leq i).$$

General case

If X can be both positive and negative, then E [X] = E [X₊] − E [X_(−)], and the above results may be applied to X₊ and X_(−) separately.


History

The idea of the expected value originated in the middle of the 17th century from the study of the so-called problem of points, which seeks to divide the stakes _in a fair way_ between two players who have to end their game before it's properly finished. This problem had been debated for centuries, and many conflicting proposals and solutions had been suggested over the years, when it was posed in 1654 to Blaise Pascal by French writer and amateur mathematician Chevalier de Méré. Méré claimed that this problem couldn't be solved and that it showed just how flawed mathematics was when it came to its application to the real world. Pascal, being a mathematician, was provoked and determined to solve the problem once and for all. He began to discuss the problem in a now famous series of letters to Pierre de Fermat. Soon enough they both independently came up with a solution. They solved the problem in different computational ways but their results were identical because their computations were based on the same fundamental principle. The principle is that the value of a future gain should be directly proportional to the chance of getting it. This principle seemed to have come naturally to both of them. They were very pleased by the fact that they had found essentially the same solution and this in turn made them absolutely convinced they had solved the problem conclusively. However, they did not publish their findings. They only informed a small circle of mutual scientific friends in Paris about it.[7]

Three years later, in 1657, a Dutch mathematician Christiaan Huygens, who had just visited Paris, published a treatise (see ) "_De ratiociniis in ludo aleæ_" on probability theory. In this book he considered the problem of points and presented a solution based on the same principle as the solutions of Pascal and Fermat. Huygens also extended the concept of expectation by adding rules for how to calculate expectations in more complicated situations than the original problem (e.g., for three or more players). In this sense this book can be seen as the first successful attempt at laying down the foundations of the theory of probability.

In the foreword to his book, Huygens wrote: "It should be said, also, that for some time some of the best mathematicians of France have occupied themselves with this kind of calculus so that no one should attribute to me the honour of the first invention. This does not belong to me. But these savants, although they put each other to the test by proposing to each other many questions difficult to solve, have hidden their methods. I have had therefore to examine and go deeply for myself into this matter by beginning with the elements, and it is impossible for me for this reason to affirm that I have even started from the same principle. But finally I have found that my answers in many cases do not differ from theirs." (cited by ). Thus, Huygens learned about de Méré's Problem in 1655 during his visit to France; later on in 1656 from his correspondence with Carcavi he learned that his method was essentially the same as Pascal's; so that before his book went to press in 1657 he knew about Pascal's priority in this subject.

Neither Pascal nor Huygens used the term "expectation" in its modern sense. In particular, Huygens writes: "That my Chance or Expectation to win any thing is worth just such a Sum, as wou'd procure me in the same Chance and Expectation at a fair Lay. ... If I expect a or b, and have an equal Chance of gaining them, my Expectation is worth ." More than a hundred years later, in 1814, Pierre-Simon Laplace published his tract "_Théorie analytique des probabilités_", where the concept of expected value was defined explicitly:

The use of the letter _E_ to denote expected value goes back to W.A. Whitworth in 1901,[8] who used a script E. The symbol has become popular since for English writers it meant "Expectation", for Germans "Erwartungswert", for Spanish "Esperanza matemática" and for French "Espérance mathématique".[9]


See also

-   Center of mass
-   Central tendency
-   Chebyshev's inequality (an inequality on location and scale parameters)
-   Conditional expectation
-   Expected value is also a key concept in economics, finance, and many other subjects
-   The general term expectation
-   Expectation value (quantum mechanics)
-   Law of total expectation –the expected value of the conditional expected value of _X_ given _Y_ is the same as the expected value of _X_.
-   Moment (mathematics)
-   Nonlinear expectation (a generalization of the expected value)
-   Wald's equation for calculating the expected value of a random number of random variables


References


Literature

-   -

Category:Theory of probability distributions Category:Gambling terminology Category:Articles containing proofs

[1]

[2]

[3]

[4]

[5]

[6]

[7]

[8] Whitworth, W.A. (1901) _Choice and Chance with One Thousand Exercises_. Fifth edition. Deighton Bell, Cambridge. [Reprinted by Hafner Publishing Co., New York, 1959.]

[9]