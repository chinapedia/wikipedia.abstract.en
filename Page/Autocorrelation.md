Acf_new.svg function. Below: The sine function revealed in a correlogram produced by autocorrelation.]] Comparison_convolution_correlation.svg, cross-correlation and autocorrelation.]]

AUTOCORRELATION, also known as SERIAL CORRELATION, is the correlation of a signal with a delayed copy of itself as a function of delay. Informally, it is the similarity between observations as a function of the time lag between them. The analysis of autocorrelation is a mathematical tool for finding repeating patterns, such as the presence of a periodic signal obscured by noise, or identifying the missing fundamental frequency in a signal implied by its harmonic frequencies. It is often used in signal processing for analyzing functions or series of values, such as time domain signals.

Different fields of study define autocorrelation differently, and not all of these definitions are equivalent. In some fields, the term is used interchangeably with autocovariance.

Unit root processes, trend stationary processes, autoregressive processes, and moving average processes are specific forms of processes with autocorrelation.


Auto-correlation of stochastic processes

In statistics, the autocorrelation of a real or complex random process is the Pearson correlation between values of the process at different times, as a function of the two times or of the time lag . Let {X_(t)} be a random process, and t be any point in time (t may be an integer for a discrete-time process or a real number for a continuous-time process). Then X_(t) is the value (or realization) produced by a given run of the process at time t. Suppose that the process has mean μ_(t) and variance σ_(t)² at time t, for each t. Then the definition of the AUTO-CORRELATION FUNCTION between times t₁ and t₂ is[1][2]

|cellpadding= 6 |border colour = #0073CF |background colour=#F5FFFA}}

where E  is the expected value operator and the bar represents complex conjugation. Note that the expectation may be not well defined.

Subtracting the mean before multiplication yields the AUTO-COVARIANCE FUNCTION between times t₁ and t₂:[3][4]

|}} |cellpadding= 6 |border colour = #0073CF |background colour=#F5FFFA}}

Note that this expression is not well-defined for all-time series or processes, because the mean may not exist, or the variance may be zero (for a constant process) or infinite (for processes with distribution lacking well-behaved moments, such as certain types of power law).

Definition for wide-sense stationary stochastic process

If {X_(t)} is a wide-sense stationary process then the mean μ and the variance σ² are time-independent, and further the autocovariance function depends only on the lag between t₁ and t₂: the autocovariance depends only on the time-distance between the pair of values but not on their position in time. This further implies that the autocovariance and auto-correlation can be expressed as a function of the time-lag, and that this would be an even function of the lag τ = t₂ − t₁. This gives the more familiar forms for the AUTO-CORRELATION FUNCTION[5]

|cellpadding= 6 |border colour = #0073CF |background colour=#F5FFFA}}

and the AUTO-COVARIANCE FUNCTION:

|cellpadding= 6 |border colour = #0073CF |background colour=#F5FFFA}}

Normalization

It is common practice in some disciplines (e.g. statistics and time series analysis) to normalize the autocovariance function to get a time-dependent Pearson correlation coefficient. However, in other disciplines (e.g. engineering) the normalization is usually dropped and the terms "autocorrelation" and "autocovariance" are used interchangeably.

The definition of the auto-correlation coefficient of a stochastic process is[6]

$$\rho_{XX}(t_1,t_2) = \frac{\operatorname{K}_{XX}(t_1,t_2)}{\sigma_{t_1}\sigma_{t_2}} = \frac{\operatorname{E}[(X_{t_1} - \mu_{t_1})\overline{(X_{t_2} - \mu_{t_2})}]}{\sigma_{t_1}\sigma_{t_2}}$$
.

If the function ρ_(XX) is well-defined, its value must lie in the range [ − 1, 1], with 1 indicating perfect correlation and −1 indicating perfect anti-correlation.

For a weak-sense stationarity, wide-sense stationarity (WSS) process, the definition is

$$\rho_{XX}(\tau) = \frac{\operatorname{K}_{XX}(\tau)}{\sigma^2} = \frac{\operatorname{E}[(X_t - \mu)\overline{(X_{t+\tau} - \mu)}]}{\sigma^2}$$

where

K_(_X__X_)(0) = _σ_²
.

The normalization is important both because the interpretation of the autocorrelation as a correlation provides a scale-free measure of the strength of statistical dependence, and because the normalization has an effect on the statistical properties of the estimated autocorrelations.

Properties

Symmetry property

The fact that the auto-correlation function R_(XX) this is an even function can be stated as[7]

