In mathematics, the LAPLACE TRANSFORM is an integral transform named after its inventor Pierre-Simon Laplace (). It transforms a function of a real variable (often time) to a function of a complex variable (complex frequency). The transform has many applications in science and engineering.

The Laplace transform is similar to the Fourier transform. While the Fourier transform of a function is a complex function of a _real_ variable (frequency), the Laplace transform of a function is a complex function of a _complex variable_. Laplace transforms are usually restricted to functions of with . A consequence of this restriction is that the Laplace transform of a function is a holomorphic function of the variable . Unlike the Fourier transform, the Laplace transform of a distribution is generally a well-behaved function. Techniques of complex variables can also be used to directly study Laplace transforms. As a holomorphic function, the Laplace transform has a power series representation. This power series expresses a function as a linear superposition of moments of the function. This perspective has applications in probability theory.

The Laplace transform is invertible on a large class of functions. The inverse Laplace transform takes a function of a complex variable _s_ (often frequency) and yields a function of a real variable _t_ (often time). Given a simple mathematical or functional description of an input or output to a system, the Laplace transform provides an alternative functional description that often simplifies the process of analyzing the behavior of the system, or in synthesizing a new system based on a set of specifications.[1] So, for example, Laplace transformation from the time domain to the frequency domain transforms differential equations into algebraic equations and convolution into multiplication.

Laplace wrote extensively about the use of generating functions in _Essai philosophique sur les probabilités_ (1814) and the integral form of the Laplace transform evolved naturally as a result [2].


History

The Laplace transform is named after mathematician and astronomer Pierre-Simon Laplace, who used a similar transform in his work on probability theory.[3] Laplace's use of generating functions was similar to what is now known as the z-transform and he gave little attention to the continuous variable case which was discussed by Abel.[4] The theory was further developed in the 19th and early 20th centuries by Lerch,[5] Heaviside,[6] and Bromwich.[7] The current widespread use of the transform (mainly in engineering) came about during and soon after World War II[8] replacing the earlier Heaviside operational calculus. The advantages of the Laplace transform had been emphasized by Doetsch[9] to whom the name Laplace Transform is apparently due.

The early history of methods having some similarity to Laplace transform is as follows. From 1744, Leonhard Euler investigated integrals of the form

    z = ∫X(x)e^(ax) dx  and  z = ∫X(x)x^(A) dx

as solutions of differential equations but did not pursue the matter very far.[10]

Joseph Louis Lagrange was an admirer of Euler and, in his work on integrating probability density functions, investigated expressions of the form

    ∫X(x)e^( − ax)a^(x) dx,

which some modern historians have interpreted within modern Laplace transform theory.[11][12]

These types of integrals seem first to have attracted Laplace's attention in 1782 where he was following in the spirit of Euler in using the integrals themselves as solutions of equations.[13] However, in 1785, Laplace took the critical step forward when, rather than just looking for a solution in the form of an integral, he started to apply the transforms in the sense that was later to become popular. He used an integral of the form

    ∫x^(s)φ(x) dx,

akin to a Mellin transform, to transform the whole of a difference equation, in order to look for solutions of the transformed equation. He then went on to apply the Laplace transform in the same way and started to derive some of its properties, beginning to appreciate its potential power.[14]

Laplace also recognised that Joseph Fourier's method of Fourier series for solving the diffusion equation could only apply to a limited region of space because those solutions were periodic. In 1809, Laplace applied his transform to find solutions that diffused indefinitely in space.[15]


Formal definition

The Laplace transform of a function , defined for all real numbers , is the function , which is a unilateral transform defined by where _s_ is a complex number frequency parameter

    s = σ + iω, with real numbers and .

An alternate notation for the Laplace transform is ℒ{f} instead of .

The meaning of the integral depends on types of functions of interest. A necessary condition for existence of the integral is that must be locally integrable on . For locally integrable functions that decay at infinity or are of exponential type, the integral can be understood to be a (proper) Lebesgue integral. However, for many applications it is necessary to regard it as a conditionally convergent improper integral at . Still more generally, the integral can be understood in a weak sense, and this is dealt with below.

One can define the Laplace transform of a finite Borel measure by the Lebesgue integral[16]

    ℒ{μ}(s) = ∫_([0, ∞))e^( − st) dμ(t).

An important special case is where is a probability measure, for example, the Dirac delta function. In operational calculus, the Laplace transform of a measure is often treated as though the measure came from a probability density function . In that case, to avoid potential confusion, one often writes

    ℒ{f}(s) = ∫_(0^(−))^(∞)f(t)e^( − st) dt,

where the lower limit of is shorthand notation for

    lim_(ε → 0)∫_( − ε)^(∞).

This limit emphasizes that any point mass located at is entirely captured by the Laplace transform. Although with the Lebesgue integral, it is not necessary to take such a limit, it does appear more naturally in connection with the Laplace–Stieltjes transform.

