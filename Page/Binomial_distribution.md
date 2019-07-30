 | kurtosis   = $\frac{1-6p(1-p)}{np(1-p)}$
 | entropy    = $\frac{1}{2} \log_2 \left( 2\pi enp(1-p) \right) + O \left( \frac{1}{n} \right)$
 in shannons. For nats, use the natural log in the log.
 | mgf        = (1 − p + pe^(t))^(n)
 | char       = (1 − p + pe^(it))^(n)
 | pgf        = G(z) = [(1 − p) + pz]^(n)
 | fisher     = $g_n(p) = \frac{n}{p(1-p)}$
(for fixed n)

}}
The probability that a ball in a Galton box with 8 layers (_n_ = 8) ends up in the central bin (_k_ = 4) is 70/256.]] In probability theory and statistics, the BINOMIAL DISTRIBUTION with parameters _n_ and _p_ is the discrete probability distribution of the number of successes in a sequence of _n_ independent experiments, each asking a yes–no question, and each with its own boolean-valued outcome: success/yes/true/one (with probability _p_) or failure/no/false/zero (with probability _q_ = 1 − _p_). A single success/failure experiment is also called a Bernoulli trial or Bernoulli experiment and a sequence of outcomes is called a Bernoulli process; for a single trial, i.e., _n_ = 1, the binomial distribution is a Bernoulli distribution. The binomial distribution is the basis for the popular binomial test of statistical significance.

The binomial distribution is frequently used to model the number of successes in a sample of size _n_ drawn with replacement from a population of size _N._ If the sampling is carried out without replacement, the draws are not independent and so the resulting distribution is a hypergeometric distribution, not a binomial one. However, for _N_ much larger than _n_, the binomial distribution remains a good approximation, and is widely used.


Specification

Probability mass function

In general, if the random variable _X_ follows the binomial distribution with parameters _n_ ∈ ℕ and _p_ ∈ [0,1], we write _X_ ~ B(_n_, _p_). The probability of getting exactly _k_ successes in _n_ trials is given by the probability mass function:

$$f(k,n,p) = \Pr(k;n,p) = \Pr(X = k) = \binom{n}{k}p^k(1-p)^{n-k}$$

for _k_ = 0, 1, 2, ..., _n_, where

$$\binom{n}{k} =\frac{n!}{k!(n-k)!}$$

is the binomial coefficient, hence the name of the distribution. The formula can be understood as follows. _k_ successes occur with probability _p_^(_k_) and _n_ − _k_ failures occur with probability (1 − _p_)^(_n_ − _k_). However, the _k_ successes can occur anywhere among the _n_ trials, and there are $\binom{n}{k}$ different ways of distributing _k_ successes in a sequence of _n_ trials.

In creating reference tables for binomial distribution probability, usually the table is filled in up to _n_/2 values. This is because for _k_ > _n_/2, the probability can be calculated by its complement as

_f_(_k_, _n_, _p_) = _f_(_n_ − _k_, _n_, 1 − _p_).

Looking at the expression _f_(_k_, _n_, _p_) as a function of _k_, there is a _k_ value that maximizes it. This _k_ value can be found by calculating

$$\frac{f(k+1,n,p)}{f(k,n,p)}=\frac{(n-k)p}{(k+1)(1-p)}$$
and comparing it to 1. There is always an integer _M_ that satisfies

(_n_ + 1)_p_ − 1 ≤ _M_ < (_n_ + 1)_p_.

_f_(_k_, _n_, _p_) is monotone increasing for _k_ < _M_ and monotone decreasing for _k_ > _M_, with the exception of the case where (_n_ + 1)_p_ is an integer. In this case, there are two values for which _f_ is maximal: (_n_ + 1)_p_ and (_n_ + 1)_p_ − 1. _M_ is the _most probable_ outcome (that is, the most likely, although this can still be unlikely overall) of the Bernoulli trials and is called the mode.

Cumulative distribution function

The cumulative distribution function can be expressed as:

