In mathematics, GENERALIZED MEANS are a family of functions for aggregating sets of numbers, that include as special cases the Pythagorean means (arithmetic, geometric, and harmonic means). The generalized mean is also known as POWER MEAN or HÖLDER MEAN (named after Otto Hölder).


Definition

If _p_ is a non-zero real number, and x₁, …, x_(n) are positive real numbers, then the GENERALIZED MEAN or POWER MEAN with exponent _p_ of these positive real numbers is:

$$M_p(x_1,\dots,x_n) = \left( \frac{1}{n} \sum_{i=1}^n x_i^p \right)^{\frac{1}{p}} .$$

Note the relationship to the _p_-norm. For we set it equal to the geometric mean (which is the limit of means with exponents approaching zero, as proved below):

$$M_0(x_1, \dots, x_n) = \sqrt[n]{\prod_{i=1}^n x_i}$$

Furthermore, for a sequence of positive weights _w_(i)_ with sum ∑w_(i) = 1 we define the WEIGHTED POWER MEAN as:

$$\begin{align}
  M_p(x_1,\dots,x_n) &= \left(\sum_{i=1}^n w_i x_i^p \right)^{\frac{1}{p}} \\
  M_0(x_1,\dots,x_n) &= \prod_{i=1}^n x_i^{w_i}
\end{align}$$

The unweighted means correspond to setting all .


Special cases

A visual depiction of some of the specified cases for with and : ,}} }} }} }}

  ------------------------------------------------------------------------------------------- -----------------
  M_( − ∞)(x₁, …, x_(n)) = lim_(p →  − ∞)M_(p)(x₁, …, x_(n)) = min {x₁, …, x_(n)}             minimum
  $M_{-1}(x_1,\dots,x_n) = \frac{n}{\frac{1}{x_1}+\dots+\frac{1}{x_n}}$                       harmonic mean
  $M_0(x_1,\dots,x_n) = \lim_{p\to0} M_p(x_1,\dots,x_n) = \sqrt[n]{x_1\cdot\dots\cdot x_n}$   geometric mean
  $M_1(x_1,\dots,x_n) = \frac{x_1 + \dots + x_n}{n}$                                          arithmetic mean
  $M_2(x_1,\dots,x_n) = \sqrt{\frac{x_1^2 + \dots + x_n^2}{n}}$                               quadratic mean
  $M_3(x_1,\dots,x_n) = \sqrt[3]{\frac{x_1^3 + \dots + x_n^3}{n}}$                            cubic mean
  M_( + ∞)(x₁, …, x_(n)) = lim_(p → ∞)M_(p)(x₁, …, x_(n)) = max {x₁, …, x_(n)}                maximum
  ------------------------------------------------------------------------------------------- -----------------

    {| class="toccolours collapsible collapsed" width="90%" style="text-align:left"

!Proof of $\textstyle \lim_{p \to 0} M_p = M_0$ (geometric mean) |- | We can rewrite the definition of _M_(p)_ using the exponential function

$$M_p(x_1,\dots,x_n) = \exp{\left( \ln{\left[\left(\sum_{i=1}^n w_ix_{i}^p \right)^{1/p}\right]} \right) } = \exp{\left( \frac{\ln{\left(\sum_{i=1}^n w_ix_{i}^p \right)}}{p} \right) }$$

In the limit _p_ → 0, we can apply L'Hôpital's rule to the argument of the exponential function. Differentiating the numerator and denominator with respect to p, we have

$$\lim_{p \to 0} \frac{\ln{\left(\sum_{i=1}^n w_ix_{i}^p \right)}}{p} = \lim_{p \to 0} \frac{\frac{\sum_{i=1}^n w_i x_i^p \ln{x_i}}{\sum_{i=1}^n w_i x_i^p}}{1} = \lim_{p \to 0} \frac{\sum_{i=1}^n w_i x_i^p \ln{x_i}}{\sum_{i=1}^n w_i x_i^p} = \sum_{i=1}^n w_i \ln{x_i} = \ln{\left(\prod_{i=1}^n x_i^{w_i} \right)}$$

By the continuity of the exponential function, we can substitute back into the above relation to obtain

$$\lim_{p \to 0} M_p(x_1,\dots,x_n) = \exp{\left( \ln{\left(\prod_{i=1}^n x_i^{w_i} \right)} \right)} = \prod_{i=1}^n x_i^{w_i} = M_0(x_1,\dots,x_n)$$

as desired. |}

    {| class="toccolours collapsible collapsed" width="90%" style="text-align:left"

!Proof of $\textstyle \lim_{p \to \infty} M_p = M_\infty$ and $\textstyle \lim_{p \to -\infty} M_p = M_{-\infty}$ |- | Assume (possibly after relabeling and combining terms together) that x₁ ≥ … ≥ x_(n). Then

$$\lim_{p \to \infty} M_p(x_1,\dots,x_n) = \lim_{p \to \infty} \left( \sum_{i=1}^n w_i x_i^p \right)^{1/p} = x_1 \lim_{p \to \infty} \left( \sum_{i=1}^n w_i \left( \frac{x_i}{x_1} \right)^p \right)^{1/p} = x_1 = M_\infty (x_1,\dots,x_n).$$

The formula for M_( − ∞) follows from $M_{-\infty} (x_1,\dots,x_n) = \frac{1}{M_\infty (1/x_1,\dots,1/x_n)}.$ |}


