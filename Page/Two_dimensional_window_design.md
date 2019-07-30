WINDOWING is a process where an index limited sequence has its maximum energy concentrated in a finite frequency interval. This can be extended to an N-dimension where the N-D window has the limited support and maximum concentration of energy in a separable or non-separable N-D passband. The design of an N-dimensional window particularly a 2-D window finds applications in various fields such as spectral estimation of multidimensional signals, design of circularly symmetric and quadrantally symmetric non-recursive 2D filters,[1] design of optimal convolution functions, image enhancement so as to reduce the effects of data-dependent processing artifacts, optical apodization and antenna array design.[2]


Two dimensional window

Due to the various applications of multi-dimensional signal processing, the various design methodologies of 2-D windows is of critical importance in order to facilitate these applications mentioned above, respectively.

Consider a two-dimensional window function (or WINDOW ARRAY) w(n₁, n₂) with its Fourier transform denoted by W(w₁, w₂). Let i(n₁, n₂) and I(w₁, w₂) denote the impulse and frequency response of an ideal filter and h(n₁, n₂) and H(w₁, w₂) denote the impulse and frequency response of a filter approximating the ideal filter, then we can approximate I(w₁, w₂) by h(n₁, n₂). Since i(n₁, n₂) has an infinite extent it can be approximated as a finite impulse response by multiplying with a window function as shown below

h(n₁, n₂) = i(n₁, n₂)w(n₁, n₂)
and in the Fourier domain

$H(w_1,w_2) = \frac{1}{(2\pi)^2}[I(w_1,w_2)**W(w_1,w_2)]$[3]

The problem is to choose a window function with an appropriate shape such that H(w₁, w₂) is close to I(w₁, w₂) and in any region surrounding a discontinuity of I(w₁, w₂), H(w₁, w₂) shouldn't contain excessive ripples due to the windowing.


2-D Window function from 1-D function

There are four approaches for generating 2-D windows using a one-dimensional window as a prototype.[4]

APPROACH I

One of the methods of deriving the 2-D window is from the outer product of two 1-D windows, i.e., w(n₁, n₂) = w₁(n₁)w₂(n₂). The property of separability is exploited in this approach. The window formed has a square region of support and is separable in the two variables. In order to understand this approach,[5] consider 1-D Kaiser window whose window function is given by

$w[n] =