$$F(k;n,p) = \Pr(X \le k) = \sum_{i=0}^{\lfloor k \rfloor} {n\choose i}p^i(1-p)^{n-i}$$

where ⌊k⌋  is the "floor" under _k_, i.e. the greatest integer less than or equal to _k_.

It can also be represented in terms of the regularized incomplete beta function, as follows:[1]

$$\begin{align}
F(k;n,p) & = \Pr(X \le k) \\
&= I_{1-p}(n-k, k+1) \\
& = (n-k) {n \choose k} \int_0^{1-p} t^{n-k-1} (1-t)^k \, dt.
\end{align}$$

Some closed-form bounds for the cumulative distribution function are given below.


Example

Suppose a biased coin comes up heads with probability 0.3 when tossed. What is the probability of achieving 0, 1,..., 6 heads after six tosses?

    $\Pr(0\text{ heads}) = f(0) = \Pr(X = 0) = {6\choose 0}0.3^0 (1-0.3)^{6-0}= 0.117649$
    $\Pr(1\text{ heads}) = f(1) = \Pr(X = 1) = {6\choose 1}0.3^1 (1-0.3)^{6-1}= 0.302526$
    $\Pr(2\text{ heads}) = f(2) = \Pr(X = 2) = {6\choose 2}0.3^2 (1-0.3)^{6-2}= 0.324135$
    $\Pr(3\text{ heads}) = f(3) = \Pr(X = 3) = {6\choose 3}0.3^3 (1-0.3)^{6-3}= 0.18522$
    $\Pr(4\text{ heads}) = f(4) = \Pr(X = 4) = {6\choose 4}0.3^4 (1-0.3)^{6-4}= 0.059535$
    $\Pr(5\text{ heads}) = f(5) = \Pr(X = 5) = {6\choose 5}0.3^5 (1-0.3)^{6-5}= 0.010206$
    $\Pr(6\text{ heads}) = f(6) = \Pr(X = 6) = {6\choose 6}0.3^6 (1-0.3)^{6-6}= 0.000729$[2]


Expectation

If _X_ ~ _B_(_n_, _p_), that is, _X_ is a binomially distributed random variable, n being the total number of experiments and p the probability of each experiment yielding a successful result, then the expected value of _X_ is:[3]

E [_X_] = _n__p_.

For example, if _n_ = 100, and _p_ = 1/4, then the average number of successful results will be 25.

PROOF: We calculate the mean, _μ_, directly calculated from its definition

$$\mu=\sum_{i=0}^n x_i p_i,$$

and the binomial theorem:

$$\begin{align}
 \mu &= \sum_{k=0}^n k\binom nk p^k (1-p)^{n-k}\\
                     &= np\sum_{k=0}^n k\frac{(n-1)!}{(n-k)!k!}p^{k-1} (1-p)^{(n-1)-(k-1)}\\
                     &= np\sum_{k=1}^n \frac{(n-1)!}{((n-1)-(k-1))!(k-1)!}p^{k-1} (1-p)^{(n-1)-(k-1)}\\
                     &= np\sum_{k=1}^n \binom{n-1}{k-1} p^{k-1} (1-p)^{(n-1)-(k-1)}\\
                     &= np\sum_{\ell=0}^{n-1} \binom{n-1}\ell p^\ell (1-p)^{(n-1)-\ell} && \text{with } \ell:=k-1\\
                     &= np\sum_{\ell=0}^m \binom m\ell p^\ell (1-p)^{m-\ell} && \text{with } m:=n-1\\
                     &= np(p+(1-p))^m \\
                     &=np
\end{align}$$

It is also possible to deduce the mean from the equation X = X₁ + ⋯ + X_(n) whereby all X_(i) are Bernoulli distributed random variables with E[X_(i)] = p (X_(i) = 1 if the _i_th experiment succeeds and X_(i) = 0 otherwise). We get: $E[X] = E[X_1+\cdots+X_n] = E[X_1]+\cdots+E[X_n] = \underbrace{p+\cdots+p}_{n\text{ times}} = np$


Variance

The variance is:

Var (_X_) = _n__p_(1 − _p_).

