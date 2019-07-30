and the discrete Fourier transform. Left column: A continuous function (top) and its Fourier transform (bottom). Center-left column: Periodic summation of the original function (top). Fourier transform (bottom) is zero except at discrete points. The inverse transform is a sum of sinusoids called Fourier series. Center-right column: Original function is discretized (multiplied by a Dirac comb) (top). Its Fourier transform (bottom) is a periodic summation (DTFT) of the original transform. Right column: The DFT (bottom) computes discrete samples of the continuous DTFT. The inverse DFT (top) is a periodic summation of the original samples. The FFT algorithm computes one cycle of the DFT and its inverse is one cycle of the DFT inverse.]]

integral and (b) the DFT summation. Its similarities to the original transform, S(f), and its relative computational ease are often the motivation for computing a DFT sequence.]]

In mathematics, the DISCRETE FOURIER TRANSFORM (DFT) converts a finite sequence of equally-spaced samples of a function into a same-length sequence of equally-spaced samples of the discrete-time Fourier transform (DTFT), which is a complex-valued function of frequency. The interval at which the DTFT is sampled is the reciprocal of the duration of the input sequence. An inverse DFT is a Fourier series, using the DTFT samples as coefficients of complex sinusoids at the corresponding DTFT frequencies. It has the same sample-values as the original input sequence. The DFT is therefore said to be a frequency domain representation of the original input sequence. If the original sequence spans all the non-zero values of a function, its DTFT is continuous (and periodic), and the DFT provides discrete samples of one cycle. If the original sequence is one cycle of a periodic function, the DFT provides all the non-zero values of one DTFT cycle.

The DFT is the most important discrete transform, used to perform Fourier analysis in many practical applications.[1] In digital signal processing, the function is any quantity or signal that varies over time, such as the pressure of a sound wave, a radio signal, or daily temperature readings, sampled over a finite time interval (often defined by a window function[2]). In image processing, the samples can be the values of pixels along a row or column of a raster image. The DFT is also used to efficiently solve partial differential equations, and to perform other operations such as convolutions or multiplying large integers.

Since it deals with a finite amount of data, it can be implemented in computers by numerical algorithms or even dedicated hardware. These implementations usually employ efficient fast Fourier transform (FFT) algorithms;[3] so much so that the terms "FFT" and "DFT" are often used interchangeably. Prior to its current usage, the "FFT" initialism may have also been used for the ambiguous term "finite Fourier transform".


Definition

The _discrete Fourier transform_ transforms a sequence of _N_ complex numbers {X_(N)} := x₀, x₁, …, x_(N − 1) into another sequence of complex numbers, {X_(K)} := X₀, X₁, …, X_(N − 1), which is defined by

where the last expression follows from the first one by Euler's formula.

The transform is sometimes denoted by the symbol ℱ, as in X = ℱ{X} or ℱ(X) or ℱX.[4]


Motivation

can also be evaluated outside the domain k ∈ [0, N − 1], and that extended sequence is N-periodic. Accordingly, other sequences of N indices are sometimes used, such as $\left[-\tfrac{N}{2},\tfrac{N}{2}-1\right]$ (if N is even) and $\left[-\tfrac{N-1}{2},\tfrac{N-1}{2}\right]$ (if N is odd), which amounts to swapping the left and right halves of the result of the transform. [5]

can be interpreted or derived in various ways, for example:

-   It completely describes the discrete-time Fourier transform (DTFT) of an N-periodic sequence, which comprises only discrete frequency components. (Using the DTFT with periodic data)
-   It can also provide uniformly spaced samples of the continuous DTFT of a finite length sequence. (Sampling the DTFT)
-   It is the cross correlation of the _input_ sequence, x_(n), and a complex sinusoid at frequency k/N.  Thus it acts like a matched filter for that frequency.
-   It is the discrete analog of the formula for the coefficients of a Fourier series:

    which is also N-periodic.  In the domain  ,  this is the INVERSE TRANSFORM of .  In this interpretation, each X_(k) is a complex number that encodes both amplitude and phase of a complex sinusoidal component  (e^(i2πkn/N))  of function x_(n). The sinusoid's frequency is _k_ cycles per _N_ samples.  Its amplitude and phase are:

$$|X_k|/N = \sqrt{\operatorname{Re}(X_k)^2 + \operatorname{Im}(X_k)^2}/N$$

$$\arg(X_k) = \operatorname{atan2}\big( \operatorname{Im}(X_k), \operatorname{Re}(X_k) \big)=-i\cdot \operatorname{ln}\left(\frac{X_k}{|X_k|}\right),$$

    where atan2 is the two-argument form of the arctan function. In polar form X_(k) = |X_(k)|e^(iarg (X_(k))) = |X_(k)|cis arg (X_(k)) where cis is the mnemonic for cos + _i_ sin.

The normalization factor multiplying the DFT and IDFT (here 1 and 1/_N_) and the signs of the exponents are merely conventions, and differ in some treatments. The only requirements of these conventions are that the DFT and IDFT have opposite-sign exponents and that the product of their normalization factors be 1/N.  A normalization of $\scriptstyle \sqrt{1/N}$ for both the DFT and IDFT, for instance, makes the transforms unitary. A discrete impulse, x_(n) = 1 at _n_ = 0 and 0 otherwise; might transform to X_(k) = 1 for all _k_ (use normalization factors 1 for DFT and 1/_N_ for IDFT). A DC signal, X_(k) = 1 at _k_ = 0 and 0 otherwise; might inversely transform to x_(n) = 1 for all n (use 1/N for DFT and 1 for IDFT) which is consistent with viewing DC as the mean average of the signal.


Example

Let N = 4 and

    \mathbf{x} =

\begin{pmatrix} x_0 \\ x_1 \\ x_2 \\ x_3 \end{pmatrix} = \begin{pmatrix} 1 \\ 2-i \\ -i \\ -1+2i \end{pmatrix}

