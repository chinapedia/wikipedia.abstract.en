In multidimensional signal processing, MULTIDIMENSIONAL SIGNAL RESTORATION refers to the problem of estimating the original input signal from observations of the distorted or noise contaminated version of the original signal using some prior information about the input signal and /or the distortion process.[1] Multidimensional signal processing systems such as audio, image and video processing systems often receive as input, signals that undergo distortions like blurring, band-limiting etc. during signal acquisition or transmission and it may be vital to recover the original signal for further filtering. Multidimensional signal restoration is an inverse problem, where only the distorted signal is observed and some information about the distortion process and/or input signal properties is known.[2] A general class of iterative methods have been developed for the multidimensional restoration problem with successful applications to multidimensional deconvolution,[3][4][5] signal extrapolation[6][7] and denoising.[8][9]


Definition

In general, the multidimensional signal restoration problem can be represented by an equation of the form,[10]

_y_(_n_₁, _n_₂, ...., _n__(_m_)) = _D_[_x_(_n_₁, _n_₂, ....., _n__(_m_))]

where y(n₁, n₂, ...., n_(m)) represents the observed m-dimensional distorted output signal, x(n₁, n₂, ...., n_(m)) represents the m-dimensional undistorted input signal and D[ ⋅ ] represents the distortion operator acting upon the input signal. D[ ⋅ ] can be used to model a wide range of transformations such as blurring, additive noise, time limiting, band limiting etc. of multidimensional signals.[11]

A simple straightforward solution to above equation is of the form,

_x_(_n_₁, _n_₂, ...., _n__(_m_)) = _D_^( − 1)[_y_(_n_₁, _n_₂, ....., _n__(_m_))]

where D^( − 1)[ ⋅ ] is the inverse distortion operator.

However, in most cases of practical use, it may be extremely difficult to implement the inverse distortion operator D^( − 1)[ ⋅ ] or the such an inverse distortion operator may not exist and even in situations where the distortion operator D[ ⋅ ] is known and its inverse can be approximately implemented, the resultant reconstructed signal x̃(n₁, n₂, ...., n_(m)) can have very large reconstruction errors due to the inaccuracies present in the estimation of the inverse operator D^( − 1)[ ⋅ ].[12] A general class of iterative methods based on the idea of successive approximation is used to estimate the unknown input signal x(n₁, n₂, ...., n_(m)).


Generalized Constrained Iterative Signal Restoration

Since a simple approach of recovering the input signal x(n₁, n₂, ...., n_(m)) by implementing the inverse distortion operator D^( − 1)[ ⋅ ] on the observed signal y(n₁, n₂, ...., n_(m)) is not practical, specific iterative restoration algorithms were developed for certain types of distortions like blurring,[13] finite signal domain support,[14] finite frequency domain support of signals[15] etc. making certain assumptions about the properties of the input signal such as finite time/spatial-domain support, non-negativity etc.[16] A generalized iterative method that can model the above-mentioned distortions and signal domain specific constraints was later developed.[17]

The general iterative solution based on successive approximation can have the following form,

_x̃__(_k_ + 1)(_n_₁, _n_₂, ...., _n__(_m_)) = _F_[_x̃__(_k_)(_n_₁, _n_₂, ....., _n__(_m_))]

where x̃_(k + 1)(n₁, n₂, ...., n_(m)) is the estimate of the input signal at iteration k + 1, x̃_(k)(n₁, n₂, ...., n_(m)) is the estimate at iteration k and F[ ⋅ ] represents the iteration operator that relates signal estimate at iteration k + 1 to the signal estimate at iteration k.

In many cases, certain signal domain properties of the input signal to be reconstructed are known and can usually be modelled as a constraint. The constraint can be defined by the constraint operator C, such that

_x_(_n_₁, _n_₂, ...., _n__(_m_)) = _C__x_(_n_₁, _n_₂, ...., _n__(_m_))

only if x(n₁, n₂, ...., n_(m)) satisfies the constraint C. It has been shown that such a constraint operator formulation can be used to model signal domain properties like non-negativity, finite frequency domain support, finite spatial domain support.[18] The observed signal y(n₁, n₂, ...., n_(m)) can thus be represented in terms of the distortion operator D and signal domain constraint C as