PROOF: Let X = X₁ + ⋯ + X_(n) where all X_(i) are independently Bernoulli distributed random variables. Since Var (X_(i)) = p(1 − p), we get:

Var (_X_) = Var (_X_₁ + ⋯ + _X__(_n_)) = Var (_X_₁) + ⋯ + Var (_X__(_n_)) = _n_Var (_X_₁) = _n__p_(1 − _p_).


Mode

Usually the mode of a binomial _B_(_n_, _p_) distribution is equal to ⌊(n + 1)p⌋, where ⌊ ⋅ ⌋ is the floor function. However, when (_n_ + 1)_p_ is an integer and _p_ is neither 0 nor 1, then the distribution has two modes: (_n_ + 1)_p_ and (_n_ + 1)_p_ − 1. When _p_ is equal to 0 or 1, the mode will be 0 and _n_ correspondingly. These cases can be summarized as follows:

    \text{mode} =

     \begin{cases}
       \lfloor (n+1)\,p\rfloor & \text{if }(n+1)p\text{ is 0 or a noninteger}, \\
       (n+1)\,p\ \text{ and }\ (n+1)\,p - 1 &\text{if }(n+1)p\in\{1,\dots,n\}, \\
       n & \text{if }(n+1)p = n + 1.
     \end{cases}

PROOF: Let

$$f(k)=\binom nk p^k q^{n-k}.$$

For p = 0 only f(0) has a nonzero value with f(0) = 1. For p = 1 we find f(n) = 1 and f(k) = 0 for k ≠ n. This proves that the mode is 0 for p = 0 and n for p = 1.

Let 0 < p < 1. We find

$$\frac{f(k+1)}{f(k)} = \frac{(n-k)p}{(k+1)(1-p)}$$
.

From this follows

$$\begin{align}
k > (n+1)p-1 \Rightarrow f(k+1) < f(k) \\
k = (n+1)p-1 \Rightarrow f(k+1) = f(k) \\
k < (n+1)p-1 \Rightarrow f(k+1) > f(k)
\end{align}$$

So when (n + 1)p − 1 is an integer, then (n + 1)p − 1 and (n + 1)p is a mode. In the case that $(n+1)p-1\notin \Z$, then only ⌊(n + 1)p − 1⌋ + 1 = ⌊(n + 1)p⌋ is a mode.[4]


Median

In general, there is no single formula to find the median for a binomial distribution, and it may even be non-unique. However several special results have been established:

-   If _np_ is an integer, then the mean, median, and mode coincide and equal _np_.[5][6]
-   Any median _m_ must lie within the interval ⌊_np_⌋ ≤ _m_ ≤ ⌈_np_⌉.[7]
-   A median _m_ cannot lie too far away from the mean: }.[8]
-   The median is unique and equal to _m_ = round(_np_) when |_m_ − _np_| ≤ min{_p_, 1 − _p_} (except for the case when _p_ =  and _n_ is odd).[9]
-   When _p_ = 1/2 and _n_ is odd, any number _m_ in the interval (_n_ − 1) ≤ _m_ ≤ (_n_ + 1) is a median of the binomial distribution. If _p_ = 1/2 and _n_ is even, then _m_ = _n_/2 is the unique median.


Covariance between two binomials

If two binomially distributed random variables _X_ and _Y_ are observed together, estimating their covariance can be useful. The covariance is

    Cov (X, Y) = E (XY) − μ_(X)μ_(Y).

In the case _n_ = 1 (the case of Bernoulli trials) _XY_ is non-zero only when both _X_ and _Y_ are one, and _μ__(_X_) and _μ__(_Y_) are equal to the two probabilities. Defining _p__(_B_) as the probability of both happening at the same time, this gives

    Cov (X, Y) = p_(B) − p_(X)p_(Y),

and for _n_ independent pairwise trials

    Cov (X, Y)_(n) = n(p_(B) − p_(X)p_(Y)).

If _X_ and _Y_ are the same variable, this reduces to the variance formula given above.


Related distributions

Sums of binomials

