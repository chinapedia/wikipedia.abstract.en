Convolute}}

comparison_convolution_correlation.svg, and autocorrelation. For the operations involving function , and assuming the height of is 1.0, the value of the result at 5 different points is indicated by the shaded area below each point. Also, the symmetry of is the reason f * g and f ⋆ g are identical in this example. ]]

In mathematics (in particular, functional analysis) CONVOLUTION is a mathematical operation on two functions ( and ) to produce a third function that expresses how the shape of one is modified by the other. The term _convolution_ refers to both the result function and to the process of computing it. It is defined as the integral of the product of the two functions after one is reversed and shifted.

Some features of convolution are similar to cross-correlation: for real-valued functions, of a continuous or discrete variable, it differs from cross-correlation only in that either or is reflected about the y-axis; thus it is a cross-correlation of and , or and .Reasons for the reflection include:

-   It is necessary to implement the equivalent of the pointwise product of the Fourier transforms of and .
-   When the convolution is viewed as a moving weighted average, the weighting function, , is often specified in terms of another function, , called the impulse response of a linear time-invariant system.  For continuous functions, the cross-correlation operator is the adjoint of the convolution operator.

Convolution has applications that include probability, statistics, computer vision, natural language processing, image and signal processing, engineering, and differential equations.

The convolution can be defined for functions on Euclidean space, and other groups. For example, periodic functions, such as the discrete-time Fourier transform, can be defined on a circle and convolved by _periodic convolution_. (See row 13 at DTFT § Properties.) A _discrete convolution_ can be defined for functions on the set of integers.

Generalizations of convolution have applications in the field of numerical analysis and numerical linear algebra, and in the design and implementation of finite impulse response filters in signal processing.

Computing the inverse of the convolution operation is known as deconvolution.


Definition

The convolution of and is written , using an asterisk. It is defined as the integral of the product of the two functions after one is reversed and shifted. As such, it is a particular kind of integral transform:

An equivalent definition is (see commutativity):

(_f_ * _g_)(_t_)≜ ∫_( − ∞)^(∞)_f_(_t_ − _τ_)_g_(_τ_) _d__τ_.

While the symbol is used above, it need not represent the time domain.  But in that context, the convolution formula can be described as a weighted average of the function at the moment where the weighting is given by simply shifted by amount .  As changes, the weighting function emphasizes different parts of the input function.

For functions , supported on only (i.e., zero for negative arguments), the integration limits can be truncated, resulting in:

(_f_ * _g_)(_t_) = ∫₀^(_t_)_f_(_τ_)_g_(_t_ − _τ_) _d__τ_  for _f_, _g_ : [0, ∞) → ℝ.

For the multi-dimensional formulation of convolution, see _domain of definition_ (below).

Notation

A common engineering convention is:[1]

$$f(t) * g(t) \, \triangleq\ \underbrace{\int_{-\infty}^\infty f(\tau) g(t - \tau)\, d\tau}_{(f * g )(t)},$$

which has to be interpreted carefully to avoid confusion.  For instance, is equivalent to ,  but is in fact equivalent to .[2]

Derivations

Convolution describes the output (in terms of the input) of an important class of operations known as _linear time-invariant_ (LTI). See LTI system theory for a derivation of convolution as the result of LTI constraints. In terms of the Fourier transforms of the input and output of an LTI operation, no new frequency components are created. The existing ones are only modified (amplitude and/or phase). In other words, the output transform is the pointwise product of the input transform with a third transform (known as a transfer function). See Convolution theorem for a derivation of that property of convolution. Conversely, convolution can be derived as the inverse Fourier transform of the pointwise product of two Fourier transforms.


Visual explanation