Here we demonstrate how to calculate the DFT of X using :

    X₀ = e^( − i2π0 ⋅ 0/4) ⋅ 1 + e^( − i2π0 ⋅ 1/4) ⋅ (2 − i) + e^( − i2π0 ⋅ 2/4) ⋅ ( − i) + e^( − i2π0 ⋅ 3/4) ⋅ ( − 1 + 2i) = 2

    X₁ = e^( − i2π1 ⋅ 0/4) ⋅ 1 + e^( − i2π1 ⋅ 1/4) ⋅ (2 − i) + e^( − i2π1 ⋅ 2/4) ⋅ ( − i) + e^( − i2π1 ⋅ 3/4) ⋅ ( − 1 + 2i) =  − 2 − 2i

    X₂ = e^( − i2π2 ⋅ 0/4) ⋅ 1 + e^( − i2π2 ⋅ 1/4) ⋅ (2 − i) + e^( − i2π2 ⋅ 2/4) ⋅ ( − i) + e^( − i2π2 ⋅ 3/4) ⋅ ( − 1 + 2i) =  − 2i

    X₃ = e^( − i2π3 ⋅ 0/4) ⋅ 1 + e^( − i2π3 ⋅ 1/4) ⋅ (2 − i) + e^( − i2π3 ⋅ 2/4) ⋅ ( − i) + e^( − i2π3 ⋅ 3/4) ⋅ ( − 1 + 2i) = 4 + 4i

    \mathbf{X} =

\begin{pmatrix} X_0 \\ X_1 \\ X_2 \\ X_3 \end{pmatrix} = \begin{pmatrix} 2 \\ -2-2i \\ -2i \\ 4+4i \end{pmatrix}


Inverse transform

The discrete Fourier transform is an invertible, linear transformation

ℱ: ℂ^(_N_) → ℂ^(_N_)
with ℂ denoting the set of complex numbers. This is known as Inverse Discrete Fourier Transform(IDFT). In other words, for any N > 0, an _N_-dimensional complex vector has a DFT and an IDFT which are in turn N-dimensional complex vectors.

The inverse transform is given by:


Properties

Linearity

The DFT is a linear transform, i.e. if ℱ({x_(n)})_(k) = X_(k) and ℱ({y_(n)})_(k) = Y_(k), then for any complex numbers a, b:

ℱ({_a__x__(_n_) + _b__y__(_n_)})_(_k_) = _a__X__(_k_) + _b__Y__(_k_)

Time and frequency reversal

Reversing the time (i.e. replacing n by N − n)[6] in x_(n) corresponds to reversing the frequency (i.e. k by N − k).[7] Mathematically, if {x_(n)} represents the vector X then

    if ℱ({x_(n)})_(k) = X_(k)
    then ℱ({x_(N − n)})_(k) = X_(N − k)

Conjugation in time

If ℱ({x_(n)})_(k) = X_(k) then ℱ({x_(n)^(*)})_(k) = X_(N − k)^(*).[8]

Real and imaginary part

This table shows some mathematical operations on x_(n) in the time domain and the corresponding effects on its DFT X_(k) in the frequency domain.

+-----------------------------+-------------------------------+---------------------------------+
| Property                    | Time domain                   | Frequency domain                |
|                             | x_(n)                         | X_(k)                           |
+=============================+===============================+=================================+
| Real part in time           | ℜ(x_(n))                      | $\frac{1}{2}(X_k + X^*_{N-k})$  |
+-----------------------------+-------------------------------+---------------------------------+
| Imaginary part in time      | ℑ(x_(n))                      | $\frac{1}{2i}(X_k - X^*_{N-k})$ |
+-----------------------------+-------------------------------+---------------------------------+
| Real part in frequency      | $\frac{1}{2}(x_n+x^*_{N-n})$  | ℜ(X_(k))                        |
+-----------------------------+-------------------------------+---------------------------------+
| Imaginary part in frequency | $\frac{1}{2i}(x_n-x^*_{N-n})$ | ℑ(X_(k))                        |
+-----------------------------+-------------------------------+---------------------------------+

Orthogonality

The vectors $u_k=\left[ e^{ \frac{i 2\pi}{N} kn} \;|\; n=0,1,\ldots,N-1 \right]^T$ form an orthogonal basis over the set of _N_-dimensional complex vectors:

