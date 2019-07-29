In mathematics, the classic MÖBIUS INVERSION FORMULA was introduced into number theory on 1832 by August Ferdinand Möbius.[1]

A large generalization of this formula applies to summation over an arbitrary locally finite partially ordered set, with Möbius' classical formula applying to the set of the natural numbers ordered by divisibility: see incidence algebra.


Statement of the formula

The classic version states that if and are arithmetic functions satisfying

    g(n) = ∑_(d ∣ n)f(d) for every integer n ≥ 1

then

$$f(n)=\sum_{d \mid n}\mu(d)g\left(\frac{n}{d}\right)\quad\text{for every integer }n\ge 1$$

where is the Möbius function and the sums extend over all positive divisors of (indicated by d ∣ n in the above formulae). In effect, the original can be determined given by using the inversion formula. The two sequences are said to be MÖBIUS TRANSFORMS of each other.

The formula is also correct if and are functions from the positive integers into some abelian group (viewed as a -module).

In the language of Dirichlet convolutions, the first formula may be written as

_g_ = _f_ * _1_

where denotes the Dirichlet convolution, and is the constant function 1}}. The second formula is then written as

_f_ = _μ_ * _g_.

Many specific examples are given in the article on multiplicative functions.

The theorem follows because is (commutative and) associative, and _ε_}}, where is the identity function for the Dirichlet convolution, taking values 1}}, 0}} for all . Thus

_μ_ * _g_ = _μ_ * (_1_ * _f_) = (_μ_ * _1_) * _f_ = _ε_ * _f_ = _f_
.


Series relations

Let

_a__(_n_) = ∑_(_d_ ∣ _n_)_b__(_d_)

so that

$$b_n=\sum_{d\mid n} \mu\left(\frac{n}{d}\right)a_d$$

is its transform. The transforms are related by means of series: the Lambert series

$$\sum_{n=1}^\infty a_n x^n = \sum_{n=1}^\infty b_n \frac{x^n}{1-x^n}$$

and the Dirichlet series:

$$\sum_{n=1}^\infty \frac {a_n} {n^s} = \zeta(s)\sum_{n=1}^\infty \frac{b_n}{n^s}$$

where is the Riemann zeta function.


Repeated transformations

Given an arithmetic function, one can generate a bi-infinite sequence of other arithmetic functions by repeatedly applying the first summation.

For example, if one starts with Euler's totient function , and repeatedly applies the transformation process, one obtains:

1.  the totient function

2.  _I_}}, where _n_}} is the identity function

3.  _σ_₁ {{=}} _σ_}}, the divisor function

If the starting function is the Möbius function itself, the list of functions is:

1.  , the Möbius function

2.  _ε_}} where

    $$\varepsilon(n) = \begin{cases} 1, & \mbox{if }n=1 \\ 0, & \mbox{if }n>1 \end{cases}$$

        is the unit function

3.  _1_}}, the constant function

4.  _σ_₀ {{=}} d {{=}} _τ_}}, where _τ_}} is the number of divisors of , (see divisor function).

Both of these lists of functions extend infinitely in both directions. The Möbius inversion formula enables these lists to be traversed backwards.

As an example the sequence starting with is:

$$f_n =
  \begin{cases}
   \underbrace{\mu * \ldots * \mu}_{-n \text{ factors}} * \varphi & \text{if } n < 0 \\[8px]
   \varphi & \text{if } n = 0 \\[8px]
   \varphi * \underbrace{\mathit{1}* \ldots * \mathit{1}}_{n \text{ factors}} & \text{if } n > 0
  \end{cases}$$

The generated sequences can perhaps be more easily understood by considering the corresponding Dirichlet series: each repeated application of the transform corresponds to multiplication by the Riemann zeta function.


Generalizations

A related inversion formula more useful in combinatorics is as follows: suppose and are complex-valued functions defined on the interval such that

$$G(x) = \sum_{1 \le n \le x}F\left(\frac{x}{n}\right)\quad\mbox{ for all }x\ge 1$$

then

$$F(x) = \sum_{1 \le n \le x}\mu(n)G\left(\frac{x}{n}\right)\quad\mbox{ for all }x\ge 1.$$

Here the sums extend over all positive integers which are less than or equal to .

This in turn is a special case of a more general form. If is an arithmetic function possessing a Dirichlet inverse , then if one defines

$$G(x) = \sum_{1 \le n \le x}\alpha (n) F\left(\frac{x}{n}\right)\quad\mbox{ for all }x\ge 1$$

then

$$F(x) = \sum_{1 \le n \le x}\alpha^{-1}(n)G\left(\frac{x}{n}\right)\quad\mbox{ for all }x\ge 1.$$

The previous formula arises in the special case of the constant function 1}}, whose Dirichlet inverse is _μ_(_n_)}}.