If _X_ ~ B(_n_, _p_) and _Y_ ~ B(_m_, _p_) are independent binomial variables with the same probability _p_, then _X_ + _Y_ is again a binomial variable; its distribution is _Z=X+Y_ ~ B(_n+m_, _p_):

$$\begin{align}
  \operatorname P(Z=k) &= \sum_{i=0}^k\left[\binom{n}i p^i (1-p)^{n-i}\right]\left[\binom{m}{k-i} p^{k-i} (1-p)^{m-k+i}\right]\\
                       &= \binom{n+m}k p^k (1-p)^{n+m-k}
\end{align}$$

However, if _X_ and _Y_ do not have the same probability _p_, then the variance of the sum will be smaller than the variance of a binomial variable distributed as B(n + m, p̄). 

Ratio of two binomial distributions

This result was first derived by Katz et al. in 1978.[10]

Let _X_ ~ B(_n_,_p_₁) and _Y_ ~ B(_m_,_p_₂) be independent. Let _T_ = (_X_/_n_)/(_Y_/_m_).

Then log(_T_) is approximately normally distributed with mean log(_p_₁/_p_₂) and variance ((1/_p_₁) − 1)/_n_ + ((1/_p_₂) − 1)/_m_.

Conditional binomials

If _X_ ~ B(_n_, _p_) and _Y_ | _X_ ~ B(_X_, _q_) (the conditional distribution of _Y_, given _X_), then _Y_ is a simple binomial random variable with distribution _Y_ ~ B(_n_, _pq_).

For example, imagine throwing _n_ balls to a basket _U_(X)_ and taking the balls that hit and throwing them to another basket _U_(Y)_. If _p_ is the probability to hit _U_(X)_ then _X_ ~ B(_n_, _p_) is the number of balls that hit _U_(X)_. If _q_ is the probability to hit _U_(Y)_ then the number of balls that hit _U_(Y)_ is _Y_ ~ B(_X_, _q_) and therefore _Y_ ~ B(_n_, _pq_).

Since X ∼ B(n, p) and Y ∼ B(X, q), by the law of total probability,

$$\begin{align}
   \Pr[Y = m] &= \sum_{k = m}^{n} \Pr[Y = m \mid X = k] \Pr[X = k] \\[2pt]
   &= \sum_{k=m}^n \binom{n}{k} \binom{k}{m} p^k q^m (1-p)^{n-k} (1-q)^{k-m}
 \end{align}$$
Since $\tbinom{n}{k} \tbinom{k}{m} = \tbinom{n}{m} \tbinom{n-m}{k-m},$ the equation above can be expressed as

$$\Pr[Y = m] = \sum_{k=m}^{n} \binom{n}{m} \binom{n-m}{k-m} p^k q^m (1-p)^{n-k} (1-q)^{k-m}$$
Factoring p^(k) = p^(m)p^(k − m) and pulling all the terms that don't depend on k out of the sum now yields

$$\begin{align}
   \Pr[Y = m] &= \binom{n}{m} p^m q^m \left( \sum_{k=m}^n \binom{n-m}{k-m} p^{k-m} (1-p)^{n-k} (1-q)^{k-m} \right) \\[2pt]
   &= \binom{n}{m} (pq)^m \left( \sum_{k=m}^n \binom{n-m}{k-m} \left(p(1-q)\right)^{k-m} (1-p)^{n-k}  \right)
 \end{align}$$
After substituting i = k − m in the expression above, we get

$$\Pr[Y = m] = \binom{n}{m} (pq)^m \left( \sum_{i=0}^{n-m} \binom{n-m}{i} (p - pq)^i (1-p)^{n-m - i} \right)$$
Notice that the sum (in the parentheses) above equals (p − pq + 1 − p)^(n − m) by the binomial theorem. Substituting this in finally yields

$$\begin{align}
   \Pr[Y=m] &=  \binom{n}{m} (pq)^m (p - pq + 1 - p)^{n-m}\\[4pt]
   &= \binom{n}{m} (pq)^m (1-pq)^{n-m}
 \end{align}$$