$$u^T_k u_{k'}^*
 = \sum_{n=0}^{N-1} \left(e^{ \frac{i 2\pi}{N} kn}\right) \left(e^{\frac{i 2\pi}{N} (-k')n}\right)
 = \sum_{n=0}^{N-1} e^{ \frac{i 2\pi}{N} (k-k') n}
 = N~\delta_{kk'}$$

where  δ_(kk′) is the Kronecker delta. (In the last step, the summation is trivial if k = k′, where it is 1+1+⋅⋅⋅=_N_, and otherwise is a geometric series that can be explicitly summed to obtain zero.) This orthogonality condition can be used to derive the formula for the IDFT from the definition of the DFT, and is equivalent to the unitarity property below.

The Plancherel theorem and Parseval's theorem

If X_(k) and Y_(k) are the DFTs of x_(n) and y_(n) respectively then the Parseval's theorem states:

$$\sum_{n=0}^{N-1} x_n y^*_n = \frac{1}{N} \sum_{k=0}^{N-1} X_k Y^*_k$$

where the star denotes complex conjugation. Plancherel theorem is a special case of the Parseval's theorem and states:

$$\sum_{n=0}^{N-1} |x_n|^2 = \frac{1}{N} \sum_{k=0}^{N-1} |X_k|^2.$$

These theorems are also equivalent to the unitary condition below.

Periodicity

The periodicity can be shown directly from the definition:

    X_{k+N} \ \triangleq \ \sum_{n=0}^{N-1} x_n e^{-\frac{i 2\pi}{N} (k+N) n} =

\sum_{n=0}^{N-1} x_n e^{-\frac{i 2\pi}{N} k n} \underbrace{e^{-i 2 \pi n}}_{1} = \sum_{n=0}^{N-1} x_n e^{-\frac{i 2\pi}{N} k n} = X_k.

Similarly, it can be shown that the IDFT formula leads to a periodic extension.

Shift theorem

Multiplying x_(n) by a _linear phase_ $e^{\frac{i 2\pi}{N}n m}$ for some integer _m_ corresponds to a _circular shift_ of the output X_(k): X_(k) is replaced by X_(k − m), where the subscript is interpreted modulo _N_ (i.e., periodically). Similarly, a circular shift of the input x_(n) corresponds to multiplying the output X_(k) by a linear phase. Mathematically, if {x_(n)} represents the vector X then

    if ℱ({x_(n)})_(k) = X_(k)

    then $\mathcal{F}(\{ x_n\cdot e^{\frac{i 2\pi}{N}n m} \})_k=X_{k-m}$

    and $\mathcal{F}(\{x_{n-m}\})_k=X_k\cdot e^{-\frac{i 2\pi}{N}k m}$

Circular convolution theorem and cross-correlation theorem

The convolution theorem for the discrete-time Fourier transform indicates that a convolution of two infinite sequences can be obtained as the inverse transform of the product of the individual transforms. An important simplification occurs when the sequences are of finite length, N. In terms of the DFT and inverse DFT, it can be written as follows:

$$\mathcal{F}^{-1} \left \{ \mathbf{X\cdot Y} \right \}_n \ = \sum_{\ell=0}^{N-1}x_\ell \cdot (y_N)_{n-\ell} \ \ \triangleq \ \ (\mathbf{x * y_N})_n\ ,$$

which is the convolution of the X sequence with a Y sequence extended by periodic summation:

$$(\mathbf{y_N})_n \ \triangleq \ \sum_{p=-\infty}^\infty y_{(n-pN)} = y_{n \pmod N}. \,$$

Similarly, the cross-correlation of  X  and  Y_(N)  is given by:

$$\mathcal{F}^{-1} \left \{ \mathbf{X^* \cdot Y} \right \}_n
= \sum_{\ell=0}^{N-1}x_\ell^* \cdot (y_N)_{n+\ell} \ \ \triangleq \ \ (\mathbf{x \star y_N})_n\ .$$

When either sequence contains a string of zeros, of length L,  L + 1 of the circular convolution outputs are equivalent to values of  X * Y.  Methods have also been developed to use this property as part of an efficient process that constructs  X * Y  with an X or Y sequence potentially much longer than the practical transform size (N). Two such methods are called overlap-save and overlap-add.[9] The efficiency results from the fact that a direct evaluation of either summation (above) requires $\scriptstyle O(N^2)$ operations for an output sequence of length N.  An indirect method, using transforms, can take advantage of the $\scriptstyle O(N\log N)$ efficiency of the fast Fourier transform (FFT) to achieve much better performance. Furthermore, convolutions can be used to efficiently compute DFTs via Rader's FFT algorithm and Bluestein's FFT algorithm.

Convolution theorem duality

It can also be shown that:

$$\mathcal{F} \left \{ \mathbf{x\cdot y} \right \}_k \ \triangleq
\sum_{n=0}^{N-1} x_n \cdot y_n \cdot e^{-i \frac{2\pi}{N} k n}$$

$$=\frac{1}{N} (\mathbf{X * Y_N})_k, \,$$
  which is the circular convolution of X and Y.

Trigonometric interpolation polynomial

The trigonometric interpolation polynomial

    $p(t) = \frac{1}{N} \left[ X_0 + X_1 e^{i 2\pi t} + \cdots + X_{N/2-1} e^{i(N/2-1) 2\pi t} + X_{N/2} \cos(N\pi t) + X_{N/2+1} e^{i(-N/2+1) 2\pi t} + \cdots + X_{N-1} e^{-i 2\pi t} \right]$ for _N_ even ,
    $p(t) = \frac{1}{N} \left[ X_0 + X_1 e^{i 2\pi t} + \cdots + X_{\lfloor N/2 \rfloor} e^{i \lfloor N/2 \rfloor 2\pi t} + X_{\lfloor N/2 \rfloor+1} e^{-i \lfloor N/2 \rfloor 2\pi t} + \cdots + X_{N-1} e^{-i 2\pi t} \right]$ for _N_ odd,

where the coefficients _X__(_k_) are given by the DFT of _x__(_n_) above, satisfies the interpolation property p(n/N) = x_(n) for n = 0, …, N − 1.

For even _N_, notice that the Nyquist component $\frac{X_{N/2}}{N} \cos(N\pi t)$ is handled specially.

This interpolation is _not unique_: aliasing implies that one could add _N_ to any of the complex-sinusoid frequencies (e.g. changing e^( − it) to e^(i(N − 1)t) ) without changing the interpolation property, but giving _different_ values in between the x_(n) points. The choice above, however, is typical because it has two useful properties. First, it consists of sinusoids whose frequencies have the smallest possible magnitudes: the interpolation is bandlimited. Second, if the x_(n) are real numbers, then p(t) is real as well.

In contrast, the most obvious trigonometric interpolation polynomial is the one in which the frequencies range from 0 to N − 1 (instead of roughly  − N/2 to  + N/2 as above), similar to the inverse DFT formula. This interpolation does _not_ minimize the slope, and is _not_ generally real-valued for real x_(n); its use is a common mistake.

The unitary DFT

Another way of looking at the DFT is to note that in the above discussion, the DFT can be expressed as the DFT matrix, a Vandermonde matrix, introduced by Sylvester in 1867,

$$\mathbf{F} =
\begin{bmatrix}
 \omega_N^{0 \cdot 0}     & \omega_N^{0 \cdot 1}     & \ldots & \omega_N^{0 \cdot (N-1)}     \\
 \omega_N^{1 \cdot 0}     & \omega_N^{1 \cdot 1}     & \ldots & \omega_N^{1 \cdot (N-1)}     \\
 \vdots                   & \vdots                   & \ddots & \vdots                       \\
 \omega_N^{(N-1) \cdot 0} & \omega_N^{(N-1) \cdot 1} & \ldots & \omega_N^{(N-1) \cdot (N-1)} \\
\end{bmatrix}$$
where ω_(N) = e^( − i2π/N) is a primitive _N_th root of unity.

The inverse transform is then given by the inverse of the above matrix,

$$\mathbf{F}^{-1}=\frac{1}{N}\mathbf{F}^*$$

With unitary normalization constants $1/\sqrt{N}$, the DFT becomes a unitary transformation, defined by a unitary matrix:

$$\mathbf{U}=\mathbf{F}/\sqrt{N}$$

U^( − 1) = U^(*)

|det (U)| = 1
where det () is the determinant function. The determinant is the product of the eigenvalues, which are always  ± 1 or  ± i as described below. In a real vector space, a unitary transformation can be thought of as simply a rigid rotation of the coordinate system, and all of the properties of a rigid rotation can be found in the unitary DFT.

The orthogonality of the DFT is now expressed as an orthonormality condition (which arises in many areas of mathematics as described in root of unity):

$$\sum_{m=0}^{N-1}U_{km}U_{mn}^*=\delta_{kn}$$

If X is defined as the unitary DFT of the vector X, then

$$X_k=\sum_{n=0}^{N-1} U_{kn} x_n$$

and the Plancherel theorem is expressed as

$$\sum_{n=0}^{N-1}x_n y_n^* = \sum_{k=0}^{N-1}X_k Y_k^*$$

If we view the DFT as just a coordinate transformation which simply specifies the components of a vector in a new coordinate system, then the above is just the statement that the dot product of two vectors is preserved under a unitary DFT transformation. For the special case X = Y, this implies that the length of a vector is preserved as well—this is just Parseval's theorem,

$$\sum_{n=0}^{N-1}|x_n|^2 = \sum_{k=0}^{N-1}|X_k|^2$$

A consequence of the circular convolution theorem is that the DFT matrix diagonalizes any circulant matrix.

Expressing the inverse DFT in terms of the DFT

A useful property of the DFT is that the inverse DFT can be easily expressed in terms of the (forward) DFT, via several well-known "tricks". (For example, in computations, it is often convenient to only implement a fast Fourier transform corresponding to one transform direction and then to get the other transform direction from the first.)

First, we can compute the inverse DFT by reversing all but one of the inputs (Duhamel _et al._, 1988):

ℱ^( − 1)({_x__(_n_)}) = ℱ({_x__(_N_ − _n_)})/_N_

(As usual, the subscripts are interpreted modulo _N_; thus, for n = 0, we have x_(N − 0) = x₀.)

Second, one can also conjugate the inputs and outputs:

ℱ^( − 1)(X) = ℱ(X^(*))^(*)/_N_

Third, a variant of this conjugation trick, which is sometimes preferable because it requires no modification of the data values, involves swapping real and imaginary parts (which can be done on a computer simply by modifying pointers). Define \operatorname{swap}(x_n) is b + ai. Equivalently, <math display="inline}>\operatorname{swap}(x_n) equals ix_(n)^(*). Then

ℱ^( − 1)(X) = swap (ℱ(swap (X)))/_N_

That is, the inverse transform is the same as the forward transform with the real and imaginary parts swapped for both input and output, up to a normalization (Duhamel _et al._, 1988).

The conjugation trick can also be used to define a new transform, closely related to the DFT, that is involutory—that is, which is its own inverse. In particular, $T(\mathbf{x}) = \mathcal{F}(\mathbf{x}^*) / \sqrt{N}$ is clearly its own inverse: T(T(X)) = X. A closely related involutory transformation (by a factor of (1+_i_) /) is $H(\mathbf{x}) = \mathcal{F}((1+i) \mathbf{x}^*) / \sqrt{2N}$, since the (1 + i) factors in H(H(X)) cancel the 2. For real inputs X, the real part of H(X) is none other than the discrete Hartley transform, which is also involutory.

Eigenvalues and eigenvectors

The eigenvalues of the DFT matrix are simple and well-known, whereas the eigenvectors are complicated, not unique, and are the subject of ongoing research.

Consider the unitary form U defined above for the DFT of length _N_, where

$$\mathbf{U}_{m,n} = \frac1{\sqrt{N}}\omega_N^{(m-1)(n-1)} = \frac1{\sqrt{N}}e^{-\frac{i 2\pi}N (m-1)(n-1)}.$$
This matrix satisfies the matrix polynomial equation:

U⁴ = I.
This can be seen from the inverse properties above: operating U twice gives the original data in reverse order, so operating U four times gives back the original data and is thus the identity matrix. This means that the eigenvalues λ satisfy the equation:

_λ_⁴ = 1.
Therefore, the eigenvalues of U are the fourth roots of unity: λ is +1, −1, +_i_, or −_i_.

Since there are only four distinct eigenvalues for this N × N matrix, they have some multiplicity. The multiplicity gives the number of linearly independent eigenvectors corresponding to each eigenvalue. (Note that there are _N_ independent eigenvectors; a unitary matrix is never defective.)

The problem of their multiplicity was solved by McClellan and Parks (1972), although it was later shown to have been equivalent to a problem solved by Gauss (Dickinson and Steiglitz, 1982). The multiplicity depends on the value of _N_ modulo 4, and is given by the following table:

  size _N_   λ = +1    λ = −1    λ = −_i_   λ = +_i_
  ---------- --------- --------- ---------- ----------
  4_m_       _m_ + 1   _m_       _m_        _m_ − 1
  4_m_ + 1   _m_ + 1   _m_       _m_        _m_
  4_m_ + 2   _m_ + 1   _m_ + 1   _m_        _m_
  4_m_ + 3   _m_ + 1   _m_ + 1   _m_ + 1    _m_

  : align="bottom" | Multiplicities of the eigenvalues λ of the unitary DFT matrix U as a function of the transform size _N_ (in terms of an integer _m_).

Otherwise stated, the characteristic polynomial of U is:

$$\det (\lambda I - \mathbf{U})=
(\lambda-1)^{\left\lfloor \tfrac {N+4}{4}\right\rfloor}
(\lambda+1)^{\left\lfloor \tfrac {N+2}{4}\right\rfloor}
(\lambda+i)^{\left\lfloor \tfrac {N+1}{4}\right\rfloor}
(\lambda-i)^{\left\lfloor \tfrac {N-1}{4}\right\rfloor}.$$

No simple analytical formula for general eigenvectors is known. Moreover, the eigenvectors are not unique because any linear combination of eigenvectors for the same eigenvalue is also an eigenvector for that eigenvalue. Various researchers have proposed different choices of eigenvectors, selected to satisfy useful properties like orthogonality and to have "simple" forms (e.g., McClellan and Parks, 1972; Dickinson and Steiglitz, 1982; Grünbaum, 1982; Atakishiyev and Wolf, 1997; Candan _et al._, 2000; Hanna _et al._, 2004; Gurevich and Hadani, 2008).

A straightforward approach is to discretize an eigenfunction of the continuous Fourier transform, of which the most famous is the Gaussian function. Since periodic summation of the function means discretizing its frequency spectrum and discretization means periodic summation of the spectrum, the discretized and periodically summed Gaussian function yields an eigenvector of the discrete transform:

-   $F(m) = \sum_{k\in\mathbb{Z}} \exp\left(-\frac{\pi\cdot(m+N\cdot k)^2}{N}\right)$.

The closed form expression for the series can be expressed by Jacobi theta functions as

-   $F(m) = \frac1{\sqrt{N}}\vartheta_3\left(\frac{\pi m}N, \exp\left(-\frac{\pi}N \right)\right)$.

Two other simple closed-form analytical eigenvectors for special DFT period _N_ were found (Kong, 2008):

For DFT period _N_ = 2_L_ + 1 = 4_K_ + 1, where _K_ is an integer, the following is an eigenvector of DFT:

-   $F(m)=\prod_{s=K+1}^L\left[\cos\left(\frac{2\pi}{N}m\right)- \cos\left(\frac{2\pi}{N}s\right)\right]$

For DFT period _N_ = 2_L_ = 4_K_, where _K_ is an integer, the following is an eigenvector of DFT:

-   $F(m)=\sin\left(\frac{2\pi}{N}m\right)\prod_{s=K+1}^{L-1}\left[\cos\left(\frac{2\pi}{N}m\right)- \cos\left(\frac{2\pi}{N}s\right)\right]$

The choice of eigenvectors of the DFT matrix has become important in recent years in order to define a discrete analogue of the fractional Fourier transform—the DFT matrix can be taken to fractional powers by exponentiating the eigenvalues (e.g., Rubio and Santhanam, 2005). For the continuous Fourier transform, the natural orthogonal eigenfunctions are the Hermite functions, so various discrete analogues of these have been employed as the eigenvectors of the DFT, such as the Kravchuk polynomials (Atakishiyev and Wolf, 1997). The "best" choice of eigenvectors to define a fractional discrete Fourier transform remains an open question, however.

Uncertainty principles

Probabilistic uncertainty principle

If the random variable is constrained by

$$\sum_{n=0}^{N-1}|X_n|^2=1  ~,$$
then

_P__(_n_) = |_X__(_n_)|²
may be considered to represent a discrete probability mass function of , with an associated probability mass function constructed from the transformed variable,

_Q__(_m_) = _N_|_x__(_m_)|² .

For the case of continuous functions P(x) and Q(k), the Heisenberg uncertainty principle states that

$$D_0(X)D_0(x)\ge\frac{1}{16\pi^2}$$
where D₀(X) and D₀(x) are the variances of |X|² and |x|² respectively, with the equality attained in the case of a suitably normalized Gaussian distribution. Although the variances may be analogously defined for the DFT, an analogous uncertainty principle is not useful, because the uncertainty will not be shift-invariant. Still, a meaningful uncertainty principle has been introduced by Massar and Spindel.[10]

However, the Hirschman entropic uncertainty will have a useful analog for the case of the DFT.[11] The Hirschman uncertainty principle is expressed in terms of the Shannon entropy of the two probability functions.

In the discrete case, the Shannon entropies are defined as

$$H(X)=-\sum_{n=0}^{N-1} P_n\ln P_n$$
and

$$H(x)=-\sum_{m=0}^{N-1} Q_m\ln Q_m ~,$$
and the entropic uncertainty principle becomes[12]

_H_(_X_) + _H_(_x_) ≥ ln (_N_) .

The equality is obtained for P_(n) equal to translations and modulations of a suitably normalized Kronecker comb of period A where A is any exact integer divisor of N. The probability mass function Q_(m) will then be proportional to a suitably translated Kronecker comb of period B = N/A.[13]

Deterministic uncertainty principle

There is also a well-known deterministic uncertainty principle that uses signal sparsity (or the number of non-zero coefficients).[14] Let ∥x∥₀ and ∥X∥₀ be the number of non-zero elements of the time and frequency sequences x₀, x₁, …, x_(N − 1) and X₀, X₁, …, X_(N − 1), respectively. Then,

_N_ ≤ ∥_x_∥₀ ⋅ ∥_X_∥₀.
As an immediate consequence of the inequality of arithmetic and geometric means, one also has $2\sqrt{N}\leq\|x\|_0+\|X\|_0$. Both uncertainty principles were shown to be tight for specifically-chosen "picket-fence" sequences (discrete impulse trains), and find practical use for signal recovery applications.[15]

DFT of real and purely imaginary signals

-   If x₀, …, x_(N − 1) are real numbers, as they often are in practical applications, then the DFT X₀, …, X_(N − 1) is even symmetric:

_x__(_n_) ∈ ℝ ∀_n_ ∈ {0, …, _N_ − 1} ⟹ _X__(_k_) = _X__( − _k_mod _N_)^(*) ∀_k_ ∈ {0, …, _N_ − 1}
, where X^(*)  denotes complex conjugation.

It follows that for even N X₀ and X_(N/2) are real-valued, and the remainder of the DFT is completely specified by just N/2 − 1 complex numbers.

-   If x₀, …, x_(N − 1) are purely imaginary numbers, then the DFT X₀, …, X_(N − 1) is odd symmetric:

_x__(_n_) ∈ _i_ℝ ∀_n_ ∈ {0, …, _N_ − 1} ⟹ _X__(_k_) =  − _X__( − _k_mod _N_)^(*) ∀_k_ ∈ {0, …, _N_ − 1}
, where X^(*)  denotes complex conjugation.


Generalized DFT (shifted and non-linear phase)

It is possible to shift the transform sampling in time and/or frequency domain by some real shifts _a_ and _b_, respectively. This is sometimes known as a GENERALIZED DFT (or GDFT), also called the SHIFTED DFT or OFFSET DFT, and has analogous properties to the ordinary DFT:

$$X_k = \sum_{n=0}^{N-1} x_n e^{-\frac{i 2 \pi}{N} (k+b) (n+a)} \quad \quad k = 0, \dots, N-1.$$

Most often, shifts of 1/2 (half a sample) are used. While the ordinary DFT corresponds to a periodic signal in both time and frequency domains, a = 1/2 produces a signal that is anti-periodic in frequency domain (X_(k + N) =  − X_(k)) and vice versa for b = 1/2. Thus, the specific case of a = b = 1/2 is known as an _odd-time odd-frequency_ discrete Fourier transform (or O² DFT). Such shifted transforms are most often used for symmetric data, to represent different boundary symmetries, and for real-symmetric data they correspond to different forms of the discrete cosine and sine transforms.

Another interesting choice is a = b =  − (N − 1)/2, which is called the CENTERED DFT (or CDFT). The centered DFT has the useful property that, when _N_ is a multiple of four, all four of its eigenvalues (see above) have equal multiplicities (Rubio and Santhanam, 2005)[16]

The term GDFT is also used for the non-linear phase extensions of DFT. Hence, GDFT method provides a generalization for constant amplitude orthogonal block transforms including linear and non-linear phase types. GDFT is a framework to improve time and frequency domain properties of the traditional DFT, e.g. auto/cross-correlations, by the addition of the properly designed phase shaping function (non-linear, in general) to the original linear phase functions (Akansu and Agirman-Tosun, 2010).[17]

The discrete Fourier transform can be viewed as a special case of the z-transform, evaluated on the unit circle in the complex plane; more general z-transforms correspond to _complex_ shifts _a_ and _b_ above.


Multidimensional DFT

The ordinary DFT transforms a one-dimensional sequence or array x_(n) that is a function of exactly one discrete variable _n_. The multidimensional DFT of a multidimensional array x_(n₁, n₂, …, n_(d)) that is a function of _d_ discrete variables n_(ℓ) = 0, 1, …, N_(ℓ) − 1 for ℓ in 1, 2, …, d is defined by:

$$X_{k_1, k_2, \dots, k_d} = \sum_{n_1=0}^{N_1-1} \left(\omega_{N_1}^{~k_1 n_1} \sum_{n_2=0}^{N_2-1} \left( \omega_{N_2}^{~k_2 n_2} \cdots \sum_{n_d=0}^{N_d-1} \omega_{N_d}^{~k_d n_d}\cdot x_{n_1, n_2, \dots, n_d} \right) \right) \, ,$$

where ω_(N_(ℓ)) = exp ( − i2π/N_(ℓ)) as above and the _d_ output indices run from k_(ℓ) = 0, 1, …, N_(ℓ) − 1. This is more compactly expressed in vector notation, where we define N = (n₁, n₂, …, n_(d)) and K = (k₁, k₂, …, k_(d)) as _d_-dimensional vectors of indices from 0 to N − 1, which we define as N − 1 = (N₁ − 1, N₂ − 1, …, N_(d) − 1):

$$X_\mathbf{k} = \sum_{\mathbf{n}=\mathbf{0}}^{\mathbf{N}-1} e^{-i 2\pi \mathbf{k} \cdot (\mathbf{n} / \mathbf{N})} x_\mathbf{n} \, ,$$

where the division N/N is defined as N/N = (n₁/N₁, …, n_(d)/N_(d)) to be performed element-wise, and the sum denotes the set of nested summations above.

The inverse of the multi-dimensional DFT is, analogous to the one-dimensional case, given by:

$$x_\mathbf{n} = \frac{1}{\prod_{\ell=1}^d N_\ell} \sum_{\mathbf{k}=\mathbf{0}}^{\mathbf{N}-1} e^{i 2\pi \mathbf{n} \cdot (\mathbf{k} / \mathbf{N})} X_\mathbf{k} \, .$$

As the one-dimensional DFT expresses the input x_(n) as a superposition of sinusoids, the multidimensional DFT expresses the input as a superposition of plane waves, or multidimensional sinusoids. The direction of oscillation in space is K/N. The amplitudes are X_(K). This decomposition is of great importance for everything from digital image processing (two-dimensional) to solving partial differential equations. The solution is broken up into plane waves.

The multidimensional DFT can be computed by the composition of a sequence of one-dimensional DFTs along each dimension. In the two-dimensional case x_(n₁, n₂) the N₁ independent DFTs of the rows (i.e., along n₂) are computed first to form a new array y_(n₁, k₂). Then the N₂ independent DFTs of _y_ along the columns (along n₁) are computed to form the final result X_(k₁, k₂). Alternatively the columns can be computed first and then the rows. The order is immaterial because the nested summations above commute.

An algorithm to compute a one-dimensional DFT is thus sufficient to efficiently compute a multidimensional DFT. This approach is known as the _row-column_ algorithm. There are also intrinsically multidimensional FFT algorithms.

The real-input multidimensional DFT

For input data x_(n₁, n₂, …, n_(d)) consisting of real numbers, the DFT outputs have a conjugate symmetry similar to the one-dimensional case above:

_X__(_k_₁, _k_₂, …, _k__(_d_)) = _X__(_N_₁ − _k_₁, _N_₂ − _k_₂, …, _N__(_d_) − _k__(_d_))^(*),

where the star again denotes complex conjugation and the ℓ-th subscript is again interpreted modulo N_(ℓ) (for ℓ = 1, 2, …, d).


Applications

The DFT has seen wide usage across a large number of fields; we only sketch a few examples below (see also the references at the end). All applications of the DFT depend crucially on the availability of a fast algorithm to compute discrete Fourier transforms and their inverses, a fast Fourier transform.

Spectral analysis

When the DFT is used for signal spectral analysis, the {x_(n)}  sequence usually represents a finite set of uniformly spaced time-samples of some signal x(t) , where t represents time. The conversion from continuous time to samples (discrete-time) changes the underlying Fourier transform of x(t) into a discrete-time Fourier transform (DTFT), which generally entails a type of distortion called aliasing. Choice of an appropriate sample-rate (see _Nyquist rate_) is the key to minimizing that distortion. Similarly, the conversion from a very long (or infinite) sequence to a manageable size entails a type of distortion called _leakage_, which is manifested as a loss of detail (a.k.a. resolution) in the DTFT. Choice of an appropriate sub-sequence length is the primary key to minimizing that effect. When the available data (and time to process it) is more than the amount needed to attain the desired frequency resolution, a standard technique is to perform multiple DFTs, for example to create a spectrogram. If the desired result is a power spectrum and noise or randomness is present in the data, averaging the magnitude components of the multiple DFTs is a useful procedure to reduce the variance of the spectrum (also called a periodogram in this context); two examples of such techniques are the Welch method and the Bartlett method; the general subject of estimating the power spectrum of a noisy signal is called spectral estimation.

A final source of distortion (or perhaps _illusion_) is the DFT itself, because it is just a discrete sampling of the DTFT, which is a function of a continuous frequency domain. That can be mitigated by increasing the resolution of the DFT. That procedure is illustrated at Sampling the DTFT.

-   The procedure is sometimes referred to as _zero-padding_, which is a particular implementation used in conjunction with the fast Fourier transform (FFT) algorithm. The inefficiency of performing multiplications and additions with zero-valued "samples" is more than offset by the inherent efficiency of the FFT.
-   As already noted, leakage imposes a limit on the inherent resolution of the DTFT. So there is a practical limit to the benefit that can be obtained from a fine-grained DFT.

Filter bank

See FFT filter banks and Sampling the DTFT.

Data compression

The field of digital signal processing relies heavily on operations in the frequency domain (i.e. on the Fourier transform). For example, several lossy image and sound compression methods employ the discrete Fourier transform: the signal is cut into short segments, each is transformed, and then the Fourier coefficients of high frequencies, which are assumed to be unnoticeable, are discarded. The decompressor computes the inverse transform based on this reduced number of Fourier coefficients. (Compression applications often use a specialized form of the DFT, the discrete cosine transform or sometimes the modified discrete cosine transform.) Some relatively recent compression algorithms, however, use wavelet transforms, which give a more uniform compromise between time and frequency domain than obtained by chopping data into segments and transforming each segment. In the case of JPEG2000, this avoids the spurious image features that appear when images are highly compressed with the original JPEG.

Partial differential equations

Discrete Fourier transforms are often used to solve partial differential equations, where again the DFT is used as an approximation for the Fourier series (which is recovered in the limit of infinite _N_). The advantage of this approach is that it expands the signal in complex exponentials e^(inx), which are eigenfunctions of differentiation: d(e^(inx))/dx = ine^(inx). Thus, in the Fourier representation, differentiation is simple—we just multiply by in. (Note, however, that the choice of n is not unique due to aliasing; for the method to be convergent, a choice similar to that in the trigonometric interpolation section above should be used.) A linear differential equation with constant coefficients is transformed into an easily solvable algebraic equation. One then uses the inverse DFT to transform the result back into the ordinary spatial representation. Such an approach is called a spectral method.

Polynomial multiplication

Suppose we wish to compute the polynomial product _c_(_x_) = _a_(_x_) · _b_(_x_). The ordinary product expression for the coefficients of _c_ involves a linear (acyclic) convolution, where indices do not "wrap around." This can be rewritten as a cyclic convolution by taking the coefficient vectors for _a_(_x_) and _b_(_x_) with constant term first, then appending zeros so that the resultant coefficient vectors A and B have dimension _d_ > deg(_a_(_x_)) + deg(_b_(_x_)). Then,

C = A * B

Where C is the vector of coefficients for _c_(_x_), and the convolution operator *  is defined so

$$c_n = \sum_{m=0}^{d-1}a_m b_{n-m\ \mathrm{mod}\ d} \qquad\qquad\qquad n=0,1\dots,d-1$$

But convolution becomes multiplication under the DFT:

ℱ(C) = ℱ(A)ℱ(B)

Here the vector product is taken elementwise. Thus the coefficients of the product polynomial _c_(_x_) are just the terms 0, ..., deg(_a_(_x_)) + deg(_b_(_x_)) of the coefficient vector

C = ℱ^( − 1)(ℱ(A)ℱ(B)).

With a fast Fourier transform, the resulting algorithm takes O (_N_ log _N_) arithmetic operations. Due to its simplicity and speed, the Cooley–Tukey FFT algorithm, which is limited to composite sizes, is often chosen for the transform operation. In this case, _d_ should be chosen as the smallest integer greater than the sum of the input polynomial degrees that is factorizable into small prime factors (e.g. 2, 3, and 5, depending upon the FFT implementation).

Multiplication of large integers

The fastest known algorithms for the multiplication of very large integers use the polynomial multiplication method outlined above. Integers can be treated as the value of a polynomial evaluated specifically at the number base, with the coefficients of the polynomial corresponding to the digits in that base (ex. 123 = 1 ⋅ 10² + 2 ⋅ 10¹ + 3 ⋅ 10⁰). After polynomial multiplication, a relatively low-complexity carry-propagation step completes the multiplication.

Convolution

When data is convolved with a function with wide support, such as for downsampling by a large sampling ratio, because of the Convolution theorem and the FFT algorithm, it may be faster to transform it, multiply pointwise by the transform of the filter and then reverse transform it. Alternatively, a good filter is obtained by simply truncating the transformed data and re-transforming the shortened data set.


Some discrete Fourier transform pairs

  $x_n = \frac{1}{N}\sum_{k=0}^{N-1}X_k  e^{i 2 \pi kn/N}$                            $X_k = \sum_{n=0}^{N-1}x_n  e^{-i 2 \pi kn/N}$                                                 Note
  ----------------------------------------------------------------------------------- ---------------------------------------------------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  x_(n)e^(i2πnℓ/N)                                                                    X_(k − ℓ)                                                                                      Frequency shift theorem
  x_(n − ℓ)                                                                           X_(k)e^( − i2πkℓ/N)                                                                            Time shift theorem
  x_(n) ∈ ℝ                                                                           X_(k) = X_(N − k)^(*)                                                                          Real DFT
  a^(n)                                                                               $\left\{ \begin{matrix}                                                                        from the geometric progression formula
                                                                                                         N & \mbox{if } a = e^{i 2 \pi k/N} \\
                                                                                                         \frac{1-a^N}{1-a \, e^{-i 2 \pi k/N} } & \mbox{otherwise}
                                                                                                      \end{matrix} \right.$
  ${N-1 \choose n}\,$                                                                 (1+e^( − i2πk/N))^(N − 1)                                                                      from the binomial theorem
  $\left\{ \begin{matrix}                                                             $\left\{ \begin{matrix}                                                                        x_(n) is a rectangular window function of _W_ points centered on _n_=0, where _W_ is an odd integer, and X_(k) is a sinc-like function (specifically, X_(k) is a Dirichlet kernel)
                          \frac{1}{W} & \mbox{if } 2n < W \mbox{ or } 2(N-n) < W \\                 1 & \mbox{if } k = 0 \\
                          0 & \mbox{otherwise}                                                      \frac{\sin\left(\frac{\pi W k}{N}\right)}
                        \end{matrix} \right.$                                                            {W \sin\left(\frac{\pi k}{N}\right)} & \mbox{otherwise}
                                                                                                            \end{matrix} \right.$
  $\sum_{j\in\mathbb{Z}} \exp\left(-\frac{\pi}{cN}\cdot(n+N\cdot j)^2\right)$         $\sqrt{cN} \cdot \sum_{j\in\mathbb{Z}} \exp\left(-\frac{\pi c}{N}\cdot(k+N\cdot j)^2\right)$   Discretization and periodic summation of the scaled Gaussian functions for c > 0. Since either c or $\frac{1}{c}$ is larger than one and thus warrants fast convergence of one of the two series, for large c you may choose to compute the frequency spectrum and convert to the time domain using the discrete Fourier transform.

  : SOME DFT PAIRS


Generalizations

Representation theory

The DFT can be interpreted as the complex-valued representation theory of the finite cyclic group. In other words, a sequence of n complex numbers can be thought of as an element of n-dimensional complex space ℂ^(n) or equivalently a function f from the finite cyclic group of order n to the complex numbers, ℤ_(n) ↦ ℂ. So f is a class function on the finite cyclic group, and thus can be expressed as a linear combination of the irreducible characters of this group, which are the roots of unity.

From this point of view, one may generalize the DFT to representation theory generally, or more narrowly to the representation theory of finite groups.

More narrowly still, one may generalize the DFT by either changing the target (taking values in a field other than the complex numbers), or the domain (a group other than a finite cyclic group), as detailed in the sequel.

Other fields

Many of the properties of the DFT only depend on the fact that $e^{-\frac{i 2 \pi}{N}}$ is a primitive root of unity, sometimes denoted ω_(N) or W_(N) (so that ω_(N)^(N) = 1). Such properties include the completeness, orthogonality, Plancherel/Parseval, periodicity, shift, convolution, and unitarity properties above, as well as many FFT algorithms. For this reason, the discrete Fourier transform can be defined by using roots of unity in fields other than the complex numbers, and such generalizations are commonly called _number-theoretic transforms_ (NTTs) in the case of finite fields. For more information, see number-theoretic transform and discrete Fourier transform (general).

Other finite groups

The standard DFT acts on a sequence _x_₀, _x_₁, …, _x__(_N_−1) of complex numbers, which can be viewed as a function {0, 1, …, _N_ − 1} → C. The multidimensional DFT acts on multidimensional sequences, which can be viewed as functions

{0, 1, …, _N_₁ − 1} × ⋯ × {0, 1, …, _N__(_d_) − 1} → ℂ.
This suggests the generalization to Fourier transforms on arbitrary finite groups, which act on functions _G_ → C where _G_ is a finite group. In this framework, the standard DFT is seen as the Fourier transform on a cyclic group, while the multidimensional DFT is a Fourier transform on a direct sum of cyclic groups.

Further, Fourier transform can be on cosets of a group.


Alternatives

There are various alternatives to the DFT for various applications, prominent among which are wavelets. The analog of the DFT is the discrete wavelet transform (DWT). From the point of view of time–frequency analysis, a key limitation of the Fourier transform is that it does not include _location_ information, only _frequency_ information, and thus has difficulty in representing transients. As wavelets have location as well as frequency, they are better able to represent location, at the expense of greater difficulty representing frequency. For details, see comparison of the discrete wavelet transform with the discrete Fourier transform.


See also

-   Companion matrix
-   DFT matrix
-   Fast Fourier transform
-   FFTPACK
-   FFTW
-   Generalizations of Pauli matrices
-   List of Fourier-related transforms
-   Multidimensional transform
-   Zak transform
-   Quantum Fourier transform


Notes


References


Further reading

-   -   -   -   esp. section 30.2: The DFT and FFT, pp. 830–838.

-   -   -   (Note that this paper has an apparent typo in its table of the eigenvalue multiplicities: the +_i_/−_i_ columns are interchanged. The correct table can be found in McClellan and Parks, 1972, and is easily confirmed numerically.)

-   -   -   -   -   -   -   -   -


External links

-   Interactive explanation of the DFT
-   Matlab tutorial on the Discrete Fourier Transformation
-   Interactive flash tutorial on the DFT
-   Mathematics of the Discrete Fourier Transform by Julius O. Smith III
-   FFTW: Fast implementation of the DFT - coded in C and under General Public License (GPL)
-   General Purpose FFT Package: Yet another fast DFT implementation in C & FORTRAN, permissive license
-   Explained: The Discrete Fourier Transform
-   Discrete Fourier Transform
-   Indexing and shifting of Discrete Fourier Transform
-   Discrete Fourier Transform Properties

cs:Fourierova transformace#Diskrétní Fourierova transformace pt:Transformada de Fourier#Transformada discreta de Fourier fi:Fourier'n muunnos#Diskreetti Fourier'n muunnos

Category:Fourier analysis Category:Digital signal processing Category:Numerical analysis Category:Discrete transforms Category:Unitary operators

[1]

[2]

[3] Cooley et al., 1969

[4] As a linear transformation on a finite-dimensional vector space, the DFT expression can also be written in terms of a DFT matrix; when scaled appropriately it becomes a unitary matrix and the _X__(_k_) can thus be viewed as coefficients of _x_ in an orthonormal basis.

[5]

[6] Time reversal for the DFT means replacing n by N − n and not n by  − n to avoid negative indices.

[7]

[8]

[9] T. G. Stockham, Jr., "High-speed convolution and correlation," in 1966 _Proc. AFIPS Spring Joint Computing Conf._ Reprinted in Digital Signal Processing, L. R. Rabiner and C. M. Rader, editors, New York: IEEE Press, 1972.

[10]

[11]

[12]

[13]

[14]

[15]

[16] Santhanam, Balu; Santhanam, Thalanayar S. "_Discrete Gauss-Hermite functions and eigenvectors of the centered discrete Fourier transform_", Proceedings of the 32nd IEEE _International Conference on Acoustics, Speech, and Signal Processing_ (ICASSP 2007, SPTM-P12.4), vol. III, pp. 1385-1388.

[17] Akansu, Ali N.; Agirman-Tosun, Handan "_Generalized Discrete Fourier Transform With Nonlinear Phase_", IEEE _Transactions on Signal Processing_, vol. 58, no. 9, pp. 4547-4556, Sept. 2010.