A particular application of the first of these extensions arises if we have (complex-valued) functions and defined on the positive integers, with

$$g(n) = \sum_{1 \le m \le n}f\left(\left\lfloor \frac{n}{m}\right\rfloor\right)\quad\mbox{ for all } n\ge 1.$$

By defining _f_(⌊_x_⌋)}} and _g_(⌊_x_⌋)}}, we deduce that

$$f(n) = \sum_{1 \le m \le n}\mu(m)g\left(\left\lfloor \frac{n}{m}\right\rfloor\right)\quad\mbox{ for all } n\ge 1.$$

A simple example of the use of this formula is counting the number of reduced fractions , where and are coprime and . If we let be this number, then is the total number of fractions with , where and are not necessarily coprime. (This is because every fraction with _d_}} and can be reduced to the fraction with , and vice versa.) Here it is straightforward to determine }}, but is harder to compute.

Another inversion formula is (where we assume that the series involved are absolutely convergent):

$$g(x) = \sum_{m=1}^\infty \frac{f(mx)}{m^s}\quad\mbox{ for all } x\ge 1\quad\Longleftrightarrow\quad
f(x) = \sum_{m=1}^\infty \mu(m)\frac{g(mx)}{m^s}\quad\mbox{ for all } x\ge 1.$$

As above, this generalises to the case where is an arithmetic function possessing a Dirichlet inverse :

$$g(x) = \sum_{m=1}^\infty \alpha(m)\frac{f(mx)}{m^s}\quad\mbox{ for all } x\ge 1\quad\Longleftrightarrow\quad
f(x) = \sum_{m=1}^\infty \alpha^{-1}(m)\frac{g(mx)}{m^s}\quad\mbox{ for all } x\ge 1.$$


Multiplicative notation

As Möbius inversion applies to any abelian group, it makes no difference whether the group operation is written as addition or as multiplication. This gives rise to the following notational variant of the inversion formula:

$$\mbox{if } F(n) = \prod_{d|n} f(d),\mbox{ then } f(n) = \prod_{d|n} F\left(\frac{n}{d}\right)^{\mu(d)}.$$


Proofs of generalizations

The first generalization can be proved as follows. We use Iverson's convention that [condition] is the indicator function of the condition, being 1 if the condition is true and 0 if false. We use the result that

∑_(_d_|_n_)_μ_(_d_) = _i_(_n_),
that is, _i_}}.

We have the following:

$$\begin{align}
\sum_{1\le n\le x}\mu(n)g\left(\frac{x}{n}\right)
 &= \sum_{1\le n\le x} \mu(n) \sum_{1\le m\le \frac{x}{n}} f\left(\frac{x}{mn}\right)\\
 &= \sum_{1\le n\le x} \mu(n) \sum_{1\le m\le \frac{x}{n}} \sum_{1\le r\le x} [r=mn] f\left(\frac{x}{r}\right)\\
 &= \sum_{1\le r\le x} f\left(\frac{x}{r}\right) \sum_{1\le n\le x} \mu(n) \sum_{1\le m\le \frac{x}{n}} \left[m=\frac{r}{n}\right] \qquad\text{rearranging the summation order}\\
 &= \sum_{1\le r\le x} f\left(\frac{x}{r}\right) \sum_{n|r} \mu(n) \\
 &= \sum_{1\le r\le x} f\left(\frac{x}{r}\right) i(r) \\
 &= f(x) \qquad\text{since }i(r)=0\text{ except when }r=1
\end{align}$$

The proof in the more general case where replaces 1 is essentially identical, as is the second generalisation.


On posets

For a poset , a set endowed with a partial order relation ≤, define the Möbius function μ of recursively by

_μ_(_s_, _s_) = 1 for _s_ ∈ _P_,  _μ_(_s_, _u_) =  − ∑_(_s_ ≤ _t_ < _u_)_μ_(_s_, _t_),  for _s_ < _u_ in _P_.

(Here one assumes the summations are finite.) Then for f, g : P → K, where is a field, we have

_g_(_t_) = ∑_(_s_ ≤ _t_)_f_(_s_)   for all _t_ ∈ _P_

if and only if

_f_(_t_) = ∑_(_s_ ≤ _t_)_g_(_s_)_μ_(_s_, _t_)   for all _t_ ∈ _P_.

(See Stanley's _Enumerative Combinatorics_, Vol 1, Section 3.7.)


Contributions of Weisner, Hall, and Rota


See also

-   Farey sequence
-   Inclusion–exclusion principle


Notes


References

-   -   -   -   -   -   -


External links

-

ru:Функция Мёбиуса#Обращение Мёбиуса

Category:Arithmetic functions Category:Enumerative combinatorics Category:Order theory

[1]