\left\{
\begin{matrix}

\frac{I_0\left(\pi \alpha \sqrt{1 - \left(\frac{2n}{N-1}-1\right)^2}\right)} {I_0(\pi \alpha)},
 & 0 \leq n \leq N-1 \\ \\

0 & \mbox{otherwise} \\

\end{matrix}
\right.$

then the corresponding 2-D function is given by

$$w(n_1,n_2) = \left\{ \begin{matrix}
 \frac{I_0\left(\alpha \sqrt{1-(\frac{n_1}{a})^2}\right)I_0\left(\alpha \sqrt{1-(\frac{n_2}{a})^2}\right)}{I_0^2(\alpha)},
 & |n_1| \leqslant a, |n_2| \leqslant a \\
 0
 & \mbox{otherwise} \\
\end{matrix} \right.$$

where:

-   $r = \sqrt{n_1^2+n_2^2}$
-   _N_ is the length of the 1-D sequence,
-   _I_₀ is the zeroth-order modified Bessel function of the first kind,
-   _α_ is an arbitrary, non-negative real number that determines the shape of the window. In the frequency domain, it determines the trade-off between main-lobe width and side lobe level, which is a central decision in window design.

The Fourier transform of w(n₁, n₂) is the outer product of the Fourier transforms of w₁(n₁) and w₂(n₂). Hence W(w₁, w₂) = W₁(w₁)W₂(w₂).[6]

APPROACH II

Another method of extending the 1-D window design to a 2-D design is by sampling a circularly rotated 1-D continuous window function.[7] A function is said to possess circular symmetry if it can be written as a function of its radius, independent of θ i.e. f(r, θ) = f(r).
If w(n) denotes a good 1-D even symmetric window then the corresponding 2-D window function[8] is
$w(n_1,n_2) = w(\sqrt{n_1^2+n_2^2})$ for $|\sqrt{n_1^2+n_2^2}| \leqslant a$ (where a is a constant)
and
w(n₁, n₂) = 0 for $|\sqrt{n_1^2+n_2^2}| > a$

The transformation of the Fourier transform of the window function in rectangular co-ordinates to polar co-ordinates results in a Fourier-Bessel transform expression which is called as Hankel transform. Hence the Hankel transform is used to compute the Fourier transform of the 2-D window functions.

If this approach is used to find the 2-D window from the 1-D window function then their Fourier transforms have the relation

$\frac{1}{2\pi}H(w_1,w_2)**W(w_1,w_2) =H(w)*W(w)$[9]

where:

$H(w) =

\left\{
\begin{matrix}

1,
 & w\geq0 \\

0, & w<0 \\

\end{matrix}
\right.$ is a 1-D step function

and

$H(w_1,w_2) =

\left\{
\begin{matrix}

1,
 & w_1\geq0\ and\ all\ w_2\\

0, & w_1<0\ and \ all\ w_2 \\

\end{matrix}
\right.$ is a 2-D step function.
In order to calculate the percentage of mainlobe constituted by the sidelobe, the volume under the sidelobes is calculated unlike in 1-D where the area under the sidelobes is used.
In order to understand this approach, consider 1-D Kaiser window then the corresponding 2-D function can be derived as

$w(n_1,n_2)=\left\{ \begin{matrix}
 \frac{I_0\left(\alpha \sqrt{1-\frac{\sqrt{n_1^2+n_2^2}}{a^2}}\right)}{I_0(\alpha)},
 & |r| \leqslant a \\
 0
 & \mbox{otherwise} \\
\end{matrix} \right.$

This is the most widely used approach to design the 2-D windows.

2-D filter design by windowing using window formulations obtained from the above two approaches will result in the same filter order. This results in an advantage for the second approach since its circular region of support has fewer non-zero samples than the square region of support obtained from the first approach which in turn results in computational savings due to reduced number of coefficients of the 2-D filter. But the disadvantage of this approach is that the frequency characteristics of the 1-D window are not well preserved in 2-D cases by this rotation method.[10] It was also found that the mainlobe width and sidelobe level of the 2-D windows are not as well behaved and predictable as their 1-D prototypes.[11] While designing a 2-D window there are two features that have to be considered for the rotation. Firstly, the 1-D window is only defined for integer values of n but $\sqrt{n_1^2+n_2^2}$ value isn't an integer in general. To overcome this, the method of interpolation can be used to define values for w(n₁, n₂) for any arbitrary $w(\sqrt{n_1^2+n_2^2}).$ Secondly, the 2-D FFT must be applicable to the 2-D window.

APPROACH III

Another approach is to obtain 2-D windows by rotating the frequency response of a 1-D window in Fourier space followed by the inverse Fourier transform.[12] In approach II, the spatial-domain signal is rotated whereas in this approach the 1-D window is rotated in a different domain (e.g., frequency-signal).

Thus the Fourier transform of the 2-D window function is given by

$W_2(w_1,w_2) = W_1(\sqrt{(w_1^2+w_2^2)})$.

The 2-D window function w₂(n₁, n₂) can be obtained by computing the inverse inverse Fourier transform of W₂(w₁, w₂).

Another way to show the type-preserving rotation is when the relation W₁(w₁) = W₂(w₁, w₂) at w₂ = 0 is satisfied. This implies that a slice of the frequency response of 2-D window is equal to that of the 1-D window where the orientation of (w₁, w₂) is arbitrary. In spatial domain, this relation is given by w₁(n) = ∫_( − ∞)^(∞)​w₂(n₁, n₂) dn₂. This implies that a slice of the frequency response W₂(w₁, w₂) is the same as the Fourier transform of the one-directional integration of the 2-D window w₂(n₁, n₂).

The advantage of this approach is that the individual features of 1-D window response W₁(w₁) are well preserved in the obtained 2-D window response W₂(w₁, w₂). Also, the circular symmetry is improved considerably in a discrete system. The drawback is that it's computationally inefficient due to the requirement of 2-D inverse Fourier transform and hence less useful in practice.[13]

APPROACH IV

A new method was proposed to design a 2-D window by applying the McClellan transformation to a 1-D window.[14] Each coefficient of the resulting 2-D window is the linear combination of coefficients of the corresponding 1-D window with integer or power of 2 weighting.

Consider a case of even length, then the frequency response of the 1-D window of length N can be written as

$W_1(w) = \sum_{n=1}^{N/2} w(n)cos[(n-0.5)w]$ .

Consider the McClellan transformation:

cos(w) = 0.5cos(w₁) + 0.5cos(w₂) + 0.5cos(w₁)cos(w₂) − 0.5

which is equivalent to

cos(0.5w) = cos(0.5w₁)cos(0.5w₂) for 0≤ w ≤ π, 0≤ w₁ ≤ π, 0≤ w₂ ≤ π.

Substituting the above, we get the frequency response of the corresponding 2-D window

$W_2(w_1,w_2) = \sum_{n_1=1}^{N/2}\sum_{n_2=1}^{N/2}w_2(n_1,n_2)cos[(n_1-0.5)w_1]cos[(n_2-0.5)w_2]$ .

From the above equation, the coefficients of the 2-D window can be obtained.

To illustrate this approach, consider the Tseng window. The 1-D Tseng window of 2N weights can be written as

$W(w)= exp(-jw/2)\sum_{n=1}^N2w_ncos((n-\frac{1}{2})w)$.

By implementing this approach, the frequency response of the 2-D McClellan-transformed Tseng window is given by

$W(w_1,w_2)= exp(-j(w_1+w_2)/2)\sum_{n_1=1}^N\sum_{n_2=1}^N4w(n_1,n_2)cos((n_1-\frac{1}{2})w_1)cos((n_2-\frac{1}{2})w_2)$

where w(n₁, n₂) are the 2-D Tseng window coefficients.

This window finds applications in antenna array design for the detection of AM signals.[15]

The advantages include simple and efficient design, nearly circularly symmetric frequency response of the 2-D window, preserving of the 1-D window prototype features. However, when this approach is used for FIR filter design it was observed that the 2-D filters designed were not as good as those originally proposed by McClellan.


2-D Window Functions

Using the above approaches, the 2-D window functions for few of the 1-D windows are as shown below. When Hankel transform is used to find the frequency response of the window function, it is difficult to represent it in a closed form. Except for rectangular window and Bartlett window, the other window functions are represented in their original integral form. The two dimensional window function is represented as w(r) with a REGION OF SUPPORT given by |r| < a where the window is set to unity at origin and w(r) = 0 for |r| > a. Using the Hankel transform, the frequency response of the window function is given by:

W(f) = ∫₀^(∞)​rw(r)J₀(fr) dr.[16]

where J₀ is Bessel function identity.

Rectangular Window

2-D_Rectangular_window.jpg 2-D_rectangular_window_contour_plot.jpg The two dimensional version of a circularly symmetric rectangular window is as given below[17]

$$w(r) = \left\{ \begin{array}{ll}
 1,
 & |r| \leqslant a \\
 0,
 & |r| > a \\
\end{array} \right.$$

The window is cylindrical with the height equal to one and the base equal to 2a. The vertical cross-section of this window is a 1-D rectangular window.
The frequency response of the window after substituting the window function as defined above, using the Hankel transform, is as shown below
W(f) = ∫₀^(∞)​rJ₀(fr) dr

Bartlett Window

The two dimensional mathematical representation of a Bartlett window is as shown below[18]

$$w(r) = \left\{ \begin{array}{ll}
 1 -\frac{|r|}{a},
 & |r| \leqslant a \\
 0,
 & |r| > a \\
\end{array} \right.$$

The window is cone-shaped with its height equal to 1 and the base is a circle with its radius 2a. The vertical cross-section of this window is a 1-D triangle window.
The Fourier transform of the window using the Hankel transform is as shown below
$W(f) = \int_0^\infty \!r(1 -\frac{|r|}{a})J_0(fr)\,dr$

Kaiser Window

The 2-D Kaiser window is represented by[19]

$$w(r) = \left\{ \begin{array}{ll}
 \frac{I_0\left(\alpha \sqrt{1-((\frac{r}{a})^2}\right)}{I_0(\alpha)},
 & |r| \leqslant a \\
 0,
 & \mbox{otherwise} \\
\end{array} \right.$$

The cross-section of the 2-D window gives the response of a 1-D Kaiser Window function.
The Fourier transform of the window using the Hankel transform is as shown below
$W(f) = \int_0^\infty \!r (\frac{I_0\left(\alpha \sqrt{1-((\frac{r}{a})^2}\right)}{I_0(\alpha)})J_0(fr)\,dr$


References

Category:Multidimensional signal processing

[1]

[2]

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