Properties

-   Each generalized mean always lies between the smallest and largest of the _x_ values.
-   Each generalized mean is a symmetric function of its arguments; permuting the arguments of a generalized mean does not change its value.
-   Like most means, the generalized mean is a homogeneous function of its arguments _x_₁, ..., _x_(n)_. That is, if _b_ is a positive real number, then the generalized mean with exponent _p_ of the numbers b ⋅ x₁, …, b ⋅ x_(n) is equal to _b_ times the generalized mean of the numbers _x_₁, …, _x_(n)_.
-   Like the quasi-arithmetic means, the computation of the mean can be split into computations of equal sized sub-blocks. This enables use of a divide and conquer algorithm to calculate the means, when desirable.
    _M__(_p_)(_x_₁, …, _x__(_n_ ⋅ _k_)) = _M__(_p_)[_M__(_p_)(_x_₁,…,_x__(_k_)),_M__(_p_)(_x__(_k_ + 1),…,_x__(2 ⋅ _k_)),…,_M__(_p_)(_x__((_n_ − 1) ⋅ _k_ + 1),…,_x__(_n_ ⋅ _k_))]

Generalized mean inequality

In general,

    if _p_ < _q_, then M_(p)(x₁, …, x_(n)) ≤ M_(q)(x₁, …, x_(n))

and the two means are equal if and only if _x_₁ = _x_₂ = ... = _x_(n)_.

The inequality is true for real values of _p_ and _q_, as well as positive and negative infinity values.

It follows from the fact that, for all real _p_,

    $\frac{\partial}{\partial p}M_p(x_1, \dots, x_n) \geq 0$

which can be proved using Jensen's inequality.

In particular, for _p_ in {−1, 0, 1}, the generalized mean inequality implies the Pythagorean means inequality as well as the inequality of arithmetic and geometric means.


Proof of power means inequality

We will prove weighted power means inequality, for the purpose of the proof we will assume the following without loss of generality:

$$\begin{align}
  w_i \in [0, 1] \\
  \sum_{i=1}^nw_i = 1
\end{align}$$

Proof for unweighted power means is easily obtained by substituting _w_(i)_ = 1/_n_.

Equivalence of inequalities between means of opposite signs

Suppose an average between power means with exponents _p_ and _q_ holds:

$$\sqrt[p]{\sum_{i=1}^nw_ix_i^p}\geq \sqrt[q]{\sum_{i=1}^nw_ix_i^q}$$

applying this, then:

$$\sqrt[p]{\sum_{i=1}^n\frac{w_i}{x_i^p}}\geq \sqrt[q]{\sum_{i=1}^n\frac{w_i}{x_i^q}}$$

We raise both sides to the power of −1 (strictly decreasing function in positive reals):

$$\sqrt[-p]{\sum_{i=1}^nw_ix_i^{-p}}=\sqrt[p]{\frac{1}{\sum_{i=1}^nw_i\frac{1}{x_i^p}}}\leq \sqrt[q]{\frac{1}{\sum_{i=1}^nw_i\frac{1}{x_i^q}}}=\sqrt[-q]{\sum_{i=1}^nw_ix_i^{-q}}$$

We get the inequality for means with exponents −_p_ and −_q_, and we can use the same reasoning backwards, thus proving the inequalities to be equivalent, which will be used in some of the later proofs.