$$\operatorname{R}_{XX}(t_1,t_2) = \overline{\operatorname{R}_{XX}(t_2,t_1)}$$
Respectively for WSS a process:[8]

$$\operatorname{R}_{XX}(\tau) = \overline{\operatorname{R}_{XX}(-\tau)}$$
.

Maximum at zero

For a WSS process:[9]

|R_(_X__X_)(_τ_)| ≤ R_(_X__X_)(0)
Notice that R_(XX)(0) is always real.

Cauchy–Schwarz inequality

The Cauchy–Schwarz inequality, inequality for stochastic processes:[10]

|R_(_X__X_)(_t_₁,_t_₂)|² ≤ E [|_X__(_t_₁)|²]E [|_X__(_t_₂)|²]

Autocorrelation of white noise

The autocorrelation of a continuous-time white noise signal will have a strong peak (represented by a Dirac delta function) at τ = 0 and will be exactly 0 for all other τ.

Wiener–Khinchin theorem

The Wiener–Khinchin theorem relates the autocorrelation function R_(XX) to the power spectral density S_(XX) via the Fourier transform:

$$\operatorname{R}_{XX}(\tau) = \int_{-\infty}^\infty S_{XX}(f) e^{i 2 \pi f \tau} \, {\rm d}f$$

$$S_{XX}(f) = \int_{-\infty}^\infty \operatorname{R}_{XX}(\tau) e^{- i 2 \pi f \tau} \, {\rm d}\tau$$
.

For real-valued functions, the symmetric autocorrelation function has a real symmetric transform, so the Wiener–Khinchin theorem can be re-expressed in terms of real cosines only:

$$\operatorname{R}_{XX}(\tau) = \int_{-\infty}^\infty S_{XX}(f) \cos(2 \pi f \tau) \, {\rm d}f$$

$$S_{XX}(f) = \int_{-\infty}^\infty \operatorname{R}_{XX}(\tau) \cos(2 \pi f \tau) \, {\rm d}\tau$$
.


Auto-correlation of random vectors

Definition

For a random vector $\mathbf{X} = (X_1,\ldots,X_n)^{\rm T}$ containing random elements whose expected value and variance exist, the AUTO-CORRELATION MATRIX is defined by

|cellpadding= 6 |border |border colour = #0073CF |background colour=#F5FFFA}}

and has dimensions n × n. If Z is a complex random vector, the autocorrelation is instead defined by

$$\operatorname{R}_{\mathbf{Z}\mathbf{Z}} \triangleq\ \operatorname{E}[\mathbf{Z} \mathbf{Z}^{\rm H}]$$
.

Example

For example, if $\mathbf{X} = \left( X_1,X_2,X_3 \right)^{\rm T}$ is a random vector, then R_(XX) is a 3 × 3 matrix whose (i, j)-th entry is E [X_(i)X_(j)].


Auto-correlation of deterministic signals

In signal processing, the above definition is often used without the normalization, that is, without subtracting the mean and dividing by the variance. When the autocorrelation function is normalized by mean and variance, it is sometimes referred to as the AUTOCORRELATION COEFFICIENT[11] or autocovariance function.

Auto-correlation of continuous-time signal

Given a signal f(t), the continuous autocorrelation R_(ff)(τ) is most often defined as the continuous cross-correlation integral of f(t) with itself, at lag τ.[12]

where $\overline{f(t)}$ represents the complex conjugate of f(t). Note that the parameter t in the integral is a dummy variable and is only necessary to calculate the integral. It has no specific meaning.

Auto-correlation of discrete-time signal

The discrete autocorrelation R at lag ℓ for a discrete-time signal y(n) is

The above definitions work for signals that are square integrable, or square summable, that is, of finite energy. Signals that "last forever" are treated instead as random processes, in which case different definitions are needed, based on expected values. For wide-sense-stationary random processes, the autocorrelations are defined as

$$R_{ff}(\tau) = \operatorname{E}\left[f(t)\overline{f(t-\tau)}\right]$$

$$R_{yy}(\ell) = \operatorname{E}\left[y(n)\,\overline{y(n-\ell)}\right].$$

For processes that are not stationary, these will also be functions of t, or n.

For processes that are also ergodic, the expectation can be replaced by the limit of a time average. The autocorrelation of an ergodic process is sometimes defined as or equated to[13]

$$R_{ff}(\tau) = \lim_{T \rightarrow \infty} \frac 1 T \int_0^T f(t+\tau)\overline{f(t)}\, {\rm d}t$$

$$R_{yy}(\ell) = \lim_{N \rightarrow \infty} \frac 1 N \sum_{n=0}^{N-1} y(n)\,\overline{y(n-\ell)}.$$