and thus Y ∼ B(n, pq) as desired.

Bernoulli distribution

The Bernoulli distribution is a special case of the binomial distribution, where _n_ = 1. Symbolically, _X_ ~ B(1, _p_) has the same meaning as _X_ ~ Bernoulli(_p_). Conversely, any binomial distribution, B(_n_, _p_), is the distribution of the sum of _n_ Bernoulli trials, Bernoulli(_p_), each with the same probability _p_.[11]

Poisson binomial distribution

The binomial distribution is a special case of the Poisson binomial distribution, or general binomial distribution, which is the distribution of a sum of _n_ independent non-identical Bernoulli trials B(_p_(i)_).[12]

Normal approximation

and normal probability density function approximation for _n_ = 6 and _p_ = 0.5]]

If _n_ is large enough, then the skew of the distribution is not too great. In this case a reasonable approximation to B(_n_, _p_) is given by the normal distribution

𝒩(_n__p_, _n__p_(1 − _p_)),

and this basic approximation can be improved in a simple way by using a suitable continuity correction. The basic approximation generally improves as _n_ increases (at least 20) and is better when _p_ is not near to 0 or 1.[13] Various rules of thumb may be used to decide whether _n_ is large enough, and _p_ is far enough from the extremes of zero or one:

-   One rule[14] is that for the normal approximation is adequate if the absolute value of the skewness is strictly less than 1/3; that is, if

$$\frac{|1-2p|}{\sqrt{np(1-p)}}=\frac1{\sqrt{n}}\left|\sqrt{\frac{1-p}p}-\sqrt{\frac{p}{1-p}}\,\right|<\frac13.$$

-   A stronger rule states that the normal approximation is appropriate only if everything within 3 standard deviations of its mean is within the range of possible values; that is, only if

$$\mu\pm3\sigma=np\pm3\sqrt{np(1-p)}\in(0,n).$$

    This 3-standard-deviation rule is equivalent to the following conditions, which also imply the first rule above.
    $$n>9 \left(\frac{1-p}{p} \right)\quad\text{and}\quad n>9\left(\frac{p}{1-p}\right).$$

The rule $np\pm3\sqrt{np(1-p)}\in(0,n)$ is totally equivalent to request that

$$np-3\sqrt{np(1-p)}>0\quad\text{and}\quad np+3\sqrt{np(1-p)}<n.$$
Moving terms around yields:

$$np>3\sqrt{np(1-p)}\quad\text{and}\quad n(1-p)>3\sqrt{np(1-p)}.$$
Since 0 < p < 1, we can apply the square power and divide by the respective factors np² and n(1 − p)², to obtain the desired conditions:

$$n>9 \left(\frac{1-p}p\right) \quad\text{and}\quad n>9 \left(\frac{p}{1-p}\right).$$
Notice that these conditions automatically imply that n > 9. On the other hand, apply again the square root and divide by 3,

$$\frac{\sqrt{n}}3>\sqrt{\frac{1-p}p}>0 \quad \text{and} \quad \frac{\sqrt{n}}3 > \sqrt{\frac{p}{1-p}}>0.$$
Subtracting the second set of inequalities from the first one yields:

$$\frac{\sqrt{n}}3>\sqrt{\frac{1-p}p}-\sqrt{\frac{p}{1-p}}>-\frac{\sqrt{n}}3;$$
and so, the desired first rule is satisfied,

$$\left|\sqrt{\frac{1-p}p}-\sqrt{\frac{p}{1-p}}\,\right|<\frac{\sqrt{n}}3.$$

-   Another commonly used rule is that both values np and n(1 − p) must be greater than or equal to 5. However, the specific number varies from source to source, and depends on how good an approximation one wants. In particular, if one uses 9 instead of 5, the rule implies the results stated in the previous paragraphs.

Assume that both values np and n(1 − p) are greater than 9. Since 0 < p < 1, we easily have that

_n__p_ ≥ 9 > 9(1 − _p_) and _n_(1 − _p_) ≥ 9 > 9_p_.
We only have to divide now by the respective factors p and 1 − p, to deduce the alternative form of the 3-standard-deviation rule:

$$n>9 \left(\frac{1-p}p\right) \quad\text{and}\quad n>9 \left(\frac{p}{1-p}\right).$$

The following is an example of applying a continuity correction. Suppose one wishes to calculate Pr(_X_ ≤ 8) for a binomial random variable _X_. If _Y_ has a distribution given by the normal approximation, then Pr(_X_ ≤ 8) is approximated by Pr(_Y_ ≤ 8.5). The addition of 0.5 is the continuity correction; the uncorrected normal approximation gives considerably less accurate results.

This approximation, known as de Moivre–Laplace theorem, is a huge time-saver when undertaking calculations by hand (exact calculations with large _n_ are very onerous); historically, it was the first use of the normal distribution, introduced in Abraham de Moivre's book _The Doctrine of Chances_ in 1738. Nowadays, it can be seen as a consequence of the central limit theorem since B(_n_, _p_) is a sum of _n_ independent, identically distributed Bernoulli variables with parameter _p_. This fact is the basis of a hypothesis test, a "proportion z-test", for the value of _p_ using _x/n_, the sample proportion and estimator of _p_, in a common test statistic.[15]

For example, suppose one randomly samples _n_ people out of a large population and ask them whether they agree with a certain statement. The proportion of people who agree will of course depend on the sample. If groups of _n_ people were sampled repeatedly and truly randomly, the proportions would follow an approximate normal distribution with mean equal to the true proportion _p_ of agreement in the population and with standard deviation $\sigma = \sqrt{\frac{p(1-p)}{n}}$

Poisson approximation

The binomial distribution converges towards the Poisson distribution as the number of trials goes to infinity while the product _np_ remains fixed or at least _p_ tends to zero. Therefore, the Poisson distribution with parameter _λ_ = _np_ can be used as an approximation to B(_n_, _p_) of the binomial distribution if _n_ is sufficiently large and _p_ is sufficiently small. According to two rules of thumb, this approximation is good if _n_ ≥ 20 and _p_ ≤ 0.05, or if _n_ ≥ 100 and _np_ ≤ 10.[16]

Concerning the accuracy of Poisson approximation, see Novak,[17] ch. 4, and references therein.

Limiting distributions

-   _Poisson limit theorem_: As _n_ approaches ∞ and _p_ approaches 0 with the product _np_ held fixed, the Binomial(_n_, _p_) distribution approaches the Poisson distribution with expected value _λ = np_.[18]
-   _de Moivre–Laplace theorem_: As _n_ approaches ∞ while _p_ remains fixed, the distribution of

$$\frac{X-np}{\sqrt{np(1-p)}}$$

    approaches the normal distribution with expected value 0 and variance 1. This result is sometimes loosely stated by saying that the distribution of _X_ is asymptotically normal with expected value _np_ and variance _np_(1 − _p_). This result is a specific case of the central limit theorem.

Beta distribution

The binomial distribution and beta distribution are different views of the same model of repeated Bernoulli trials. The binomial distribution is the PMF of _k_ successes given _n_ independent events each with a probability _p_ of success. The beta distribution is the PDF for the probability of success _p_ given _n_ independent events with _k_ observed successes. [19] Mathematically, when _𝛼=𝑘+1_ and _𝛽=𝑛−𝑘+1_, the beta distribution and the binomial distribution are related by a factor of _n+1_: Beta(p; α; β) = (n + 1)Binom(k; n; p)

Beta distributions also provide a family of prior probability distributions for binomial distributions in Bayesian inference:[20]

$$P(p;\alpha,\beta) = \frac{p^{\alpha-1}(1-p)^{\beta-1}}{\mathrm{B}(\alpha,\beta)}.$$


Confidence intervals

Even for quite large values of _n_, the actual distribution of the mean is significantly nonnormal.[21] Because of this problem several methods to estimate confidence intervals have been proposed.

In the equations for confidence intervals below, the variables have the following meaning:

-   _n_₁ is the number of successes out of _n_, the total number of trials
-   $\widehat{p\,} = \frac{n_1}{n}$ is the proportion of successes
-   z is the $1 - \tfrac{1}{2}\alpha$ quantile of a standard normal distribution (i.e., probit) corresponding to the target error rate α. For example, for a 95% confidence level the error α = 0.05, so $1 - \tfrac{1}{2}\alpha$ = 0.975 and z = 1.96.

Wald method



        $\widehat{p\,} \pm z \sqrt{ \frac{ \widehat{p\,} ( 1 -\widehat{p\,} )}{ n } } .$

    A continuity correction of 0.5/_n_ may be added.

Agresti–Coull method

[22]



        $\tilde{p} \pm z \sqrt{ \frac{ \tilde{p} ( 1 - \tilde{p} )}{ n + z^2 } } .$

    Here the estimate of _p_ is modified to



        $\tilde{p}= \frac{ n_1 + \frac{1}{2} z^2}{ n + z^2 }$

Arcsine method

[23]

    $\sin^2 \left(\arcsin \left(\sqrt{\widehat{p\,}}\right) \pm \frac{z}{2\sqrt{n}} \right).$

Wilson (score) method

The notation in the formula below differs from the previous formulas in two respects:[24]

-   Firstly, _z__(_x_) has a slightly different interpretation in the formula below: it has its ordinary meaning of 'the _x_th quantile of the standard normal distribution', rather than being a shorthand for 'the (1 − _x_)-th quantile'.
-   Secondly, this formula does not use a plus-minus to define the two bounds. Instead, one may use z = z_(α/2) to get the lower bound, or use z = z_(1 − α/2) to get the upper bound. For example: for a 95% confidence level the error α = 0.05, so one gets the lower bound by using z = z_(α/2) = z_(0.025) =  − 1.96, and one gets the upper bound by using z = z_(1 − α/2) = z_(0.975) = 1.96.



        \frac{

   \widehat{p\,} + \frac{z^2}{2n} + z
   \sqrt{
       \frac{\widehat{p\,}(1 - \widehat{p\,})}{n} +
       \frac{z^2}{4 n^2}
   }

}{

   1 + \frac{z^2}{n}

}[25]

Comparison

The exact (Clopper–Pearson) method is the most conservative.[26]

The Wald method, although commonly recommended in textbooks, is the most biased.


Generating binomial random variates

Methods for random number generation where the marginal distribution is a binomial distribution are well-established.[27][28]

One way to generate random samples from a binomial distribution is to use an inversion algorithm. To do so, one must calculate the probability that for all values from through . (These probabilities should sum to a value close to one, in order to encompass the entire sample space.) Then by using a pseudorandom number generator to generate samples uniformly between 0 and 1, one can transform the calculated samples into discrete numbers by using the probabilities calculated in the first step.


Tail bounds

For _k_ ≤ _np_, upper bounds for the lower tail of the distribution function can be derived. Recall that F(k; n, p) = Pr (X ≤ k), the probability that there are at most _k_ successes.

Hoeffding's inequality yields the bound

$$F(k;n,p) \leq \exp\left(-2 \frac{(np-k)^2}{n}\right), \!$$

and Chernoff's inequality can be used to derive the bound

$$F(k;n,p) \leq \exp\left(-\frac{1}{2\,p} \frac{(np-k)^2}{n}\right). \!$$

Moreover, these bounds are reasonably tight when _p_ = 1/2, since the following expression holds for all _k_ ≥ 3_n_/8[29]

$$F(k;n,\tfrac{1}{2}) \leq \frac{14}{15} \exp\left(- \frac{16 (\frac{n}{2} - k)^2}{n}\right). \!$$

However, the bounds do not work well for extreme values of _p_. In particular, as _p_ → 1, value _F_(_k_;_n_,_p_) goes to zero (for fixed _k_, _n_ with _k_ < _n_) while the upper bound above goes to a positive constant. In this case a better bound is given by [30]