Geometric mean

For any _q_ > 0 and non-negative weights summing to 1, the following inequality holds:

$$\sqrt[-q]{\sum_{i=1}^n w_i x_i^{-q}} \leq \prod_{i=1}^n x_i^{w_i} \leq \sqrt[q]{\sum_{i=1}^n w_i x_i^q}.$$

The proof follows from Jensen's inequality, making use of the fact the logarithm is concave:

$$\log \prod_{i=1}^n x_i^{w_i} = \sum_{i=1}^n w_i\log x_i \leq \log \sum_{i=1}^n w_i x_i.$$

By applying the exponential function to both sides and observing that as a strictly increasing function it preserves the sign of the inequality, we get

$$\prod_{i=1}^n x_i^{w_i} \leq \sum_{i=1}^n w_i x_i.$$

Taking _q_th powers of the _x__(_i_), we are done for the inequality with positive _q_; the case for negatives is identical.

Inequality between any two power means

We are to prove that for any _p_ < _q_ the following inequality holds:

$$\sqrt[p]{\sum_{i=1}^nw_ix_i^p}\leq \sqrt[q]{\sum_{i=1}^nw_ix_i^q}$$

if _p_ is negative, and _q_ is positive, the inequality is equivalent to the one proved above:

$$\sqrt[p]{\sum_{i=1}^nw_ix_i^p}\leq \prod_{i=1}^nx_i^{w_i} \leq\sqrt[q]{\sum_{i=1}^nw_ix_i^q}$$

The proof for positive _p_ and _q_ is as follows: Define the following function: _f_ : R₊ → R₊ $f(x)=x^{\frac{q}{p}}$. _f_ is a power function, so it does have a second derivative:

    $f''(x) = \left(\frac{q}{p} \right) \left( \frac{q}{p}-1 \right)x^{\frac{q}{p}-2}$

which is strictly positive within the domain of _f_, since _q_ > _p_, so we know _f_ is convex.

Using this, and the Jensen's inequality we get:

$$\begin{align}
     f \left( \sum_{i=1}^nw_ix_i^p \right) &\leq \sum_{i=1}^nw_if(x_i^p) \\[3pt]
  \sqrt[\frac{p}{q}]{\sum_{i=1}^nw_ix_i^p} &\leq \sum_{i=1}^nw_ix_i^q
\end{align}$$

after raising both side to the power of 1/_q_ (an increasing function, since 1/_q_ is positive) we get the inequality which was to be proven:

$$\sqrt[p]{\sum_{i=1}^nw_ix_i^p}\leq\sqrt[q]{\sum_{i=1}^nw_ix_i^q}$$

Using the previously shown equivalence we can prove the inequality for negative _p_ and _q_ by substituting them with, respectively, −_q_ and −_p_, QED.


Generalized _f_-mean

The power mean could be generalized further to the generalized _f_-mean:

$$M_f(x_1,\dots,x_n) = f^{-1} \left({\frac{1}{n}\cdot\sum_{i=1}^n{f(x_i)}}\right)$$

This covers the geometric mean without using a limit with _f_(_x_) = _log_(_x_). The power mean is obtained for _f_(_x_) = _x^(p)_.


Applications

Signal processing

A power mean serves a non-linear moving average which is shifted towards small signal values for small _p_ and emphasizes big signal values for big _p_. Given an efficient implementation of a moving arithmetic mean called smooth one can implement a moving power mean according to the following Haskell code.

     powerSmooth :: Floating a => ([a] -> [a]) -> a -> [a] -> [a]
     powerSmooth smooth p = map (** recip p) . smooth . map (**p)

-   For big _p_ it can serve an envelope detector on a rectified signal.
-   For small _p_ it can serve an baseline detector on a mass spectrum.


See also

-   Arithmetic mean
-   Arithmetic-geometric mean
-   Average
-   Geometric mean
-   Harmonic mean
-   Heronian mean
-   Inequality of arithmetic and geometric means
-   Lehmer mean – also a mean related to powers
-   Pythagorean means
-   Root mean square
-   Minkowski distance


External links

-   Power mean at MathWorld
-   Examples of Generalized Mean
-   A proof of the Generalized Mean on PlanetMath

Category:Means Category:Inequalities Category:Articles with example Haskell code