These definitions have the advantage that they give sensible well-defined single-parameter results for periodic functions, even when those functions are not the output of stationary ergodic processes.

Alternatively, signals that _last forever_ can be treated by a short-time autocorrelation function analysis, using finite time integrals. (See short-time Fourier transform for a related process.)

Definition for periodic signals

If f is a continuous periodic functions of period T, the integration from  − ∞ to ∞ is replaced by integration over any interval [t₀, t₀ + T] of length T:

$$R_{ff}(\tau) \triangleq \int_{t_0}^{t_0+T} f(t+\tau) \overline{f(t)} \,dt$$

which is equivalent to

$$R_{ff}(\tau) \triangleq \int_{t_0}^{t_0+T} f(t) \overline{f(t-\tau)} \,dt$$

Properties

In the following, we will describe properties of one-dimensional autocorrelations only, since most properties are easily transferred from the one-dimensional case to the multi-dimensional cases. These properties hold for wide-sense stationary processes.[14]

-   A fundamental property of the autocorrelation is symmetry, R_(ff)(τ) = R_(ff)( − τ), which is easy to prove from the definition. In the continuous case,

    the autocorrelation is an even function

_R__(_f__f_)( − _τ_) = _R__(_f__f_)(_τ_) 
when f is a real function,

    and the autocorrelation is a Hermitian function

_R__(_f__f_)( − _τ_) = _R__(_f__f_)^(*)(_τ_) 
when f is a complex function.

-   The continuous autocorrelation function reaches its peak at the origin, where it takes a real value, i.e. for any delay τ, |R_(ff)(τ)| ≤ R_(ff)(0).[15] This is a consequence of the rearrangement inequality. The same result holds in the discrete case.
-   The autocorrelation of a periodic function is, itself, periodic with the same period.
-   The autocorrelation of the sum of two completely uncorrelated functions (the cross-correlation is zero for all τ) is the sum of the autocorrelations of each function separately.
-   Since autocorrelation is a specific type of cross-correlation, it maintains all the properties of cross-correlation.
-   By using the symbol * to represent convolution and g_( − 1) is a function which manipulates the function f and is defined as g_( − 1)(f)(t) = f( − t), the definition for R_(ff)(τ) may be written as:

$$R_{ff}(\tau) = (f * g_{-1}(\overline{f}))(\tau)$$


Multi-dimensional autocorrelation

Multi-dimensional autocorrelation is defined similarly. For example, in three dimensions the autocorrelation of a square-summable discrete signal would be

_R_(_j_, _k_, ℓ) = ∑_(_n_, _q_, _r_)_x__(_n_, _q_, _r_) _x__(_n_ − _j_, _q_ − _k_, _r_ − ℓ)
.

When mean values are subtracted from signals before computing an autocorrelation function, the resulting function is usually called an auto-covariance function.


Efficient computation

For data expressed as a discrete sequence, it is frequently necessary to compute the autocorrelation with high computational efficiency. A brute force method based on the signal processing definition $R_{xx}(j) = \sum_n x_n\,\overline{x}_{n-j}$ can be used when the signal size is small. For example, to calculate the autocorrelation of the real signal sequence x = (2, 3,  − 1) (i.e. x₀ = 2, x₁ = 3, x₂ =  − 1, and x_(i) = 0 for all other values of ) by hand, we first recognize that the definition just given is same as the "usual" multiplication, but with right shifts, where each vertical addition gives the autocorrelation for particular lag values:

$$\begin{array}{rrrrrr}
       & 2 & 3 & -1 \\
\times & 2 & 3 & -1 \\
\hline
       &-2 &-3 & 1 \\
       &   & 6 & 9 & -3 \\
     + &   &   & 4 & 6 & -2 \\
\hline
       & -2 & 3 &14 & 3 & -2
\end{array}$$

Thus the required autocorrelation sequence is R_(xx) = ( − 2, 3, 14, 3,  − 2), where R_(xx)(0) = 14, R_(xx)( − 1) = R_(xx)(1) = 3, and R_(xx)( − 2) = R_(xx)(2) =  − 2, the autocorrelation for other lag values being zero. In this calculation we do not perform the carry-over operation during addition as is usual in normal multiplication. Note that we can halve the number of operations required by exploiting the inherent symmetry of the autocorrelation. If the signal happens to be periodic, i.e. x = (…, 2, 3,  − 1, 2, 3,  − 1, …), then we get a circular autocorrelation (similar to circular convolution) where the left and right tails of the previous autocorrelation sequence will overlap and give R_(xx) = (…, 14, 1, 1, 14, 1, 1, …) which has the same period as the signal sequence x. The procedure can be regarded as an application of the convolution property of z-transform of a discrete signal.

