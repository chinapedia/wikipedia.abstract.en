The BILINEAR TRANSFORM (also known as TUSTIN'S METHOD) is used in digital signal processing and discrete-time control theory to transform continuous-time system representations to discrete-time and vice versa.

The bilinear transform is a special case of a conformal mapping (namely, a Möbius transformation), often used to convert a transfer function $H_a(s) \$ of a linear, time-invariant (LTI) filter in the continuous-time domain (often called an analog filter) to a transfer function $H_d(z) \$ of a linear, shift-invariant filter in the discrete-time domain (often called a digital filter although there are analog filters constructed with switched capacitors that are discrete-time filters). It maps positions on the $j \omega \$ axis, $Re[s]=0 \$, in the s-plane to the unit circle, $|z| = 1 \$, in the z-plane. Other bilinear transforms can be used to warp the frequency response of any discrete-time linear system (for example to approximate the non-linear frequency resolution of the human auditory system) and are implementable in the discrete domain by replacing a system's unit delays $\left( z^{-1} \right) \$ with first order all-pass filters.

The transform preserves stability and maps every point of the frequency response of the continuous-time filter, $H_a(j \omega_a) \$ to a corresponding point in the frequency response of the discrete-time filter, $H_d(e^{j \omega_d T}) \$ although to a somewhat different frequency, as shown in the Frequency warping section below. This means that for every feature that one sees in the frequency response of the analog filter, there is a corresponding feature, with identical gain and phase shift, in the frequency response of the digital filter but, perhaps, at a somewhat different frequency. This is barely noticeable at low frequencies but is quite evident at frequencies close to the Nyquist frequency.


Discrete-time approximation

The bilinear transform is a first-order approximation of the natural logarithm function that is an exact mapping of the _z_-plane to the _s_-plane. When the Laplace transform is performed on a discrete-time signal (with each element of the discrete-time sequence attached to a correspondingly delayed unit impulse), the result is precisely the Z transform of the discrete-time sequence with the substitution of

$$\begin{align}
z &= e^{sT}   \\
  &= \frac{e^{sT/2}}{e^{-sT/2}} \\
  &\approx \frac{1 + s T / 2}{1 - s T / 2}
\end{align}$$

where $T \$ is the numerical integration step size of the trapezoidal rule used in the bilinear transform derivation;[1] or, in other words, the sampling period. The above bilinear approximation can be solved for $s \$ or a similar approximation for $s = (1/T) \ln(z) \  \$ can be performed.

The inverse of this mapping (and its first-order bilinear approximation) is

$$\begin{align}
s &= \frac{1}{T} \ln(z)  \\
  &= \frac{2}{T} \left[\frac{z-1}{z+1} + \frac{1}{3} \left( \frac{z-1}{z+1} \right)^3  + \frac{1}{5} \left( \frac{z-1}{z+1} \right)^5  + \frac{1}{7} \left( \frac{z-1}{z+1} \right)^7 + \cdots \right] \\
  &\approx  \frac{2}{T} \frac{z - 1}{z + 1} \\
  &=  \frac{2}{T} \frac{1 - z^{-1}}{1 + z^{-1}}
\end{align}$$

The bilinear transform essentially uses this first order approximation and substitutes into the continuous-time transfer function, $H_a(s) \$

$$s \leftarrow \frac{2}{T} \frac{z - 1}{z + 1}.$$

That is

$$H_d(z) = H_a(s) \bigg|_{s = \frac{2}{T} \frac{z - 1}{z + 1}}= H_a \left( \frac{2}{T} \frac{z-1}{z+1} \right). \$$


Stability and minimum-phase property preserved

A continuous-time causal filter is stable if the poles of its transfer function fall in the left half of the complex s-plane. A discrete-time causal filter is stable if the poles of its transfer function fall inside the unit circle in the complex z-plane. The bilinear transform maps the left half of the complex s-plane to the interior of the unit circle in the z-plane. Thus, filters designed in the continuous-time domain that are stable are converted to filters in the discrete-time domain that preserve that stability.

Likewise, a continuous-time filter is minimum-phase if the zeros of its transfer function fall in the left half of the complex s-plane. A discrete-time filter is minimum-phase if the zeros of its transfer function fall inside the unit circle in the complex z-plane. Then the same mapping property assures that continuous-time filters that are minimum-phase are converted to discrete-time filters that preserve that property of being minimum-phase.


Example

As an example take a simple low-pass RC filter. This continuous-time filter has a transfer function

$$\begin{align}
H_a(s) &= \frac{1/sC}{R+1/sC} \\
&= \frac{1}{1 + RC s}.
\end{align}$$

If we wish to implement this filter as a digital filter, we can apply the bilinear transform by substituting for s the formula above; after some reworking, we get the following filter representation:

    {|

|- |$H_d(z) \$ |$=H_a \left( \frac{2}{T} \frac{z-1}{z+1}\right) \$ |- | |$= \frac{1}{1 + RC \left( \frac{2}{T} \frac{z-1}{z+1}\right)} \$ |- | |$= \frac{1 + z}{(1 - 2 RC / T) + (1 + 2RC / T) z} \$ |- | |$= \frac{1 + z^{-1}}{(1 + 2RC / T) + (1 - 2RC / T) z^{-1}}. \$ |}

The coefficients of the denominator are the 'feed-backward' coefficients and the coefficients of the numerator are the 'feed-forward' coefficients used to implement a real-time digital filter.


Transformation for a general first-order continuous-time filter

It is possible to relate the coefficients of a continuous-time, analog filter with those of a similar discrete-time digital filter created through the bilinear transform process. Transforming a general, first-order continuous-time filter with the given transfer function

$$H_a(s) = \frac{b_0 s + b_1}{a_0 s + a_1} = \frac{b_0 + b_1 s^{-1}}{a_0 + a_1 s^{-1}}$$

using the bilinear transform (without prewarping any frequency specification) requires the substitution of

$$s \leftarrow K \frac{1 - z^{-1}}{1 + z^{-1}}$$

where

$$K \triangleq \frac{2}{T}$$
.

However, if the frequency warping compensation as described below is used in the bilinear transform, so that both analog and digital filter gain and phase agree at frequency ω₀, then

$$K \triangleq \frac{\omega_0}{\tan\left(\frac{\omega_0 T}{2}\right)}$$
.

This results in a discrete-time digital filter with coefficients expressed in terms of the coefficients of the original continuous time filter:

$$H_d(z)=\frac{(b_0 K + b_1) + (-b_0 K + b_1)z^{-1}}{(a_0 K + a_1) + (-a_0 K + a_1)z^{-1}}$$

Normally the constant term in the denominator must be normalized to 1 before deriving the corresponding difference equation. This results in

$$H_d(z)=\frac{\frac{b_0 K + b_1}{a_0 K + a_1} + \frac{-b_0 K + b_1}{a_0 K + a_1}z^{-1}}{1 + \frac{-a_0 K + a_1}{a_0 K + a_1}z^{-1}}.$$

The difference equation (using the Direct Form I) is

$$y[n] = \frac{b_0 K + b_1}{a_0 K + a_1} \cdot x[n] + \frac{-b_0 K + b_1}{a_0 K + a_1} \cdot x[n-1] - \frac{-a_0 K + a_1}{a_0 K + a_1} \cdot y[n-1] \ .$$


General second-order biquad transformation

A similar process can be used for a general second-order filter with the given transfer function

$$H_a(s) = \frac{b_0 s^2 + b_1 s + b_2}{a_0 s^2 + a_1 s + a_2} = \frac{b_0 + b_1 s^{-1} + b_2 s^{-2}}{a_0 + a_1 s^{-1} + a_2 s^{-2}} \ .$$

This results in a discrete-time digital biquad filter with coefficients expressed in terms of the coefficients of the original continuous time filter:

$$H_d(z)=\frac{(b_0 K^2 + b_1 K + b_2) + (2b_2 - 2b_0 K^2)z^{-1} + (b_0 K^2 - b_1 K + b_2)z^{-2}}{(a_0 K^2 + a_1 K + a_2) + (2a_2 - 2a_0 K^2)z^{-1} + (a_0 K^2 - a_1 K + a_2)z^{-2}}$$

Again, the constant term in the denominator is generally normalized to 1 before deriving the corresponding difference equation. This results in

$$H_d(z)=\frac{\frac{b_0 K^2 + b_1 K + b_2}{a_0 K^2 + a_1 K + a_2} + \frac{2b_2 - 2b_0 K^2}{a_0 K^2 + a_1 K + a_2}z^{-1} + \frac{b_0 K^2 - b_1 K + b_2}{a_0 K^2 + a_1 K + a_2}z^{-2}}{1 + \frac{2a_2 - 2a_0 K^2}{a_0 K^2 + a_1 K + a_2}z^{-1} + \frac{a_0 K^2 - a_1 K + a_2}{a_0 K^2 + a_1 K + a_2}z^{-2}}.$$

The difference equation (using the Direct Form I) is

$$y[n] = \frac{b_0 K^2 + b_1 K + b_2}{a_0 K^2 + a_1 K + a_2} \cdot x[n] + \frac{2b_2 - 2b_0 K^2}{a_0 K^2 + a_1 K + a_2} \cdot x[n-1] + \frac{b_0 K^2 - b_1 K + b_2}{a_0 K^2 + a_1 K + a_2} \cdot x[n-2] - \frac{2a_2 - 2a_0 K^2}{a_0 K^2 + a_1 K + a_2} \cdot y[n-1] - \frac{a_0 K^2 - a_1 K + a_2}{a_0 K^2 + a_1 K + a_2} \cdot y[n-2] \ .$$


Frequency warping

To determine the frequency response of a continuous-time filter, the transfer function H_(a)(s) is evaluated at s = jω_(a) which is on the jω axis. Likewise, to determine the frequency response of a discrete-time filter, the transfer function H_(d)(z) is evaluated at z = e^(jω_(d)T) which is on the unit circle, |z| = 1. The bilinear transform maps the jω axis of the _s_-plane (of which is the domain of H_(a)(s)) to the unit circle of the _z_-plane, |z| = 1 (which is the domain of H_(d)(z)), but it is NOT the same mapping z = e^(sT) which also maps the jω axis to the unit circle. When the actual frequency of ω_(d) is input to the discrete-time filter designed by use of the bilinear transform, then it is desired to know at what frequency, ω_(a), for the continuous-time filter that this ω_(d) is mapped to.

$$H_d(z) = H_a \left( \frac{2}{T} \frac{z-1}{z+1}\right)$$

    {|

|- |H_(d)(e^(jω_(d)T)) |$= H_a \left( \frac{2}{T} \frac{e^{ j \omega_d T} - 1}{e^{ j \omega_d T} + 1}\right)$ |- | |$= H_a \left( \frac{2}{T} \cdot \frac{e^{j \omega_d T/2} \left(e^{j \omega_d T/2} - e^{-j \omega_d T/2}\right)}{e^{j \omega_d T/2} \left(e^{j \omega_d T/2} + e^{-j \omega_d T/2 }\right)}\right)$ |- | |$= H_a \left( \frac{2}{T} \cdot \frac{\left(e^{j \omega_d T/2} - e^{-j \omega_d T/2}\right)}{\left(e^{j \omega_d T/2} + e^{-j \omega_d T/2 }\right)}\right)$ |- | |$= H_a \left(j \frac{2}{T} \cdot \frac{ \left(e^{j \omega_d T/2} - e^{-j \omega_d T/2}\right) /(2j)}{\left(e^{j \omega_d T/2} + e^{-j \omega_d T/2 }\right) / 2}\right)$ |- | |$= H_a \left(j \frac{2}{T} \cdot \frac{ \sin(\omega_d T/2) }{ \cos(\omega_d T/2) }\right)$ |- | |$= H_a \left(j \frac{2}{T} \cdot \tan \left( \omega_d T/2 \right) \right)$ |}

This shows that every point on the unit circle in the discrete-time filter z-plane, z = e^(jω_(d)T) is mapped to a point on the jω axis on the continuous-time filter s-plane, s = jω_(a). That is, the discrete-time to continuous-time frequency mapping of the bilinear transform is

$$\omega_a = \frac{2}{T} \tan \left( \omega_d \frac{T}{2} \right)$$

and the inverse mapping is

$$\omega_d = \frac{2}{T} \arctan \left( \omega_a \frac{T}{2} \right).$$

The discrete-time filter behaves at frequency ω_(d) the same way that the continuous-time filter behaves at frequency (2/T)tan (ω_(d)T/2). Specifically, the gain and phase shift that the discrete-time filter has at frequency ω_(d) is the same gain and phase shift that the continuous-time filter has at frequency (2/T)tan (ω_(d)T/2). This means that every feature, every "bump" that is visible in the frequency response of the continuous-time filter is also visible in the discrete-time filter, but at a different frequency. For low frequencies (that is, when ω_(d) ≪ 2/T or ω_(a) ≪ 2/T), then the features are mapped to a _slightly_ different frequency; ω_(d) ≈ ω_(a).

One can see that the entire continuous frequency range

     − ∞ < ω_(a) <  + ∞

is mapped onto the fundamental frequency interval

    $-\frac{\pi}{T} < \omega_d < +\frac{\pi}{T}.$

The continuous-time filter frequency ω_(a) = 0 corresponds to the discrete-time filter frequency ω_(d) = 0 and the continuous-time filter frequency ω_(a) =  ± ∞ correspond to the discrete-time filter frequency ω_(d) =  ± π/T.

One can also see that there is a nonlinear relationship between $\omega_a \$ and ω_(d). This effect of the bilinear transform is called FREQUENCY WARPING. The continuous-time filter can be designed to compensate for this frequency warping by setting $\omega_a = \frac{2}{T} \tan \left( \omega_d \frac{T}{2} \right)$ for every frequency specification that the designer has control over (such as corner frequency or center frequency). This is called PRE-WARPING the filter design.

It is possible, however, to compensate for the frequency warping by pre-warping a frequency specification ω₀ (usually a resonant frequency or the frequency of the most significant feature of the frequency response) of the continuous-time system. These pre-warped specifications may then be used in the bilinear transform to obtain the desired discrete-time system. When designing a digital filter as an approximation of a continuous time filter, the frequency response (both amplitude and phase) of the digital filter can be made to match the frequency response of the continuous filter at a specified frequency ω₀, as well as matching at DC, if the following transform is substituted into the continuous filter transfer function.[2] This is a modified version of Tustin's transform shown above.

$$s \leftarrow \frac{\omega_0}{\tan\left(\frac{\omega_0 T}{2}\right)} \frac{z - 1}{z + 1}.$$

However, note that this transform becomes the original transform

$$s \leftarrow \frac{2}{T} \frac{z - 1}{z + 1}$$

as ω₀ → 0.

The main advantage of the warping phenomenon is the absence of aliasing distortion of the frequency response characteristic, such as observed with Impulse invariance.


See also

-   Impulse invariance
-   Matched Z-transform method


References


External links

-   MIT OpenCourseWare Signal Processing: Continuous to Discrete Filter Design
-   Lecture Notes on Discrete Equivalents

Category:Digital signal processing Category:Transforms Category:Control theory

[1]

[2]