Bilateral Laplace transform

When one says "the Laplace transform" without qualification, the unilateral or one-sided transform is normally intended. The Laplace transform can be alternatively defined as the _bilateral Laplace transform_ or two-sided Laplace transform by extending the limits of integration to be the entire real axis. If that is done the common unilateral transform simply becomes a special case of the bilateral transform where the definition of the function being transformed is multiplied by the Heaviside step function. The bilateral Laplace transform is defined as follows: , which is a unilateral transform defined by An alternate notation for the bilateral Laplace transform is ℬ{f} instead of F.

Inverse Laplace transform

Two integrable functions have the same Laplace transform only if they differ on a set of Lebesgue measure zero. This means that, on the range of the transform, there is an inverse transform. In fact, besides integrable functions, the Laplace transform is a one-to-one mapping from one function space into another in many other function spaces as well, although there is usually no easy characterization of the range. Typical function spaces in which this is true include the spaces of bounded continuous functions, the space [[Lp_space| \int_0^T e^{-st} f(t)\,dt

|  is a periodic function of period  so that , for all . This is the result of the time shifting property and the geometric series.

|}

-   INITIAL VALUE THEOREM:

    f(0⁺) = lim_(s → ∞)sF(s).

-   FINAL VALUE THEOREM:

    f(∞) = lim_(s → 0)sF(s), if all poles of _sF_(_s_) are in the left half-plane.
    The final value theorem is useful because it gives the long-term behaviour without having to perform partial fraction decompositions or other difficult algebra. If has a pole in the right-hand plane or poles on the imaginary axis (e.g., if f(t) = e^(t) or f(t) = sin (t)), the behaviour of this formula is undefined.

Relation to power series

The Laplace transform can be viewed as a continuous analogue of a power series.[17] If is a discrete function of a positive integer , then the power series associated to is the series

$$\sum_{n=0}^{\infty} a(n) x^n$$
where is a real variable (see Z transform). Replacing summation over with integration over , a continuous version of the power series becomes

∫₀^(∞)_f_(_t_)_x_^(_t_) _d__t_
where the discrete function is replaced by the continuous one .

Changing the base of the power from to gives

∫₀^(∞)_f_(_t_)(_e_^(ln _x_))^(_t_) _d__t_

For this to converge for, say, all bounded functions , it is necessary to require that . Making the substitution gives just the Laplace transform:

∫₀^(∞)_f_(_t_)_e_^( − _s__t_) _d__t_

In other words, the Laplace transform is a continuous analog of a power series in which the discrete parameter is replaced by the continuous parameter , and is replaced by .

Relation to moments

The quantities

_μ__(_n_) = ∫₀^(∞)_t_^(_n_)_f_(_t_) _d__t_

are the _moments_ of the function . If the first moments of converge absolutely, then by repeated differentiation under the integral,

( − 1)^(_n_)(ℒ_f_)^((_n_))(0) = _μ__(_n_).
This is of special significance in probability theory, where the moments of a random variable are given by the expectation values μ_(n) = E [X^(n)]. Then, the relation holds

$$\mu_n = (-1)^n\frac{d^n}{ds^n}\operatorname{E}\left[e^{-sX}\right](0).$$

Proof of the Laplace transform of a function's derivative

It is often convenient to use the differentiation property of the Laplace transform to find the transform of a function's derivative. This can be derived from the basic expression for a Laplace transform as follows:

    \begin{align}

 \mathcal{L} \left\{f(t)\right\} &= \int_{0^-}^\infty e^{-st} f(t)\, dt \\[6pt]
                                 &= \left[\frac{f(t)e^{-st}}{-s} \right]_{0^-}^\infty -
                                      \int_{0^-}^\infty \frac{e^{-st}}{-s} f'(t) \, dt\quad \text{(by parts)} \\[6pt]
                                 &= \left[-\frac{f(0^-)}{-s}\right] + \frac 1 s \mathcal{L} \left\{f'(t)\right\},

\end{align}

yielding

    ℒ{f′(t)} = s ⋅ ℒ{f(t)} − f(0^(−)),

and in the bilateral case,

    ℒ{f′(t)} = s∫_( − ∞)^(∞)e^( − st)f(t) dt = s ⋅ ℒ{f(t)}.

The general result

    ℒ{f^((n))(t)} = s^(n) ⋅ ℒ{f(t)} − s^(n − 1)f(0^(−)) − ⋯ − f^((n − 1))(0^(−)),

where f^((n)) denotes the ^(th) derivative of , can then be established with an inductive argument.

Evaluating integrals over the positive real axis

A useful property of the Laplace transform is the following:

    ∫₀^(∞)f(x)g(x) dx = ∫₀^(∞)(ℒf)(s) ⋅ (ℒ^( − 1)g)(s) ds

under suitable assumptions on the behaviour of f, g in a right neighbourhood of 0 and on the decay rate of f, g in a left neighbourhood of ∞. The above formula is a variation of integration by parts, with the operators $\frac{d}{dx}$ and ∫ dx being replaced by ℒ and ℒ^( − 1). Let us prove the equivalent formulation:

    ∫₀^(∞)(ℒf)(x)g(x) dx = ∫₀^(∞)f(s)(ℒg)(s) ds.

By plugging in (ℒf)(x) = ∫₀^(∞)f(s)e^( − sx) ds the left-hand side turns into:

    ∫₀^(∞)∫₀^(∞)f(s)g(x)e^( − sx) ds dx,

but assuming Fubini's theorem holds, by reversing the order of integration we get the wanted right-hand side.

Relationship to other transforms

Laplace–Stieltjes transform

The (unilateral) Laplace–Stieltjes transform of a function is defined by the Lebesgue–Stieltjes integral

    {ℒ^(*)g}(s) = ∫₀^(∞)e^( − st) dg(t).

The function is assumed to be of bounded variation. If is the antiderivative of :

    g(x) = ∫₀^(x)f(t) dt

then the Laplace–Stieltjes transform of and the Laplace transform of coincide. In general, the Laplace–Stieltjes transform is the Laplace transform of the Stieltjes measure associated to . So in practice, the only distinction between the two transforms is that the Laplace transform is thought of as operating on the density function of the measure, whereas the Laplace–Stieltjes transform is thought of as operating on its cumulative distribution function.[18]

Fourier transform

The continuous Fourier transform is equivalent to evaluating the bilateral Laplace transform with imaginary argument or [19] when the condition explained below is fulfilled,

$$\begin{align}
  \widehat{f}(\omega) &= \mathcal{F}\{f(t)\} \\[4pt]
                  &= \mathcal{L}\{f(t)\}|_{s = i\omega}  =  F(s)|_{s = i \omega} \\[4pt]
                  &= \int_{-\infty}^\infty e^{-i \omega t} f(t)\,dt~.
\end{align}$$

This definition of the Fourier transform requires a prefactor of 1/2 on the reverse Fourier transform. This relationship between the Laplace and Fourier transforms is often used to determine the frequency spectrum of a signal or dynamical system.

The above relation is valid as stated if and only if the region of convergence (ROC) of contains the imaginary axis, .

For example, the function has a Laplace transform whose ROC is . As is a pole of , substituting in does not yield the Fourier transform of , which is proportional to the Dirac delta-function .

However, a relation of the form

    lim_(σ → 0⁺)F(σ + iω) = f̂(ω)

holds under much weaker conditions. For instance, this holds for the above example provided that the limit is understood as a weak limit of measures (see vague topology). General conditions relating the limit of the Laplace transform of a function on the boundary to the Fourier transform take the form of Paley–Wiener theorems.

Mellin transform

The Mellin transform and its inverse are related to the two-sided Laplace transform by a simple change of variables.

If in the Mellin transform

    $G(s) = \mathcal{M}\{g(\theta)\} = \int_0^\infty \theta^s g(\theta) \, \frac{d\theta} \theta$

we set we get a two-sided Laplace transform.

Z-transform

The unilateral or one-sided Z-transform is simply the Laplace transform of an ideally sampled signal with the substitution of

    $z \stackrel{\mathrm{def}}{{}={}} e^{sT} ,$

where is the sampling period (in units of time e.g., seconds) and is the sampling rate (in samples per second or hertz).

Let

    $\Delta_T(t) \ \stackrel{\mathrm{def}}{=}\  \sum_{n=0}^{\infty}  \delta(t - n T)$

be a sampling impulse train (also called a Dirac comb) and

$$\begin{align}
  x_q(t) \  &\stackrel{\mathrm{def}}{=}\  x(t) \Delta_T(t) = x(t) \sum_{n=0}^{\infty}  \delta(t - n T) \\
            &= \sum_{n=0}^{\infty} x(n T) \delta(t - n T) = \sum_{n=0}^{\infty} x[n] \delta(t - n T)
\end{align}$$
be the sampled representation of the continuous-time

    $x[n] \stackrel{\mathrm{def}}{{}={}}  x(nT) ~.$

The Laplace transform of the sampled signal is

    \begin{align}

 X_q(s) &= \int_{0^-}^\infty x_q(t) e^{-s t} \,dt \\
        &= \int_{0^-}^\infty \sum_{n=0}^\infty x[n] \delta(t - n T) e^{-s t} \, dt \\
        &= \sum_{n=0}^\infty x[n] \int_{0^-}^\infty \delta(t - n T) e^{-s t} \, dt \\
        &= \sum_{n=0}^\infty x[n] e^{-n s T}~.

\end{align}

This is the precise definition of the unilateral Z-transform of the discrete function

    $X(z) = \sum_{n=0}^{\infty} x[n] z^{-n}$

with the substitution of .

Comparing the last two equations, we find the relationship between the unilateral Z-transform and the Laplace transform of the sampled signal,

    X_(q)(s) = X(z)|_(z = e^(sT)).

The similarity between the and Laplace transforms is expanded upon in the theory of time scale calculus.

Borel transform

The integral form of the Borel transform

    F(s) = ∫₀^(∞)f(z)e^( − sz) dz

is a special case of the Laplace transform for an entire function of exponential type, meaning that

    |f(z)| ≤ Ae^(B|z|)

for some constants and . The generalized Borel transform allows a different weighting function to be used, rather than the exponential function, to transform functions not of exponential type. Nachbin's theorem gives necessary and sufficient conditions for the Borel transform to be well defined.

Fundamental relationships

Since an ordinary Laplace transform can be written as a special case of a two-sided transform, and since the two-sided transform can be written as the sum of two one-sided transforms, the theory of the Laplace-, Fourier-, Mellin-, and Z-transforms are at bottom the same subject. However, a different point of view and different characteristic problems are associated with each of these four major integral transforms.


Table of selected Laplace transforms

The following table provides Laplace transforms for many common functions of a single variable.[20][21] For definitions and explanations, see the _Explanatory Notes_ at the end of the table.

Because the Laplace transform is a linear operator,

-   The Laplace transform of a sum is the sum of Laplace transforms of each term.



        ℒ{f(t) + g(t)} = ℒ{f(t)} + ℒ{g(t)}

-   The Laplace transform of a multiple of a function is that multiple times the Laplace transformation of that function.



        ℒ{af(t)} = aℒ{f(t)}

Using this linearity, and various trigonometric, hyperbolic, and complex number (etc.) properties and/or identities, some Laplace transforms can be obtained from others more quickly than by using the definition directly.

The unilateral Laplace transform takes as input a function whose time domain is the non-negative reals, which is why all of the time domain functions in the table below are multiples of the Heaviside step function, .

The entries of the table that involve a time delay are required to be causal (meaning that ). A causal system is a system where the impulse response is zero for all time prior to . In general, the region of convergence for causal systems is not the same as that of anticausal systems.

+----------------------------------------------------------------------+----------------------------------------------+---------------------------------------------------------------------------------+-----------------------+------------------------+
| Function                                                             | Time domain                                  | Laplace -domain                                                                 | Region of convergence | Reference              |
|                                                                      | f(t) = ℒ^( − 1){F(s)}                        | F(s) = ℒ{f(t)}                                                                  |                       |                        |
+======================================================================+==============================================+=================================================================================+=======================+========================+
| unit impulse                                                         | $\delta(t) \$                                | 1                                                                               | all                   | inspection             |
+----------------------------------------------------------------------+----------------------------------------------+---------------------------------------------------------------------------------+-----------------------+------------------------+
| delayed impulse                                                      | $\delta(t - \tau) \$                         | $e^{-\tau s} \$                                                                 |                       | time shift of          |
|                                                                      |                                              |                                                                                 |                       | unit impulse           |
+----------------------------------------------------------------------+----------------------------------------------+---------------------------------------------------------------------------------+-----------------------+------------------------+
| unit step                                                            | $u(t) \$                                     | ${ 1 \over s }$                                                                 |                       | integrate unit impulse |
+----------------------------------------------------------------------+----------------------------------------------+---------------------------------------------------------------------------------+-----------------------+------------------------+
| delayed unit step                                                    | $u(t - \tau) \$                              | $\frac 1 s e^{-\tau s}$                                                         |                       | time shift of          |
|                                                                      |                                              |                                                                                 |                       | unit step              |
+----------------------------------------------------------------------+----------------------------------------------+---------------------------------------------------------------------------------+-----------------------+------------------------+
| ramp                                                                 | $t \cdot u(t)\$                              | $\frac 1 {s^2}$                                                                 |                       | integrate unit         |
|                                                                      |                                              |                                                                                 |                       | impulse twice          |
+----------------------------------------------------------------------+----------------------------------------------+---------------------------------------------------------------------------------+-----------------------+------------------------+
| th power                                                             | t^(n) ⋅ u(t)                                 | ${ n! \over s^{n + 1} }$                                                        | ()                    | Integrate unit         |
| (for integer )                                                       |                                              |                                                                                 |                       | step times             |
+----------------------------------------------------------------------+----------------------------------------------+---------------------------------------------------------------------------------+-----------------------+------------------------+
| th power                                                             | t^(q) ⋅ u(t)                                 | ${ \Gamma(q + 1) \over s^{q + 1} }$                                             |                       | [22][23]               |
| (for complex )                                                       |                                              |                                                                                 |                       |                        |
+----------------------------------------------------------------------+----------------------------------------------+---------------------------------------------------------------------------------+-----------------------+------------------------+
| th root                                                              | $\sqrt[n]{t} \cdot u(t)$                     | ${ 1 \over s^{\frac 1 n + 1} } \Gamma\left(\frac 1 n + 1\right)$                |                       | Set above.             |
+----------------------------------------------------------------------+----------------------------------------------+---------------------------------------------------------------------------------+-----------------------+------------------------+
| th power with frequency shift                                        | t^(n)e^( − αt) ⋅ u(t)                        | $\frac{n!}{(s+\alpha)^{n+1}}$                                                   |                       | Integrate unit step,   |
|                                                                      |                                              |                                                                                 |                       | apply frequency shift  |
+----------------------------------------------------------------------+----------------------------------------------+---------------------------------------------------------------------------------+-----------------------+------------------------+
| delayed th power                                                     | (t − τ)^(n)e^( − α(t − τ)) ⋅ u(t − τ)        | $\frac{n! \cdot e^{-\tau s}}{(s+\alpha)^{n+1}}$                                 |                       | Integrate unit step,   |
| with frequency shift                                                 |                                              |                                                                                 |                       | apply frequency shift, |
|                                                                      |                                              |                                                                                 |                       | apply time shift       |
+----------------------------------------------------------------------+----------------------------------------------+---------------------------------------------------------------------------------+-----------------------+------------------------+
| exponential decay                                                    | e^( − αt) ⋅ u(t)                             | ${ 1 \over s+\alpha }$                                                          |                       | Frequency shift of     |
|                                                                      |                                              |                                                                                 |                       | unit step              |
+----------------------------------------------------------------------+----------------------------------------------+---------------------------------------------------------------------------------+-----------------------+------------------------+
| two-sided exponential decay                                          | $e^{-\alpha|t|}  \$                          | ${ 2\alpha \over \alpha^2 - s^2 }$                                              |                       | Frequency shift of     |
| (only for bilateral transform)                                       |                                              |                                                                                 |                       | unit step              |
+----------------------------------------------------------------------+----------------------------------------------+---------------------------------------------------------------------------------+-----------------------+------------------------+
| exponential approach                                                 | $( 1-e^{-\alpha t})  \cdot u(t)  \$          | $\frac{\alpha}{s(s+\alpha)}$                                                    |                       | Unit step minus        |
|                                                                      |                                              |                                                                                 |                       | exponential decay      |
+----------------------------------------------------------------------+----------------------------------------------+---------------------------------------------------------------------------------+-----------------------+------------------------+
| sine                                                                 | $\sin(\omega t) \cdot u(t) \$                | ${ \omega \over s^2 + \omega^2  }$                                              |                       |                        |
+----------------------------------------------------------------------+----------------------------------------------+---------------------------------------------------------------------------------+-----------------------+------------------------+
| cosine                                                               | $\cos(\omega t) \cdot u(t) \$                | ${ s \over s^2 + \omega^2  }$                                                   |                       |                        |
+----------------------------------------------------------------------+----------------------------------------------+---------------------------------------------------------------------------------+-----------------------+------------------------+
| hyperbolic sine                                                      | $\sinh(\alpha t) \cdot u(t) \$               | ${ \alpha \over s^2 - \alpha^2 }$                                               |                       |                        |
+----------------------------------------------------------------------+----------------------------------------------+---------------------------------------------------------------------------------+-----------------------+------------------------+
| hyperbolic cosine                                                    | $\cosh(\alpha t) \cdot u(t) \$               | ${ s \over s^2 - \alpha^2  }$                                                   |                       |                        |
+----------------------------------------------------------------------+----------------------------------------------+---------------------------------------------------------------------------------+-----------------------+------------------------+
| exponentially decaying                                               | $e^{-\alpha t}  \sin(\omega t) \cdot u(t) \$ | ${ \omega \over (s+\alpha )^2 + \omega^2  }$                                    |                       |                        |
| sine wave                                                            |                                              |                                                                                 |                       |                        |
+----------------------------------------------------------------------+----------------------------------------------+---------------------------------------------------------------------------------+-----------------------+------------------------+
| exponentially decaying                                               | $e^{-\alpha t}  \cos(\omega t) \cdot u(t) \$ | ${ s+\alpha \over (s+\alpha )^2 + \omega^2  }$                                  |                       |                        |
| cosine wave                                                          |                                              |                                                                                 |                       |                        |
+----------------------------------------------------------------------+----------------------------------------------+---------------------------------------------------------------------------------+-----------------------+------------------------+
| natural logarithm                                                    | ln (t) ⋅ u(t)                                | $- { 1 \over s}\, \left[ \ln(s)+\gamma \right]$                                 |                       |                        |
+----------------------------------------------------------------------+----------------------------------------------+---------------------------------------------------------------------------------+-----------------------+------------------------+
| Bessel function                                                      | J_(n)(ωt) ⋅ u(t)                             | $\frac{ \left(\sqrt{s^2+ \omega^2}-s\right)^n}{\omega^n \sqrt{s^2 + \omega^2}}$ | ()                    |                        |
| of the first kind,                                                   |                                              |                                                                                 |                       |                        |
| of order _n_                                                         |                                              |                                                                                 |                       |                        |
+----------------------------------------------------------------------+----------------------------------------------+---------------------------------------------------------------------------------+-----------------------+------------------------+
| Error function                                                       | erf (t) ⋅ u(t)                               | $\frac 1 s e^{(1/4)s^2} \left(1 - \operatorname{erf} \frac s 2 \right)$         |                       |                        |
+----------------------------------------------------------------------+----------------------------------------------+---------------------------------------------------------------------------------+-----------------------+------------------------+
| EXPLANATORY NOTES:                                                   |                                              |                                                                                 |                       |                        |
|                                                                      |                                              |                                                                                 |                       |                        |
| -   represents the Heaviside step function.                          |                                              |                                                                                 |                       |                        |
|                                                                      |                                              |                                                                                 |                       |                        |
| -   represents the Dirac delta function.                             |                                              |                                                                                 |                       |                        |
|                                                                      |                                              |                                                                                 |                       |                        |
| -   represents the Gamma function.                                   |                                              |                                                                                 |                       |                        |
|                                                                      |                                              |                                                                                 |                       |                        |
| -   is the Euler–Mascheroni constant.                                |                                              |                                                                                 |                       |                        |
|                                                                      |                                              |                                                                                 |                       |                        |
| -   , a real number, typically represents _time_,                    |                                              |                                                                                 |                       |                        |
|     although it can represent _any_ independent dimension.           |                                              |                                                                                 |                       |                        |
|                                                                      |                                              |                                                                                 |                       |                        |
| -   is the complex frequency domain parameter, and is its real part. |                                              |                                                                                 |                       |                        |
|                                                                      |                                              |                                                                                 |                       |                        |
| -   are real numbers.                                                |                                              |                                                                                 |                       |                        |
|                                                                      |                                              |                                                                                 |                       |                        |
| -   is an integer.                                                   |                                              |                                                                                 |                       |                        |
+----------------------------------------------------------------------+----------------------------------------------+---------------------------------------------------------------------------------+-----------------------+------------------------+


_s_-domain equivalent circuits and impedances

The Laplace transform is often used in circuit analysis, and simple conversions to the -domain of circuit elements can be made. Circuit elements can be transformed into impedances, very similar to phasor impedances.

Here is a summary of equivalents:


    Note that the resistor is exactly the same in the time domain and the -domain. The sources are put in if there are initial conditions on the circuit elements. For example, if a capacitor has an initial voltage across it, or if the inductor has an initial current through it, the sources inserted in the -domain account for that.

    The equivalents for current and voltage sources are simply derived from the transformations in the table above.


    Examples and applications

    The Laplace transform is used frequently in engineering and physics; the output of a linear time-invariant system can be calculated by convolving its unit impulse response with the input signal. Performing this calculation in Laplace space turns the convolution into a multiplication; the latter being easier to solve because of its algebraic form. For more information, see control theory.

    The Laplace transform can also be used to solve differential equations and is used extensively in mechanical engineering and electrical engineering. The Laplace transform reduces a linear differential equation to an algebraic equation, which can then be solved by the formal rules of algebra. The original differential equation can then be solved by applying the inverse Laplace transform. The English electrical engineer Oliver Heaviside first proposed a similar scheme, although without using the Laplace transform; and the resulting operational calculus is credited as the Heaviside calculus.

    Evaluating improper integrals

    Let ℒ{f(t)} = F(s), then (see the table above)

        $\mathcal{L} \left\{\frac{f(t)} t \right\} = \int_s^\infty F(p)\, dp,$

    or

        $\int_0^\infty \frac{f(t)}{t}e^{-st}\, dt = \int_s^\infty F(p)\, dp.$

    Letting , gives one the identity

        $\int_0^\infty \frac{f(t)} t \, dt = \int_0^\infty F(p)\, dp.$

    provided that the interchange of limits can be justified. Even when the interchange cannot be justified the calculation can be suggestive. For example, with _a_ ≠ 0 ≠ _b_, proceeding formally one has



    \begin{align} & \int_0^\infty \frac 1 t ( \cos(at) - \cos(bt) )\, dt =

     \int_0^\infty \left(\frac p {p^2 + a^2} - \frac{p}{p^2 + b^2}\right)\, dp \\[6pt]



    {} & \FRAC 1 2 \LEFT. \LN\FRAC{P^2 + A^2}{P^2 + B^2} \RIGHT|_{P\,:


    \,0}^\infty = \ln|b| - \ln |a|. \end{align}

    The validity of this identity can be proved by other means. It is an example of a Frullani integral.

    Another example is Dirichlet integral.

    Nuclear physics

    In nuclear physics, the following fundamental relationship governs radioactive decay: the number of radioactive atoms in a sample of a radioactive isotope decays at a rate proportional to . This leads to the first order linear differential equation

        $\frac{dN}{dt} = -\lambda N,$

    where is the decay constant. The Laplace transform can be used to solve this equation.

    Rearranging the equation to one side, we have

        $\frac{dN}{dt} + \lambda N = 0.$

    Next, we take the Laplace transform of both sides of the equation:

        (sÑ(s)−N₀) + λÑ(s) = 0,

    where

        Ñ(s) = ℒ{N(t)}

    and

        N₀ = N(0).

    Solving, we find

        $\widetilde{N}(s) = \frac{N_0}{s + \lambda}.$

    Finally, we take the inverse Laplace transform to find the general solution

        \begin{align}

     N(t) &= \mathcal{L}^{-1} \{\widetilde{N}(s)\} = \mathcal{L}^{-1}\! \left\{ \frac{N_0}{s + \lambda} \right\}\\
          &= \ N_0 e^{-\lambda t},

    \end{align}

    which is indeed the correct form for radioactive decay.

    Complex impedance of a capacitor

    In the theory of electrical circuits, the current flow in a capacitor is proportional to the capacitance and rate of change in the electrical potential (in SI units). Symbolically, this is expressed by the differential equation

        $i = C { dv \over dt} ,$

    where is the capacitance (in farads) of the capacitor, is the electric current (in amperes) through the capacitor as a function of time, and is the voltage (in volts) across the terminals of the capacitor, also as a function of time.

    Taking the Laplace transform of this equation, we obtain

        I(s) = C(sV(s) − V₀),

    where

        \begin{align}

     I(s) &= \mathcal{L} \{ i(t) \},\\
     V(s) &= \mathcal{L} \{ v(t) \},

    \end{align}

    and

        V₀ = v(t)|_(t = 0). 

    Solving for we have

        $V(s) = { I(s) \over sC } + { V_0 \over s }.$

    The definition of the complex impedance (in ohms) is the ratio of the complex voltage divided by the complex current while holding the initial state at zero:

        $Z(s) = \left. { V(s) \over I(s) } \right|_{V_0 = 0}.$

    Using this definition and the previous equation, we find:

        $Z(s) = \frac{1}{sC},$

    which is the correct expression for the complex impedance of a capacitor. In addition, the Laplace transform has large applications in control theory.

    Partial fraction expansion

    Consider a linear time-invariant system with transfer function

        $H(s) = \frac{1}{(s + \alpha)(s + \beta)}.$

    The impulse response is simply the inverse Laplace transform of this transfer function:

        h(t) = ℒ^( − 1){H(s)}.

    To evaluate this inverse transform, we begin by expanding using the method of partial fraction expansion,

        $\frac{1}{(s + \alpha)(s + \beta)} = { P \over s + \alpha } + { R \over s+\beta }.$

    The unknown constants and are the residues located at the corresponding poles of the transfer function. Each residue represents the relative contribution of that singularity to the transfer function's overall shape.

    By the residue theorem, the inverse Laplace transform depends only upon the poles and their residues. To find the residue , we multiply both sides of the equation by to get

        $\frac{1}{s + \beta} = P  + { R (s + \alpha) \over s + \beta }.$

    Then by letting , the contribution from vanishes and all that is left is

        $P = \left.{1 \over s+\beta}\right|_{s=-\alpha} = {1 \over \beta - \alpha}.$

    Similarly, the residue is given by

        $R = \left.{1 \over s + \alpha}\right|_{s=-\beta} = {1 \over \alpha - \beta}.$

    Note that

        $R = {-1 \over \beta - \alpha} = - P$

    and so the substitution of and into the expanded expression for gives

        $H(s)  = \left( \frac{1}{\beta - \alpha} \right) \cdot \left(  { 1 \over s + \alpha } - { 1  \over s + \beta }  \right).$

    Finally, using the linearity property and the known transform for exponential decay (see _Item_ #_3_ in the _Table of Laplace Transforms_, above), we can take the inverse Laplace transform of to obtain

        $h(t) = \mathcal{L}^{-1}\{H(s)\} = \frac{1}{\beta - \alpha}\left(e^{-\alpha t} - e^{-\beta t}\right),$

    which is the impulse response of the system.

    Convolution

    The same result can be achieved using the convolution property as if the system is a series of filters with transfer functions of and . That is, the inverse of

        $H(s) = \frac{1}{(s + a)(s + b)} = \frac{1}{s+a} \cdot \frac{1}{s + b}$

    is

        $\mathcal{L}^{-1}\! \left\{ \frac{1}{s + a} \right\} * \mathcal{L}^{-1}\! \left\{\frac{1}{s + b} \right\} = e^{-at} * e^{-bt} = \int_0^t e^{-ax}e^{-b(t - x)}\, dx = \frac{e^{-a t}-e^{-b t}}{b - a}.$

Phase delay

  Time function   Laplace transform
  --------------- -----------------------------------------------------------------
  sin (ωt + φ)    $\frac{s\sin(\varphi) + \omega \cos(\varphi)}{s^2 + \omega^2}$
  cos (ωt + φ)    $\frac{s\cos(\varphi) - \omega \sin(\varphi)}{s^2 + \omega^2}.$

Starting with the Laplace transform,

    $X(s) = \frac{s\sin(\varphi) + \omega \cos(\varphi)}{s^2 + \omega^2}$

we find the inverse by first rearranging terms in the fraction:

    \begin{align}

 X(s) &= \frac{s \sin(\varphi)}{s^2 + \omega^2} + \frac{\omega \cos(\varphi)}{s^2 + \omega^2} \\
      &= \sin(\varphi) \left(\frac{s}{s^2 + \omega^2} \right) + \cos(\varphi) \left(\frac{\omega}{s^2 + \omega^2} \right).

\end{align}

We are now able to take the inverse Laplace transform of our terms:

    \begin{align}

 x(t) &= \sin(\varphi) \mathcal{L}^{-1}\left\{\frac{s}{s^2 + \omega^2} \right\} + \cos(\varphi) \mathcal{L}^{-1}\left\{\frac{\omega}{s^2 + \omega^2} \right\} \\
      &= \sin(\varphi)\cos(\omega t) + \sin(\omega t)\cos(\varphi).

\end{align}

This is just the sine of the sum of the arguments, yielding:

_x_(_t_) = sin (_ω__t_ + _φ_).

We can apply similar logic to find that

    $\mathcal{L}^{-1} \left\{ \frac{s\cos\varphi - \omega \sin\varphi}{s^2 + \omega^2} \right\} = \cos{(\omega t + \varphi)}.$

Determining structure of astronomical object from spectrum

The wide and general applicability of the Laplace transform and its inverse is illustrated by an application in astronomy which provides some information on the _spatial distribution_ of matter of an astronomical source of radio-frequency thermal radiation too distant to resolve as more than a point, given its flux density spectrum, rather than relating the _time_ domain with the spectrum (frequency domain).

Assuming certain properties of the object, e.g. spherical shape and constant temperature, calculations based on carrying out an inverse Laplace transformation on the spectrum of the object can produce the only possible model of the distribution of matter in it (density as a function of distance from the center) consistent with the spectrum.[24] When independent information on the structure of an object is available, the inverse Laplace transform method has been found to be in good agreement.

Statistical mechanics

In statistical mechanics, the Laplace transform of the density of states g(E)dE defines the partition function.[25] That is, the partition function Z(β) is given by

_Z_(_β_) = ∫₀^(∞)_e_^( − _β__E_)_g_(_E_)_d__E_
and the inverse is given by

$$g(E) = \frac{1}{2\pi i} \int_{\beta_0-i\infty}^{\beta_0+i\infty} e^{\beta E}Z(\beta) d\beta$$


See also

-   Analog signal processing
-   Bernstein's theorem on monotone functions
-   Continuous-repayment mortgage
-   Fourier transform
-   Hamburger moment problem
-   Hardy–Littlewood tauberian theorem
-   Laplace–Carson transform
-   Moment-generating function
-   Pierre-Simon Laplace
-   Post's inversion formula
-   Signal-flow graph
-   Symbolic integration
-   Transfer function
-   Z-transform (discrete equivalent of the Laplace transform)


Notes


References

Modern

-   -   -   -   -   -   -

Historical

-   -   -   , Chapters 3–5

-   -   -


Further reading

-   .

-   -   -   -   -   Mathews, Jon; Walker, Robert L. (1970), _Mathematical methods of physics_ (2nd ed.), New York: W. A. Benjamin,
-   -   -   - See Chapter VI. The Laplace transform.

-   -


External links

-   -   Online Computation of the transform or inverse transform, wims.unice.fr
-   Tables of Integral Transforms at EqWorld: The World of Mathematical Equations.
-   -   Good explanations of the initial and final value theorems
-   Laplace Transforms at MathPages
-   Computational Knowledge Engine allows to easily calculate Laplace Transforms and its inverse Transform.
-   Laplace Calculator to calculate Laplace Transforms online easily.

Laplace_transforms Category:Differential equations Category:Fourier analysis Category:Mathematical physics

[1]

[2]

[3]

[4]  1881 edition

[5]

[6]

[7]

[8] An influential book was:

[9]  translation 1943

[10] , ,

[11]

[12]

[13]

[14]

[15]

[16]

[17]

[18]

[19]

[20]

[21]

[22]  – provides the case for real .

[23] http://mathworld.wolfram.com/LaplaceTransform.html – Wolfram Mathword provides case for complex

[24] , and

[25]