While the brute force algorithm is order , several efficient algorithms exist which can compute the autocorrelation in order . For example, the Wiener–Khinchin theorem allows computing the autocorrelation from the raw data with two fast Fourier transforms (FFT):[16]

$$\begin{align}
F_R(f) &= \operatorname{FFT}[X(t)] \\
S(f) &= F_R(f) F^*_R(f) \\
R(\tau) &= \operatorname{IFFT}[S(f)]
\end{align}$$

where IFFT denotes the inverse fast Fourier transform. The asterisk denotes complex conjugate.

Alternatively, a multiple correlation can be performed by using brute force calculation for low values, and then progressively binning the data with a logarithmic density to compute higher values, resulting in the same efficiency, but with lower memory requirements.[17][18]


Estimation

For a discrete process with known mean and variance for which we observe n observations {X₁, X₂, …, X_(n)}, an estimate of the autocorrelation may be obtained as

$$\hat{R}(k)=\frac{1}{(n-k) \sigma^2} \sum_{t=1}^{n-k} (X_t-\mu)(X_{t+k}-\mu)$$

for any positive integer k < n. When the true mean μ and variance σ² are known, this estimate is UNBIASED. If the true mean and variance of the process are not known there are a several possibilities:

-   If μ and σ² are replaced by the standard formulae for sample mean and sample variance, then this is a BIASED ESTIMATE.
-   A periodogram-based estimate replaces n − k in the above formula with n. This estimate is always biased; however, it usually has a smaller mean squared error.[19][20]
-   Other possibilities derive from treating the two portions of data {X₁, X₂, …, X_(n − k)} and {X_(k + 1), X_(k + 2), …, X_(n)} separately and calculating separate sample means and/or sample variances for use in defining the estimate.

The advantage of estimates of the last type is that the set of estimated autocorrelations, as a function of k, then form a function which is a valid autocorrelation in the sense that it is possible to define a theoretical process having exactly that autocorrelation. Other estimates can suffer from the problem that, if they are used to calculate the variance of a linear combination of the X's, the variance calculated may turn out to be negative.


Regression analysis

In regression analysis using time series data, autocorrelation in a variable of interest is typically modeled either with an autoregressive model (AR), a moving average model (MA), their combination as an autoregressive-moving-average model (ARMA), or an extension of the latter called an autoregressive integrated moving average model (ARIMA). With multiple interrelated data series, vector autoregression (VAR) or its extensions are used.

In ordinary least squares (OLS), the adequacy of a model specification can be checked in part by establishing whether there is autocorrelation of the regression residuals. Problematic autocorrelation of the errors, which themselves are unobserved, can generally be detected because it produces autocorrelation in the observable residuals. (Errors are also known as "error terms" in econometrics.) Autocorrelation of the errors violates the ordinary least squares assumption that the error terms are uncorrelated, meaning that the Gauss Markov theorem does not apply, and that OLS estimators are no longer the Best Linear Unbiased Estimators (BLUE). While it does not bias the OLS coefficient estimates, the standard errors tend to be underestimated (and the t-scores overestimated) when the autocorrelations of the errors at low lags are positive.

The traditional test for the presence of first-order autocorrelation is the Durbin–Watson statistic or, if the explanatory variables include a lagged dependent variable, Durbin's h statistic. The Durbin-Watson can be linearly mapped however to the Pearson correlation between values and their lags.[21] A more flexible test, covering autocorrelation of higher orders and applicable whether or not the regressors include lags of the dependent variable, is the Breusch–Godfrey test. This involves an auxiliary regression, wherein the residuals obtained from estimating the model of interest are regressed on (a) the original regressors and (b) _k_ lags of the residuals, where 'k' is the order of the test. The simplest version of the test statistic from this auxiliary regression is _TR_², where _T_ is the sample size and _R_² is the coefficient of determination. Under the null hypothesis of no autocorrelation, this statistic is asymptotically distributed as χ² with _k_ degrees of freedom.

Responses to nonzero autocorrelation include generalized least squares and the Newey–West HAC estimator (Heteroskedasticity and Autocorrelation Consistent).[22]

In the estimation of a moving average model (MA), the autocorrelation function is used to determine the appropriate number of lagged error terms to be included. This is based on the fact that for an MA process of order _q_, we have R(τ) ≠ 0, for τ = 0, 1, …, q, and R(τ) = 0, for τ > q.