$$F(k;n,p) \leq \exp\left(-nD\left(\frac{k}{n}\parallel p\right)\right) \quad\quad\text{if }0<\frac{k}{n}<p$$

where _D_(_a_ || _p_) is the relative entropy between an _a_-coin and a _p_-coin (i.e. between the Bernoulli(_a_) and Bernoulli(_p_) distribution):

$$D(a\parallel p)=(a)\log\frac{a}{p}+(1-a)\log\frac{1-a}{1-p}. \!$$

Asymptotically, this bound is reasonably tight; see [31] for details. An equivalent formulation of the bound is

$$\Pr(X \ge k) =F(n-k;n,1-p)\leq \exp\left(-nD\left(\frac{k}{n}\parallel p\right)\right) \quad\quad\text{if }p<\frac{k}{n}<1.\!$$
Both these bounds are derived directly from the Chernoff bound. It can also be shown that,

$$\Pr(X \ge k) =F(n-k;n,1-p)\geq \frac{1}{(n+1)^2} \exp\left(-nD\left(\frac{k}{n}\parallel p\right)\right) \quad\quad\text{if }p<\frac{k}{n}<1.\!$$

This is proved using the method of types (see for example chapter 11 of _Elements of Information Theory_ by Cover and Thomas [32]).

We can also change the (n + 1)² in the denominator to $\sqrt{2n}$, by approximating the binomial coefficient with Stirling's formula.[33]


History

This distribution was derived by James Bernoulli. He considered the case where _p_ = _r_/(_r_ + _s_) where _p_ is the probability of success and _r_ and _s_ are positive integers. Blaise Pascal had earlier considered the case where _p_ = 1/2.


See also

-   Logistic regression
-   Multinomial distribution
-   Negative binomial distribution
-   Beta-binomial distribution
-   Binomial measure, an example of a multifractal measure.[34]
-   Statistical mechanics


References


Further reading

-   -


External links

-   Interactive graphic: Univariate Distribution Relationships
-   Binomial distribution formula calculator
-   Difference of two binomial variables: X-Y or |X-Y|
-   Querying the binomial probability distribution in WolframAlpha

{{-}}

Category:Discrete distributions Category:Factorial and binomial topics Category:Conjugate prior distributions Category:Exponential family distributions

[1]

[2] Hamilton Institute. "The Binomial Distribution" October 20, 2010.

[3] See Proof Wiki

[4] See also

[5]

[6] Lord, Nick. (July 2010). "Binomial averages when the mean is an integer", The Mathematical Gazette 94, 331-332.

[7]

[8]

[9]

[10] Katz D. _et al_.(1978) "Obtaining confidence intervals for the risk ratio in cohort studies". _Biometrics_ 34:469–474

[11]

[12]

[13]

[14]

[15] NIST/SEMATECH, "7.2.4. Does the proportion of defectives meet requirements?" _e-Handbook of Statistical Methods._

[16] NIST/SEMATECH, "6.3.3.1. Counts Control Charts", _e-Handbook of Statistical Methods._

[17] Novak S.Y. (2011) Extreme value methods with applications to finance. London: CRC/ Chapman & Hall/Taylor & Francis. .

[18]

[19] https://www.statlect.com/probability-distributions/beta-distribution

[20]

[21]

[22]

[23] Pires M. A. Confidence intervals for a binomial proportion: comparison of methods and software evaluation.

[24]

[25]

[26]

[27] Devroye, Luc (1986) _Non-Uniform Random Variate Generation_, New York: Springer-Verlag. (See especially Chapter X, Discrete Univariate Distributions)

[28]

[29] Matoušek, J, Vondrak, J: _The Probabilistic Method_ (lecture notes) 1.

[30] R. Arratia and L. Gordon: _Tutorial on large deviations for the binomial distribution_, Bulletin of Mathematical Biology 51(1) (1989), 125–131 2.

[31]

[32] Theorem 11.1.3 in

[33]

[34] Mandelbrot, B. B., Fisher, A. J., & Calvet, L. E. (1997). A multifractal model of asset returns. _3.2 The Binomial Measure is the Simplest Example of a Multifractal_