+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Visual explanations of convolution                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
+=========================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================+
| 1.  Express each function in terms of a dummy variable τ.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| 2.  Reflect one of the functions: g(τ)→g( − τ).                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| 3.  Add a time-offset, , which allows g(t − τ) to slide along the τ-axis.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| 4.  Start at and slide it all the way to . Wherever the two functions intersect, find the integral of their product. In other words, compute a sliding, weighted-sum of function f(τ), where the weighting function is g( − τ).                                                                                                                                                                                                                                                                                                                                                                                                                                         |
|                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
|     The resulting waveform (not shown here) is the convolution of functions and .                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
|                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
|     If is a unit impulse, the result of this process is simply . Formally:                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
|                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| ∫_( − ∞)^(∞)_δ_(_τ_)_g_(_t_ − _τ_) _d__τ_ = _g_(_t_)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|     In this example, the red-colored "pulse",  g(τ), is an even function ( g( − τ) = g(τ) ), so convolution is equivalent to correlation. A snapshot of this "movie" shows functions g(t − τ) and f(τ) (in blue) for some value of parameter t, which is arbitrarily defined as the distance from the τ = 0 axis to the center of the red pulse. The amount of yellow is the area of the product f(τ) ⋅ g(t − τ), computed by the convolution/correlation integral. The movie is created by continuously changing t and recomputing the integral. The result (shown in black) is a function of t, but is plotted on the same axis as τ, for convenience and comparison. |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|     In this depiction, f(τ) could represent the response of an RC circuit to a narrow pulse that occurs at τ = 0. In other words, if g(τ) = δ(τ), the result of convolution is just f(t). But when g(τ) is the wider pulse (in red), the response is a "smeared" version of f(t). It begins at t =  − 0.5, because we defined t as the distance from the τ = 0 axis to the center of the wide pulse (instead of the leading edge).                                                                                                                                                                                                                                      |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+


Historical developments

One of the earliest uses of the convolution integral appeared in D'Alembert's derivation of Taylor's theorem in _Recherches sur différents points importants du système du monde,_ published in 1754.[3]

Also, an expression of the type:

∫_f_(_u_) ⋅ _g_(_x_ − _u_) _d__u_

is used by Sylvestre François Lacroix on page 505 of his book entitled _Treatise on differences and series_, which is the last of 3 volumes of the encyclopedic series: _Traité du calcul différentiel et du calcul intégral_, Chez Courcier, Paris, 1797–1800.[4] Soon thereafter, convolution operations appear in the works of Pierre Simon Laplace, Jean-Baptiste Joseph Fourier, Siméon Denis Poisson, and others. The term itself did not come into wide use until the 1950s or 60s. Prior to that it was sometimes known as _Faltung_ (which means _folding_ in German), _composition product_, _superposition integral_, and _Carson's integral_.[5] Yet it appears as early as 1903, though the definition is rather unfamiliar in older uses.[6][7]

The operation:

∫₀^(_t_)_φ_(_s_)_ψ_(_t_ − _s_) _d__s_,  0 ≤ _t_ < ∞,

is a particular case of composition products considered by the Italian mathematician Vito Volterra in 1913.[8]


Circular convolution

When a function is periodic, with period , then for functions, , such that exists, the convolution is also periodic and identical to:

$$(f * g_T)(t) \equiv \int_{t_0}^{t_0+T} \left[\sum_{k=-\infty}^\infty f(\tau + kT)\right] g_T(t - \tau)\, d\tau,$$

where is an arbitrary choice. The summation is called a periodic summation of the function .

When is a periodic summation of another function, , then is known as a _circular_ or _cyclic_ convolution of and .

And if the periodic summation above is replaced by , the operation is called a _periodic_ convolution of and .


Discrete convolution

For complex-valued functions defined on the set Z of integers, the _discrete convolution_ of and is given by:[9]

or equivalently (see commutativity) by:

$$(f * g)[n] = \sum_{m=-\infty}^\infty f[n-m] g[m].$$

The convolution of two finite sequences is defined by extending the sequences to finitely supported functions on the set of integers. When the sequences are the coefficients of two polynomials, then the coefficients of the ordinary product of the two polynomials are the convolution of the original two sequences. This is known as the Cauchy product of the coefficients of the sequences.

Thus when has finite support in the set { − M,  − M + 1, …, M − 1, M} (representing, for instance, a finite impulse response), a finite summation may be used:[10]

$$(f* g)[n]=\sum_{m=-M}^M f[n-m]g[m].$$

Circular discrete convolution

When a function is periodic, with period , then for functions, , such that exists, the convolution is also periodic and identical to:

$$(f * g_N)[n] \equiv \sum_{m=0}^{N-1} \left(\sum_{k=-\infty}^\infty {f}[m+kN] \right) g_N[n-m].$$

The summation on is called a periodic summation of the function .

If is a periodic summation of another function, , then is known as a circular convolution of and .

When the non-zero durations of both and are limited to the interval ,  reduces to these common forms:

] \triangleq (f *_{_N} g)[n] \end{align}|}}