_y_(_n_₁, _n_₂, ...., _n__(_m_)) = _D__C__x_(_n_₁, _n_₂, ...., _n__(_m_))

where the concatenation DC represents the sequence of enforcing a signal domain constraint followed by a distortion operation on the input signal x(n₁, n₂, ...., n_(m)). Under the assumption that the conditions for uniqueness and convergence of the iterative solution are met,[19] the generalized constrained iterative restoration solution is given as

_x̃__(_k_ + 1)(_n_₁, _n_₂, ...., _n__(_m_)) = _x̃_₀(_n_₁, _n_₂, ..., _n__(_m_)) + (_I_ − _λ__D_)_C__x__(_k_)(_n_₁, _n_₂, ...., _n__(_m_))

_x̃_₀(_n_₁, _n_₂, ...., _n__(_m_)) = _λ__y_

where λ is a constant to control convergence rate, I is the identity matrix and x̃₀(n₁, n₂, ..., n_(m)) is the initial estimate of x(n₁, n₂, ...., n_(m)).[20]


Constrained Iterative Deconvolution

In cases where the distortion operator is both linear and shift invariant, the distortion of the input signal can be easily modelled as a convolution

_y_(_n_₁, _n_₂, ...., _n__(_m_)) = _x_(_n_₁, _n_₂, ....., _n__(_m_)) *  * _h_(_n_₁, _n_₂, .., _n__(_m_))

where h(n₁, n₂, .., n_(m)) represents the impulse response of the linear shift-invariant distortion filter. Under the assumption of linear shift-invariance, the general signal restoration problem can be transformed into a deconvolution problem with the following easily implementable iterative solution,[21]

_x̃__(_k_ + 1)(_n_₁, _n_₂, ..., _n__(_m_)) = _λ__y_(_n_₁, _n_₂, ...., _n__(_m_)) + _g_(_n_₁, _n_₂, ...., _n__(_m_)) *  * _C_[_x̃__(_k_)(_n_₁, _n_₂, ...., _n__(_m_))]

_g_(_n_₁, _n_₂, ...., _n__(_m_)) = _δ_(_n_₁, _n_₂, ...., _n__(_m_)) − _λ__h_(_n_₁, _n_₂, ...., _n__(_m_))

where δ(n₁, n₂, ..., n_(m)) is an m-dimensional impulse and λ is a constant for controlling the rate of convergence. Although this solution can be easily implemented by convolution,the iterations converge to a solution only when H(ω₁, ω₂, ...., ω_(m)) ≠ 0, where H(ω₁, ω₂, ...., ω_(m)) represents the frequency response of the distortion filter h(n₁, n₂, ..., n_(m)).[22][23][24]

By imposing a signal domain constraint of finite extent support and positivity over the finite region of support, the constrained iterative deconvolution solution can be guaranteed to converge.[25][26][27] Such a signal domain constraint can be realistically imposed for many cases of practical use.[28] For example, in the case of image deblurring, the blur kernel can be assumed to have a positive impulse response over a finite region of support.[29]


Signal Restoration from Phase

Phase_recon_unit_mag.tif In certain multidimensional signal processing applications, the phase of the frequency domain response of the input signal may be preserved even after undergoing distortion.[30] For phase preserving distortions, it is possible to uniquely restore a multidimensional signal entirely from the phase of its Fourier transform as long as conditions of uniqueness and convergence are met.[31][32]

The idea of recovering a signal from the phase of the frequency domain response of the input signal is a particularly useful result for images( 2-D signals). Assuming a phase preserving distortion and the existence of a unique solution for recovering a signal from its phase, the phase-based signal restoration algorithm takes the form of an iterative transformation between frequency domain and signal domain, where a frequency domain constraint( phase preservation) is first enforced on the Fourier Transform of the current estimate of the signal, followed by a spatial domain constraint(finite region of support) that is enforced in the signal domain on the current estimate of the signal.[33][34]


Signal Restoration from Magnitude

Mag_random_phase.tif Mag_quantized_phase.tif Similar to the phase-based restoration of an unknown input signal, it is also possible to restore a signal from the magnitude of the frequency domain response of the observed signal. In certain optical systems, it is much more easier to measure the magnitude of the signal or the magnitude of its Fourier transform, but it is very difficult to precisely measure the phase of either the signal or its Fourier transform. Such cases represent a magnitude preserving distortion acting on the input signal.[35][36]