Applications

-   Autocorrelation analysis is used heavily in fluorescence correlation spectroscopy.
-   Another application of autocorrelation is the measurement of optical spectra and the measurement of very-short-duration light pulses produced by lasers, both using optical autocorrelators.
-   Autocorrelation is used to analyze dynamic light scattering data, which notably enables determination of the particle size distributions of nanometer-sized particles or micelles suspended in a fluid. A laser shining into the mixture produces a speckle pattern that results from the motion of the particles. Autocorrelation of the signal can be analyzed in terms of the diffusion of the particles. From this, knowing the viscosity of the fluid, the sizes of the particles can be calculated.
-   The small-angle X-ray scattering intensity of a nanostructured system is the Fourier transform of the spatial autocorrelation function of the electron density.
-   In optics, normalized autocorrelations and cross-correlations give the degree of coherence of an electromagnetic field.
-   In signal processing, autocorrelation can give information about repeating events like musical beats (for example, to determine tempo) or pulsar frequencies, though it cannot tell the position in time of the beat. It can also be used to estimate the pitch of a musical tone.
-   In music recording, autocorrelation is used as a pitch detection algorithm prior to vocal processing, as a distortion effect or to eliminate undesired mistakes and inaccuracies.[23]

-   Autocorrelation in space rather than time, via the Patterson function, is used by X-ray diffractionists to help recover the "Fourier phase information" on atom positions not available through diffraction alone.
-   In statistics, spatial autocorrelation between sample locations also helps one estimate mean value uncertainties when sampling a heterogeneous population.
-   The SEQUEST algorithm for analyzing mass spectra makes use of autocorrelation in conjunction with cross-correlation to score the similarity of an observed spectrum to an idealized spectrum representing a peptide.
-   In astrophysics, autocorrelation is used to study and characterize the spatial distribution of galaxies in the universe and in multi-wavelength observations of low mass X-ray binaries.
-   In panel data, spatial autocorrelation refers to correlation of a variable with itself through space.
-   In analysis of Markov chain Monte Carlo data, autocorrelation must be taken into account for correct error determination.
-   In geosciences (specifically in geophysics) it can be used to compute an autocorrelation seismic attribute, out of a 3D seismic survey of the underground.
-   In medical ultrasound imaging, autocorrelation is used to visualize blood flow.
-   In intertemporal portfolio choice, the presence or absence of autocorrelation in an asset's rate of return can affect the optimal portion of the portfolio to hold in that asset.


Serial dependence

SERIAL DEPENDENCE is closely linked to the notion of autocorrelation, but represents a distinct concept (see Correlation and dependence). In particular, it is possible to have serial dependence but no (linear) correlation. In some fields however, the two terms are used as synonyms.

A time series of a random variable has serial dependence if the value at some time t in the series is statistically dependent on the value at another time s. A series is serially independent if there is no dependence between any pair.

If a time series {X_(t)} is stationary, then statistical dependence between the pair (X_(t), X_(s)) would imply that there is statistical dependence between all pairs of values at the same lag τ = s − t.


See also

-   Autocorrelation matrix
-   Autocorrelation technique
-   Autocorrelation of a formal word
-   Autocorrelator
-   Correlation function
-   Correlogram
-   Cross-correlation
-   Galton's problem
-   Partial autocorrelation function
-   Fluorescence correlation spectroscopy
-   Optical autocorrelation
-   Pitch detection algorithm
-   Triple correlation
-   Variance
-   CUSUM
-   Cochrane–Orcutt estimation (transformation for autocorrelated error terms)
-   Prais–Winsten transformation
-   Scaled Correlation
-   Unbiased estimation of standard deviation


References


Further reading

-   -   -   Mojtaba Soltanalian, and Petre Stoica. "Computational design of sequences with good correlation properties." IEEE Transactions on Signal Processing, 60.5 (2012): 2180–2193.
-   Solomon W. Golomb, and Guang Gong. Signal design for good correlation: for wireless communication, cryptography, and radar. Cambridge University Press, 2005.


External links

-   -   Autocorrelation articles in Comp.DSP (DSP usenet group).
-   GPU accelerated calculation of autocorrelation function.
-   by Mark Thoma

-   Autocorrelation Time Series data by itfeature

Category:Autocorrelation Category:Signal processing Category:Time domain analysis

[1]

[2] Kun Il Park, Fundamentals of Probability and Stochastic Processes with Applications to Communications, Springer, 2018,

[3]

[4]

[5]

[6]

[7]

[8]

[9]

[10]

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

[22]

[23]