The notation () for _cyclic convolution_ denotes convolution over the cyclic group of integers modulo {{math.

Circular convolution arises most often in the context of fast convolution with a fast Fourier transform (FFT) algorithm.

Fast convolution algorithms

In many situations, discrete convolutions can be converted to circular convolutions so that fast transforms with a convolution property can be used to implement the computation. For example, convolution of digit sequences is the kernel operation in multiplication of multi-digit numbers, which can therefore be efficiently implemented with transform techniques (; ).

requires arithmetic operations per output value and operations for outputs. That can be significantly reduced with any of several fast algorithms. Digital signal processing and other applications typically use fast convolution algorithms to reduce the cost of the convolution to O( log ) complexity.

The most common fast convolution algorithms use fast Fourier transform (FFT) algorithms via the circular convolution theorem. Specifically, the circular convolution of two finite-length sequences is found by taking an FFT of each sequence, multiplying pointwise, and then performing an inverse FFT. Convolutions of the type defined above are then efficiently implemented using that technique in conjunction with zero-extension and/or discarding portions of the output. Other fast convolution algorithms, such as the Schönhage–Strassen algorithm or the Mersenne transform,[11] use fast Fourier transforms in other rings.

If one sequence is much longer than the other, zero-extension of the shorter sequence and fast circular convolution is not the most computationally efficient method available.[12] Instead, decomposing the longer sequence into blocks and convolving each block allows for faster algorithms such as the Overlap–save method and Overlap–add method.[13] A hybrid convolution method that combines block and FIR algorithms allows for a zero input-output latency that is useful for real-time convolution computations.[14]


Domain of definition

The convolution of two complex-valued functions on is itself a complex-valued function on , defined by:

(_f_ * _g_)(_x_) = ∫_(R^(_d_))_f_(_y_)_g_(_x_ − _y_) _d__y_ = ∫_(R^(_d_))_f_(_x_ − _y_)_g_(_y_) _d__y_,

is well-defined only if and decay sufficiently rapidly at infinity in order for the integral to exist. Conditions for the existence of the convolution may be tricky, since a blow-up in at infinity can be easily offset by sufficiently rapid decay in . The question of existence thus may involve different conditions on and :

Compactly supported functions

If and are compactly supported continuous functions, then their convolution exists, and is also compactly supported and continuous . More generally, if either function (say ) is compactly supported and the other is locally integrable, then the convolution is well-defined and continuous.

Convolution of and is also well defined when both functions are locally square integrable on and supported on an interval of the form (or both supported on ).

Integrable functions

The convolution of and exists if and are both Lebesgue integrable functions in [[Lp_space|, this shows that is a Banach algebra under the convolution (and equality of the two sides holds if and are non-negative almost everywhere).

More generally, Young's inequality implies that the convolution is a continuous bilinear map between suitable spaces. Specifically, if satisfy:

$$\frac{1}{p}+\frac{1}{q}=\frac{1}{r}+1,$$

then

‖_f_*_g_‖_(_r_) ≤ ‖_f_‖_(_p_)‖_g_‖_(_q_), _f_ ∈ ℒ^(_p_), _g_ ∈ ℒ^(_q_),

so that the convolution is a continuous bilinear mapping from to . The Young inequality for convolution is also true in other contexts (circle group, convolution on ). The preceding inequality is not sharp on the real line: when , there exists a constant such that:

‖_f_*_g_‖_(_r_) ≤ _B__(_p_, _q_)‖_f_‖_(_p_)‖_g_‖_(_q_), _f_ ∈ ℒ^(_p_), _g_ ∈ ℒ^(_q_).

The optimal value of was discovered in 1975.[15]

A stronger estimate is true provided :

∥_f_ * _g_∥_(_r_) ≤ _C__(_p_, _q_)∥_f_∥_(_p_)∥_g_∥_(_q_, _w_)
where ∥g∥_(q, w) is the [[Lp_space#Weak_Lp|weak {f}(y) g( x - y) \, dy.

The operator _T_ is compact. A direct calculation shows that its adjoint ''T* '' is convolution with

_ḡ_( − _y_).

By the commutativity property cited above, _T_ is normal: _T_* _T_ = _TT_* . Also, _T_ commutes with the translation operators. Consider the family _S_ of operators consisting of all such convolutions and the translation operators. Then _S_ is a commuting family of normal operators. According to spectral theory, there exists an orthonormal basis {_h_(k)_} that simultaneously diagonalizes _S_. This characterizes convolutions on the circle. Specifically, we have

_h__(_k_)(_x_) = _e_^(_i__k__x_), _k_ ∈ ℤ, 

which are precisely the characters of T. Each convolution is a compact multiplication operator in this basis. This can be viewed as a version of the convolution theorem discussed above.

A discrete example is a finite cyclic group of order _n_. Convolution operators are here represented by circulant matrices, and can be diagonalized by the discrete Fourier transform.

A similar result holds for compact groups (not necessarily abelian): the matrix coefficients of finite-dimensional unitary representations form an orthonormal basis in _L_² by the Peter–Weyl theorem, and an analog of the convolution theorem continues to hold, along with many other aspects of harmonic analysis that depend on the Fourier transform.


Convolution of measures

Let _G_ be a (multiplicatively written) topological group. If μ and ν are finite Borel measures on _G_, then their convolution μ∗ν is defined as the pushforward measure of the group action and can be written as
(_μ_ * _ν_)(_E_) = ∬1_(_E_)(_x__y_) _d__μ_(_x_) _d__ν_(_y_)

for each measurable subset _E_ of _G_. The convolution is also a finite measure, whose total variation satisfies

∥_μ_ * _ν_∥ ≤ ∥_μ_∥∥_ν_∥.

In the case when _G_ is locally compact with (left-)Haar measure λ, and μ and ν are absolutely continuous with respect to a λ, so that each has a density function, then the convolution μ∗ν is also absolutely continuous, and its density function is just the convolution of the two separate density functions.

If μ and ν are probability measures on the topological group then the convolution μ∗ν is the probability distribution of the sum _X_ + _Y_ of two independent random variables _X_ and _Y_ whose respective distributions are μ and ν.


Bialgebras

Let (_X_, Δ, ∇, _ε_, _η_) be a bialgebra with comultiplication Δ, multiplication ∇, unit η, and counit ε. The convolution is a product defined on the endomorphism algebra End(_X_) as follows. Let φ, ψ ∈ End(_X_), that is, φ,ψ : _X_ → _X_ are functions that respect all algebraic structure of _X_, then the convolution φ∗ψ is defined as the composition

$$X \xrightarrow{\Delta} X\otimes X \xrightarrow{\phi\otimes\psi} X\otimes X \xrightarrow{\nabla} X.$$

The convolution appears notably in the definition of Hopf algebras . A bialgebra is a Hopf algebra if and only if it has an antipode: an endomorphism _S_ such that

_S_ * id_(_X_) = id_(_X_) * _S_ = _η_ ∘ _ε_.


Applications

Halftone,_Gaussian_Blur.jpg can be used to obtain a smooth grayscale digital image of a halftone print.]] Convolution and related operations are found in many applications in science, engineering and mathematics.

-   In image processing



        In digital image processing convolutional filtering plays an important role in many important algorithms in edge detection and related processes.
        In optics, an out-of-focus photograph is a convolution of the sharp image with a lens function. The photographic term for this is bokeh.
        In image processing applications such as adding blurring.

-   In digital data processing



        In analytical chemistry, Savitzky–Golay smoothing filters are used for the analysis of spectroscopic data. They can improve signal-to-noise ratio with minimal distortion of the spectra.
        In statistics, a weighted moving average is a convolution.

-   In acoustics, reverberation is the convolution of the original sound with echoes from objects surrounding the sound source.



        In digital signal processing, convolution is used to map the impulse response of a real room on a digital audio signal.
        In electronic music convolution is the imposition of a spectral or rhythmic structure on a sound. Often this envelope or structure is taken from another sound. The convolution of two signals is the filtering of one through the other.[16]

-   In electrical engineering, the convolution of one function (the input signal) with a second function (the impulse response) gives the output of a linear time-invariant system (LTI). At any given moment, the output is an accumulated effect of all the prior values of the input function, with the most recent values typically having the most influence (expressed as a multiplicative factor). The impulse response function provides that factor as a function of the elapsed time since each input value occurred.
-   In physics, wherever there is a linear system with a "superposition principle", a convolution operation makes an appearance. For instance, in spectroscopy line broadening due to the Doppler effect on its own gives a Gaussian spectral line shape and collision broadening alone gives a Lorentzian line shape. When both effects are operative, the line shape is a convolution of Gaussian and Lorentzian, a Voigt function.



        In time-resolved fluorescence spectroscopy, the excitation signal can be treated as a chain of delta pulses, and the measured fluorescence is a sum of exponential decays from each delta pulse.
        In computational fluid dynamics, the large eddy simulation (LES) turbulence model uses the convolution operation to lower the range of length scales necessary in computation thereby reducing computational cost.

-   In probability theory, the probability distribution of the sum of two independent random variables is the convolution of their individual distributions.



        In kernel density estimation, a distribution is estimated from sample points by convolution with a kernel, such as an isotropic Gaussian. .

-   In radiotherapy treatment planning systems, most part of all modern codes of calculation applies a convolution-superposition algorithm.
-   Convolutional neural networks apply multiple cascaded convolution kernels with applications in machine vision and artificial intelligence
-   In structural reliability, the reliability index can be defined based on the convolution theorem.



        The definition of reliability index for limit state functions with nonnormal distributions can be established corresponding to the joint distribution function. In fact, the joint distribution function can be obtained using the convolution theory. .


See also

-   Analog signal processing
-   Circulant matrix
-   Convolution for optical broad-beam responses in scattering media
-   Convolution power
-   Dirichlet convolution
-   Generalized signal averaging
-   Jan Mikusinski
-   List of convolutions of probability distributions
-   LTI system theory#Impulse response and convolution
-   Multidimensional discrete convolution
-   Scaled correlation
-   Titchmarsh convolution theorem
-   Toeplitz matrix (convolutions can be considered a Toeplitz matrix operation where each row is a shifted copy of the convolution kernel)


Notes


References


Further reading

-   .

-   -   -   Dominguez-Torres, Alejandro (Nov 2, 2010). "Origin and history of convolution". 41 pgs. http://www.slideshare.net/Alexdfar/origin-adn-history-of-convolution. Cranfield, Bedford MK43 OAL, UK. Retrieved Mar 13, 2013.
-   -   -   -   .

-   .

-   .

-   .

-   .

-   -   .

-   .

-   .

-   .

-   .

-   -   .

-   .


External links

-   Earliest Uses: The entry on Convolution has some historical information.
-   Convolution, on The Data Analysis BriefBook
-   http://www.jhu.edu/~signals/convolve/index.html Visual convolution Java Applet
-   http://www.jhu.edu/~signals/discreteconv2/index.html Visual convolution Java Applet for discrete-time functions
-   Lectures on Image Processing: A collection of 18 lectures in pdf format from Vanderbilt University. Lecture 7 is on 2-D convolution., by Alan Peters
-   * https://archive.org/details/Lectures_on_Image_Processing
-   Convolution Kernel Mask Operation Interactive tutorial
-   Convolution at MathWorld
-   Freeverb3 Impulse Response Processor: Opensource zero latency impulse response processor with VST plugins
-   Stanford University CS 178 interactive Flash demo showing how spatial convolution works.
-   A video lecture on the subject of convolution given by Salman Khan
-   Example of FFT convolution for pattern-recognition (image processing)

Category:Functional analysis Category:Image processing Category:Binary operations Category:Fourier analysis Category:Bilinear operators Category:Feature detection (computer vision)

[1]

[2]

[3] Dominguez-Torres, p 2

[4] Dominguez-Torres, p 4

[5]

[6]

[7]

[8] According to [Lothar von Wolfersdorf (2000), "Einige Klassen quadratischer Integralgleichungen", _Sitzungsberichte der Sächsischen Akademie der Wissenschaften zu Leipzig_, _Mathematisch-naturwissenschaftliche Klasse_, volume 128, number 2, 6–7], the source is Volterra, Vito (1913), "Leçons sur les fonctions de linges". Gauthier-Villars, Paris 1913.

[9]

[10]

[11]

[12]

[13]

[14]

[15] Beckner, William (1975), "Inequalities in Fourier analysis", Ann. of Math. (2) 102: 159–182. Independently, Brascamp, Herm J. and Lieb, Elliott H. (1976), "Best constants in Young's inequality, its converse, and its generalization to more than three functions", Advances in Math. 20: 151–173. See Brascamp–Lieb inequality

[16] Zölzer, Udo, ed. (2002). _DAFX:Digital Audio Effects_, p.48–49. .