Assuming a magnitude preserving distortion and the existence of a unique solution for recovering a signal from its magnitude, the magnitude-based signal restoration algorithm takes the form of an iterative transformation between frequency domain and signal domain, where a frequency domain constraint( magnitude preservation) is first enforced on the Fourier Transform of the current estimate of the signal, followed by a spatial domain constraint( finite region of support) that is enforced in the signal domain on the current estimate of the signal.[37][38][39]

Although the magnitude-based signal restoration approach is very similar to the phase-based recovery approach, the convergence of the magnitude-based recovery approach to an acceptable result is much more difficult to achieve. In general, starting with a zero phase estimate or a random phase estimate for the magnitude-based signal recovery approach may not result in convergence, where as in the case of the phase-based signal recovery approach, even starting with a constant unit magnitude for the Fourier transform of the estimated signal, results in convergence.[40] Random or zero phase initialization for magnitude-based signal recovery of images, usually does not result in acceptable reconstruction results even after a large number of iterations. On the other hand, starting with an initial phase information that is a noisy or heavily quantized version( but not random or uniform phase) of the original phase information, results in a very quick convergence of the magnitude-based signal recovery approach.[41] It has been shown that an image can be perfectly recovered from the magnitude of its Fourier transform and 1-bit quantization of the original signal phase information (i.e. the initial estimate for phase of the Fourier transform can have only two values, either 0 or π).[42]


See also

-   Deconvolution
-   Deblurring
-   Inverse problem
-   Iterative method
-   Denoising
-   Blind deconvolution
-   Estimation theory
-   Multidimensional transform


References

Category:Multidimensional signal processing

[1] D. Dudgeon and R. Mersereau, Multidimensional Digital Signal Processing, Prentice-Hall, First Edition, pp. 349-390, 1983.

[2]

[3] R. Shafer, R. Merserseau and M. Richards,"Constrained Iterative Restoration Algorithms," Proc. IEEE,69(Apr. 1981),432-50

[4] R. Merserseau and R. Schafer, "Comparitve study of iterative deconvolution algorithms," in Proc. 1978 IEEE Int. Conf. Acoustics, Speech and Signal Processing, pp.192-195, Apr.1978

[5] M.Richards, R. Schafer, and R. Mersereau, “An experimental study of the effects of noise on a class of iterative deconvolution algorithms,” in Proc. 1979 IEEE Int. Conf. Acoustics, Speech and Signal Processing, pp.401-404, Apr.1979

[6] A. Papoulis, “A new algorithm in spectral analysis and bandlimited extrapolation,” IEEE Trans. Circuits Syst., vol. CAS-22, pp. 735-742, 1975

[7] H. J. Landau and W. L. Miranker, “The recovery of distorted band-limited signals,’’ J. Mhth Anal. Appl., vol. 2, pp. 97-104, 1961

[8] B. R. Frieden, “Image enhancement and restoration,” in Picture Processing and Digital Filtering, T. S. Huang, Ed. New York: Springer-Verlag, 1975, ch. 5, pp. 177-247.

[9] J. R Fienup, “Reconstruction of an object from the modulus of its Fourier transform,” Optics Letters, vol. 3, no. 1, pp. 27-29, July 1978

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

[21] P. H. Van Cittert, “Zum Einfluss der Spaltbreite auf die Intensitatswerteilung in Spektrallinien II,” 2. fir Physik, vol. 69, pp 298-308,1931

[22]

[23]

[24]

[25]

[26]

[27]

[28]

[29]

[30] M. Hayes,"The Reconstruction of a Multidimensional Sequence from the phase or Magnitude of its Fourier Transform", IEEE Trans. Acoustics, Speech and Signal Processing, ASSP-30,no.2(APr. 1982),140-154

[31]

[32] M. Hayes III, "signal Reconstruction from Phase or Magnitude,"Sc.D thesis,Department of Electrical Engineering and Computer Science,MIT(June 1981)

[33]

[34]

[35]

[36]

[37]

[38]

[39]

[40]

[41]

[42]