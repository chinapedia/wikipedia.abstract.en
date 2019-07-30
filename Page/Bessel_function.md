BESSEL FUNCTIONS, first defined by the mathematician Daniel Bernoulli and then generalized by Friedrich Bessel, are canonical solutions of Bessel's differential equation

    $x^2 \frac{d^2 y}{dx^2} + x \frac{dy}{dx} + \left(x^2 - \alpha^2 \right)y = 0$

for an arbitrary complex number , the _order_ of the Bessel function. Although and produce the same differential equation, it is conventional to define different Bessel functions for these two values in such a way that the Bessel functions are mostly smooth functions of .

The most important cases are when is an integer or half-integer. Bessel functions for integer are also known as CYLINDER FUNCTIONS or the CYLINDRICAL HARMONICS because they appear in the solution to Laplace's equation in cylindrical coordinates. SPHERICAL BESSEL FUNCTIONS with half-integer are obtained when the Helmholtz equation is solved in spherical coordinates.


Applications of Bessel functions

Bessel's equation arises when finding separable solutions to Laplace's equation and the Helmholtz equation in cylindrical or spherical coordinates. Bessel functions are therefore especially important for many problems of wave propagation and static potentials. In solving problems in cylindrical coordinate systems, one obtains Bessel functions of integer order ( _n_}}); in spherical problems, one obtains half-integer orders ( _n_ + }}). For example:

-   Electromagnetic waves in a cylindrical waveguide
-   Pressure amplitudes of inviscid rotational flows
-   Heat conduction in a cylindrical object
-   Modes of vibration of a thin circular (or annular) acoustic membrane (such as a drum or other membranophone)
-   Diffusion problems on a lattice
-   Solutions to the radial Schrödinger equation (in spherical and cylindrical coordinates) for a free particle
-   Solving for patterns of acoustical radiation
-   Frequency-dependent friction in circular pipelines
-   Dynamics of floating bodies
-   Angular resolution
-   Diffraction from helical objects, including DNA

Bessel functions also appear in other problems, such as signal processing (e.g., see FM synthesis, Kaiser window, or Bessel filter).


Definitions

Because this is a second-order differential equation, there must be two linearly independent solutions. Depending upon the circumstances, however, various formulations of these solutions are convenient. Different variations are summarized in the table below and described in the following sections.

    {| class="wikitable"

! Type !! First kind !! Second kind |- | Bessel functions | [[#Bessel_functions_of_the_first_kind| |- | Spherical Bessel functions | | |- | Spherical Hankel functions | _j_(n)_ + _iy_(n)_}} | _j_(n)_ − _iy_(n)_}} |}

Bessel functions of the second kind and the spherical Bessel functions of the second kind are sometimes denoted by and respectively, rather than and .[1][2]

Bessel functions of the first kind:

Bessel functions of the first kind, denoted as , are solutions of Bessel's differential equation that are finite at the origin ( 0}}) for integer or positive α and diverge as approaches zero for negative non-integer . It is possible to define the function by its series expansion around 0}}, which can be found by applying the Frobenius method to Bessel's equation:[3]

$$J_\alpha(x) = \sum_{m=0}^\infty \frac{(-1)^m}{m! \Gamma(m+\alpha+1)} {\left(\frac{x}{2}\right)}^{2m+\alpha},$$

where is the gamma function, a shifted generalization of the factorial function to non-integer values. The Bessel function of the first kind is an entire function if is an integer, otherwise it is a multivalued function with singularity at zero. The graphs of Bessel functions look roughly like oscillating sine or cosine functions that decay proportionally to $x^{-\frac{1}{2}}$ (see also their asymptotic forms below), although their roots are not generally periodic, except asymptotically for large . (The series indicates that is the derivative of , much like is the derivative of ; more generally, the derivative of can be expressed in terms of by the identities below.)

For non-integer , the functions and are linearly independent, and are therefore the two solutions of the differential equation. On the other hand, for integer order , the following relationship is valid (note that the gamma function has simple poles at each of the non-positive integers):[4]

_J__( − _n_)(_x_) = ( − 1)^(_n_)_J__(_n_)(_x_).

This means that the two solutions are no longer linearly independent. In this case, the second linearly independent solution is then found to be the Bessel function of the second kind, as discussed below.

Bessel's integrals

Another definition of the Bessel function, for integer values of , is possible using an integral representation:[5]

$$J_n(x) = \frac{1}{\pi} \int_0^\pi \cos (n \tau - x \sin \tau) \,d\tau.$$

Another integral representation is:[6]

$$J_n(x) = \frac{1}{2\pi} \int_{-\pi}^\pi e^{i(x \sin \tau -n \tau)} \,d\tau.$$

This was the approach that Bessel used, and from this definition he derived several properties of the function. The definition may be extended to non-integer orders by one of Schläfli's integrals, for :[7][8][9][10][11]

$$J_\alpha(x) = \frac{1}{\pi} \int_0^\pi \cos(\alpha\tau - x \sin\tau)\,d\tau - \frac{\sin \alpha\pi}{\pi} \int_0^\infty e^{-x \sinh t - \alpha t} \, dt.$$

Relation to hypergeometric series

The Bessel functions can be expressed in terms of the generalized hypergeometric series as[12]

$$J_\alpha(x) = \frac{\left(\frac{x}{2}\right)^\alpha}{\Gamma(\alpha+1)} \;_0F_1 \left(\alpha+1; -\frac{x^2}{4}\right).$$

This expression is related to the development of Bessel functions in terms of the Bessel–Clifford function.

Relation to Laguerre polynomials

In terms of the Laguerre polynomials and arbitrarily chosen parameter , the Bessel function can be expressed as[13]

$$\frac{J_\alpha(x)}{\left( \frac{x}{2}\right)^\alpha} = \frac{e^{-t}}{\Gamma(\alpha+1)} \sum_{k=0}^\infty \frac{L_k^{(\alpha)}\left( \frac{x^2}{4 t}\right)}{\binom{k+\alpha}{k}} \frac{t^k}{k!}.$$

Bessel functions of the second kind:

The Bessel functions of the second kind, denoted by , occasionally denoted instead by , are solutions of the Bessel differential equation that have a singularity at the origin ( 0}}) and are multivalued. These are sometimes called WEBER FUNCTIONS, as they were introduced by , and also NEUMANN FUNCTIONS after Carl Neumann.[14]

For non-integer , is related to by

$$Y_\alpha(x) = \frac{J_\alpha(x) \cos (\alpha\pi) - J_{-\alpha}(x)}{\sin (\alpha\pi)}.$$

In the case of integer order , the function is defined by taking the limit as a non-integer tends to :

_Y__(_n_)(_x_) = lim_(_α_ → _n_)_Y__(_α_)(_x_).

If is a nonnegative integer, we have the series[15]

$$Y_n(z) =-\frac{\left(\frac{z}{2}\right)^{-n}}{\pi}\sum_{k=0}^{n-1} \frac{(n-k-1)!}{k!}\left(\frac{z^2}{4}\right)^k +\frac{2}{\pi} J_n(z) \ln \frac{z}{2} -\frac{\left(\frac{z}{2}\right)^n}{\pi}\sum_{k=0}^\infty (\psi(k+1)+\psi(n+k+1)) \frac{\left(-\frac{z^2}{4}\right)^k}{k!(n+k)!}$$

where ψ(z) is the digamma function, the logarithmic derivative of the gamma function.[16]

There is also a corresponding integral formula (for ):[17]

$$Y_n(x) = \frac{1}{\pi} \int_0^\pi \sin(x \sin\theta - n\theta) \, d\theta -\frac{1}{\pi} \int_0^\infty \left(e^{nt} + (-1)^n e^{-nt} \right) e^{-x \sinh t} \, dt.$$

is necessary as the second linearly independent solution of the Bessel's equation when is an integer. But has more meaning than that. It can be considered as a "natural" partner of . See also the subsection on Hankel functions below.

When is an integer, moreover, as was similarly the case for the functions of the first kind, the following relationship is valid:

_Y__( − _n_)(_x_) = ( − 1)^(_n_)_Y__(_n_)(_x_).

Both and are holomorphic functions of on the complex plane cut along the negative real axis. When is an integer, the Bessel functions are entire functions of . If is held fixed at a non-zero value, then the Bessel functions are entire functions of .

The Bessel functions of the second kind when is an integer is an example of the second kind of solution in Fuchs's theorem.

Hankel functions: ,

Another important formulation of the two linearly independent solutions to Bessel's equation are the HANKEL FUNCTIONS OF THE FIRST AND SECOND KIND, and , defined as[18]

$$\begin{align}
H_\alpha^{(1)}(x) &= J_\alpha(x) + iY_\alpha(x), \\
H_\alpha^{(2)}(x) &= J_\alpha(x) - iY_\alpha(x),
\end{align}$$

where is the imaginary unit. These linear combinations are also known as BESSEL FUNCTIONS OF THE THIRD KIND; they are two linearly independent solutions of Bessel's differential equation. They are named after Hermann Hankel.

These forms of linear combination satisfy numerous simple-looking properties, like asymptotic formulae or integral representations. Here, "simple" means an appearance of the factor of the form . The Bessel function of the second kind then can be thought to naturally appear as the imaginary part of the Hankel functions.

The Hankel functions are used to express outward- and inward-propagating cylindrical-wave solutions of the cylindrical wave equation, respectively (or vice versa, depending on the sign convention for the frequency).

Using the previous relationships, they can be expressed as

$$\begin{align}
H_\alpha^{(1)}(x) &= \frac{J_{-\alpha}(x) - e^{-\alpha \pi i} J_\alpha(x)}{i \sin \alpha\pi}, \\
H_\alpha^{(2)}(x) &= \frac{J_{-\alpha}(x) - e^{\alpha \pi i} J_\alpha(x)}{- i \sin \alpha\pi}.
\end{align}$$

If is an integer, the limit has to be calculated. The following relationships are valid, whether is an integer or not:[19]

$$\begin{align}
H_{-\alpha}^{(1)}(x) &= e^{\alpha \pi i} H_\alpha^{(1)} (x), \\
H_{-\alpha}^{(2)}(x) &= e^{-\alpha \pi i} H_\alpha^{(2)} (x).
\end{align}$$

In particular, if _m_ + }} with a nonnegative integer, the above relations imply directly that

$$\begin{align}
J_{-(m+\frac{1}{2})}(x) &= (-1)^{m+1} Y_{m+\frac{1}{2}}(x), \\
Y_{-(m+\frac{1}{2})}(x) &= (-1)^m J_{m+\frac{1}{2}}(x).
\end{align}$$

These are useful in developing the spherical Bessel functions (see below).

The Hankel functions admit the following integral representations for :[20]

$$\begin{align}
H_\alpha^{(1)}(x) &= \frac{1}{\pi i}\int_{-\infty}^{+\infty + i\pi} e^{x\sinh t - \alpha t} \, dt, \\
H_\alpha^{(2)}(x) &= -\frac{1}{\pi i}\int_{-\infty}^{+\infty - i\pi} e^{x\sinh t - \alpha t} \, dt,
\end{align}$$

where the integration limits indicate integration along a contour that can be chosen as follows: from to 0 along the negative real axis, from 0 to along the imaginary axis, and from to along a contour parallel to the real axis.[21]

Modified Bessel functions: ,

The Bessel functions are valid even for complex arguments , and an important special case is that of a purely imaginary argument. In this case, the solutions to the Bessel equation are called the MODIFIED BESSEL FUNCTIONS (or occasionally the HYPERBOLIC BESSEL FUNCTIONS) OF THE FIRST AND SECOND KIND and are defined as[22]

$$\begin{align}
I_\alpha(x) &= i^{-\alpha} J_\alpha(ix) = \sum_{m=0}^\infty \frac{1}{m!\, \Gamma(m+\alpha+1)}\left(\frac{x}{2}\right)^{2m+\alpha}, \\
K_\alpha(x) &= \frac{\pi}{2} \frac{I_{-\alpha}(x) - I_\alpha(x)}{\sin \alpha \pi},
\end{align}$$

when is not an integer; when is an integer, then the limit is used. These are chosen to be real-valued for real and positive arguments . The series expansion for is thus similar to that for , but without the alternating factor.

K_(α) can be expressed in terms of Hankel functions:

$$K_{\alpha} = \begin{cases} \frac{\pi}{2} i^{\alpha+1} H_\alpha^{(1)}(ix) & -\pi < \arg x \leq \frac{\pi}{2} \\ \frac{\pi}{2} (-i)^{\alpha+1} H_\alpha^{(2)}(-ix) & -\frac{\pi}{2} < \arg x \leq \pi \end{cases}$$

We can express the first and second Bessel functions in terms of the modified Bessel functions (these are valid if )[23]:

$$\begin{align}
J_\alpha(iz) &= e^{\frac{\alpha i\pi}{2}} I_\alpha(z), \\
Y_\alpha(iz) &= e^{\frac{(\alpha+1)i\pi}{2}}I_\alpha(z) - \frac{2}{\pi}e^{-\frac{\alpha i\pi}{2}}K_\alpha(z).
\end{align}$$

and are the two linearly independent solutions to the MODIFIED BESSEL'S EQUATION:[24]

$$x^2 \frac{d^2 y}{dx^2} + x \frac{dy}{dx} - \left(x^2 + \alpha^2 \right)y = 0.$$

Unlike the ordinary Bessel functions, which are oscillating as functions of a real argument, and are exponentially growing and decaying functions respectively. Like the ordinary Bessel function , the function goes to zero at 0}} for and is finite at 0}} for 0}}. Analogously, diverges at 0}} with the singularity being of logarithmic type.[25]

    {|

|- | | |}

Two integral formulas for the modified Bessel functions are (for ):[26]

$$\begin{align}
I_\alpha(x) &= \frac{1}{\pi}\int_0^\pi e^{x\cos \theta} \cos \alpha\theta \,d\theta - \frac{\sin \alpha\pi}{\pi}\int_0^\infty e^{-x\cosh t - \alpha t} \,dt, \\
K_\alpha(x) &= \int_0^\infty e^{-x\cosh t} \cosh \alpha t \,dt.
\end{align}$$

In some calculations in physics, it can be useful to know that the following relation holds:

$$2\,K_0(\omega) = \int_{-\infty}^\infty \frac{e^{i\omega t}}{\sqrt{t^2+1}} \,dt.$$

It can be proven by showing equality to the above integral definition for . This is done by integrating a closed curve in the first quadrant of the complex plane.

Modified Bessel functions and can be represented in terms of rapidly convergent integrals[27]

$$\begin{align}
K_{\frac{1}{3}}(\xi) &= \sqrt{3} \int_0^\infty \exp \left(- \xi \left(1+\frac{4x^2}{3}\right) \sqrt{1+\frac{x^2}{3}} \right) \,dx, \\
K_{\frac{2}{3}}(\xi) &= \frac{1}{\sqrt{3}} \int_0^\infty \frac{3+2x^2}{\sqrt{1+\frac{x^2}{3}}} \exp \left(- \xi \left(1+\frac{4x^2}{3}\right) \sqrt{1+\frac{x^2}{3}}\right) \,dx.
\end{align}$$

The MODIFIED BESSEL FUNCTION OF THE SECOND KIND has also been called by the following names (now rare):

-   BASSET FUNCTION after Alfred Barnard Basset
-   MODIFIED BESSEL FUNCTION OF THE THIRD KIND
-   MODIFIED HANKEL FUNCTION[28]
-   MACDONALD FUNCTION after Hector Munro Macdonald

Spherical Bessel functions: ,

When solving the Helmholtz equation in spherical coordinates by separation of variables, the radial equation has the form

$$x^2 \frac{d^2 y}{dx^2} + 2x \frac{dy}{dx} + \left(x^2 - n(n + 1)\right) y = 0.$$

The two linearly independent solutions to this equation are called the SPHERICAL BESSEL FUNCTIONS and , and are related to the ordinary Bessel functions and by[29]

$$\begin{align}
j_n(x) &= \sqrt{\frac{\pi}{2x}} J_{n+\frac{1}{2}}(x), \\
y_n(x) &= \sqrt{\frac{\pi}{2x}} Y_{n+\frac{1}{2}}(x) = (-1)^{n+1} \sqrt{\frac{\pi}{2x}} J_{-n-\frac{1}{2}}(x).
\end{align}$$

is also denoted or ; some authors call these functions the SPHERICAL NEUMANN FUNCTIONS.

The spherical Bessel functions can also be written as (RAYLEIGH'S FORMULAS)[30]

$$\begin{align}
j_n(x) &= (-x)^n \left(\frac{1}{x}\frac{d}{dx}\right)^n \frac{\sin x}{x}, \\
y_n(x) &= -(-x)^n \left(\frac{1}{x}\frac{d}{dx}\right)^n \frac{\cos x}{x}.
\end{align}$$

The first spherical Bessel function is also known as the (unnormalized) sinc function. The first few spherical Bessel functions are:[31]

$$\begin{align}
j_0(x) &= \frac{\sin x}{x}. \\
j_1(x) &= \frac{\sin x}{x^2} - \frac{\cos x}{x}, \\
j_2(x) &= \left(\frac{3}{x^2} - 1\right) \frac{\sin x}{x} - \frac{3\cos x}{x^2}, \\
j_3(x) &= \left(\frac{15}{x^3} - \frac{6}{x}\right) \frac{\sin x}{x} - \left(\frac{15}{x^2} - 1\right) \frac{\cos x}{x}
\end{align}$$

and[32]

$$\begin{align}
y_0(x) &= -j_{-1}(x) = -\frac{\cos x}{x}, \\
y_1(x) &= j_{-2}(x)  = -\frac{\cos x}{x^2} - \frac{\sin x}{x}, \\
y_2(x) &= -j_{-3}(x) = \left(-\frac{3}{x^2} + 1\right) \frac{\cos x}{x} - \frac{3\sin x}{x^2}, \\
y_3(x) &= j_{-4}(x)  = \left(-\frac{15}{x^3} + \frac{6}{x}\right) \frac{\cos x}{x} - \left(\frac{15}{x^2} - 1\right) \frac{\sin x}{x}.
\end{align}$$

Generating function

The spherical Bessel functions have the generating functions[33]

$$\begin{align}
\frac{1}{z} \cos \left(\sqrt{z^2 - 2zt}\right) &= \sum_{n=0}^\infty \frac{t^n}{n!} j_{n-1}(z), \\
\frac{1}{z} \sin \left(\sqrt{z^2 + 2zt}\right) &= \sum_{n=0}^\infty \frac{(-t)^n}{n!} y_{n-1}(z).
\end{align}$$

Differential relations

In the following, is any of , , , for 0, ±1, ±2, ...}}[34]

$$\begin{align}
\left(\frac{1}{z}\frac{d}{dz}\right)^m \left (z^{n+1} f_n(z)\right ) &= z^{n-m+1} f_{n-m}(z), \\
\left(\frac{1}{z}\frac{d}{dz}\right)^m \left (z^{-n} f_n(z)\right ) &= (-1)^m z^{-n-m} f_{n+m}(z).
\end{align}$$

Spherical Hankel functions: ,

There are also spherical analogues of the Hankel functions:

$$\begin{align}
h_n^{(1)}(x) &= j_n(x) + i y_n(x), \\
h_n^{(2)}(x) &= j_n(x) - i y_n(x).
\end{align}$$

In fact, there are simple closed-form expressions for the Bessel functions of half-integer order in terms of the standard trigonometric functions, and therefore for the spherical Bessel functions. In particular, for non-negative integers :

$$h_n^{(1)}(x) = (-i)^{n+1} \frac{e^{ix}}{x} \sum_{m=0}^n \frac{i^m}{m!\,(2x)^m} \frac{(n+m)!}{(n-m)!},$$

and is the complex-conjugate of this (for real ). It follows, for example, that }} and −}}, and so on.

The spherical Hankel functions appear in problems involving spherical wave propagation, for example in the multipole expansion of the electromagnetic field.

Riccati–Bessel functions: , , ,

Riccati–Bessel functions only slightly differ from spherical Bessel functions:

$$\begin{align}
S_n(x)     &= x j_n(x) = \sqrt{\frac{\pi x}{2}} J_{n+\frac{1}{2}}(x) \\
C_n(x)     &= -x y_n(x) = -\sqrt{\frac{\pi x}{2}} Y_{n+\frac{1}{2}}(x) \\
\xi_n(x)   &= x h_n^{(1)}(x) = \sqrt{\frac{\pi x}{2}} H_{n+\frac{1}{2}}^{(1)}(x) = S_n(x) - iC_n(x) \\
\zeta_n(x) &= x h_n^{(2)}(x) = \sqrt{\frac{\pi x}{2}} H_{n+\frac{1}{2}}^{(2)}(x) = S_n(x) + iC_n(x)
\end{align}$$

They satisfy the differential equation

$$x^2 \frac{d^2 y}{dx^2} + \left (x^2 - n(n + 1)\right) y = 0.$$

For example, this kind of differential equation appears in quantum mechanics while solving the radial component of the Schrödinger's equation with hypothetical cylindrical infinite potential barrier.[35] This differential equation, and the Riccati–Bessel solutions, also arises in the problem of scattering of electromagnetic waves by a sphere, known as Mie scattering after the first published solution by Mie (1908). See e.g., Du (2004)[36] for recent developments and references.

Following Debye (1909), the notation , is sometimes used instead of , .


Asymptotic forms

The Bessel functions have the following asymptotic forms. For small arguments , one obtains, when is not a negative integer:[37]

$$J_\alpha(z) \sim \frac{1}{\Gamma(\alpha+1)} \left( \frac{z}{2} \right)^\alpha.$$

When is a negative integer, we have

$$J_\alpha(z) \sim \frac{(-1)^{\alpha}}{(-\alpha)!} \left( \frac{2}{z} \right)^\alpha.$$

For the Bessel function of the second kind we have three cases:

$$Y_\alpha(z) \sim \begin{cases}
\dfrac{2}{\pi} \left( \ln \left(\dfrac{z}{2} \right) + \gamma \right) & \text{if } \alpha = 0 \\
-\dfrac{\Gamma(\alpha)}{\pi} \left( \dfrac{2}{z} \right)^\alpha + \dfrac{1}{\Gamma(\alpha+1)} \left(\dfrac{z}{2} \right)^\alpha \cot(\alpha \pi) & \text{if } \alpha \text{ is not a non-positive integer (one term dominates unless } \alpha \text{ is imaginary)}, \\
 -\dfrac{(-1)^\alpha\Gamma(-\alpha)}{\pi} \left( \dfrac{z}{2} \right)^\alpha & \text{if } \alpha\text{ is a negative integer,}
\end{cases}$$

where is the Euler–Mascheroni constant (0.5772...).

For large real arguments , one cannot write a true asymptotic form for Bessel functions of the first and second kind (unless is half-integer) because they have zeros all the way out to infinity, which would have to be matched exactly by any asymptotic expansion. However, for a given value of one can write an equation containing a term of order :[38]

$$\begin{align}
J_\alpha(z) &= \sqrt{\frac{2}{\pi z}}\left(\cos \left(z-\frac{\alpha\pi}{2} - \frac{\pi}{4}\right) + e^{\left|\operatorname{Im}(z)\right|}\mathrm{O}\left(|z|^{-1}\right)\right) && \text{for } \left|\arg z\right| < \pi, \\
Y_\alpha(z) &= \sqrt{\frac{2}{\pi z}}\left(\sin \left(z-\frac{\alpha\pi}{2} - \frac{\pi}{4}\right) + e^{\left|\operatorname{Im}(z)\right|}\mathrm{O}\left(|z|^{-1}\right)\right) && \text{for } \left|\arg z\right| < \pi.
\end{align}$$

(For }} the last terms in these formulas drop out completely; see the spherical Bessel functions above.) Even though these equations are true, better approximations may be available for complex . For example, when is near the negative real line is approximated better by

$$J_0(z) \approx \sqrt{\frac{-2}{\pi z}}\cos \left(z+\frac{\pi}{4}\right)$$

than by

$$J_0(z) \approx \sqrt{\frac{2}{\pi z}}\cos \left(z-\frac{\pi}{4}\right).$$

The asymptotic forms for the Hankel functions are:

$$\begin{align}
H_\alpha^{(1)}(z) &\sim \sqrt{\frac{2}{\pi z}}e^{i\left(z-\frac{\alpha\pi}{2}-\frac{\pi}{4}\right)} && \text{for } -\pi < \arg z < 2\pi, \\
H_\alpha^{(2)}(z) &\sim \sqrt{\frac{2}{\pi z}}e^{-i\left(z-\frac{\alpha\pi}{2}-\frac{\pi}{4}\right)} && \text{for } -2\pi < \arg z < \pi.
\end{align}$$

These can be extended to other values of using equations relating and to and .[39]

It is interesting that although the Bessel function of the first kind is the average of the two Hankel functions, is not asymptotic to the average of these two asymptotic forms when is negative (because one or the other will not be correct there, depending on the used). But the asymptotic forms for the Hankel functions permit us to write asymptotic forms for the Bessel functions of first and second kinds for _complex_ (non-real) so long as goes to infinity at a constant phase angle (using the square root having positive real part):

$$\begin{align}
J_\alpha(z) &\sim \frac{1}{\sqrt{2\pi z}} e^{i\left(z-\frac{\alpha\pi}{2}-\frac{\pi}{4}\right)} && \text{for } -\pi < \arg z < 0, \\
J_\alpha(z) &\sim \frac{1}{\sqrt{2\pi z}} e^{-i\left(z-\frac{\alpha\pi}{2}-\frac{\pi}{4}\right)} && \text{for } 0 < \arg z < \pi, \\
Y_\alpha(z) &\sim -i\frac{1}{\sqrt{2\pi z}} e^{i\left(z-\frac{\alpha\pi}{2}-\frac{\pi}{4}\right)} && \text{for } -\pi < \arg z < 0, \\
Y_\alpha(z) &\sim -i\frac{1}{\sqrt{2\pi z}} e^{-i\left(z-\frac{\alpha\pi}{2}-\frac{\pi}{4}\right)} && \text{for } 0 < \arg z < \pi.
\end{align}$$

For the modified Bessel functions, Hankel developed asymptotic (large argument) expansions as well:[40][41]

$$\begin{align}
I_\alpha(z) &\sim \frac{e^z}{\sqrt{2\pi z}} \left(1 - \frac{4 \alpha^2 - 1}{8z} + \frac{\left(4 \alpha^2 - 1\right) \left(4 \alpha^2 - 9\right)}{2! (8z)^2} - \frac{\left(4 \alpha^2 - 1\right) \left(4 \alpha^2 - 9\right) \left(4 \alpha^2 - 25\right)}{3! (8z)^3} + \cdots \right) &&\text{for }\left|\arg z\right|<\frac{\pi}{2}, \\
K_\alpha(z) &\sim \sqrt{\frac{\pi}{2z}} e^{-z} \left(1 + \frac{4 \alpha^2 - 1}{8z} + \frac{\left(4 \alpha^2 - 1\right) \left(4 \alpha^2 - 9\right)}{2! (8z)^2} + \frac{\left(4 \alpha^2 - 1\right) \left(4 \alpha^2 - 9\right) \left(4 \alpha^2 - 25\right)}{3! (8z)^3} + \cdots \right) &&\text{for }\left|\arg z\right|<\frac{3\pi}{2}.
\end{align}$$

When }}, all the terms except the first vanish, and we have

$$\begin{align}
I_{\frac{1}{2}}(z) &= \sqrt{\frac{2}{\pi z}}\sinh(z) \sim \frac{e^z}{\sqrt{2\pi z}} && \text{for }\left|\arg z\right|<\tfrac{\pi}{2}, \\
K_{\frac{1}{2}}(z) &= \sqrt{\frac{\pi}{2z}} e^{-z}.
\end{align}$$

For small arguments , we have

$$\begin{align}
I_\alpha(z) &\sim \frac{1}{\Gamma(\alpha+1)} \left( \frac{z}{2} \right)^\alpha, \\
K_\alpha(z) &\sim \begin{cases} -\ln \left (\dfrac{z}{2} \right ) - \gamma & \text{if } \alpha=0 \\ \frac{\Gamma(\alpha)}{2} \left( \dfrac{2}{z} \right)^\alpha & \text{if } \alpha > 0 \end{cases}
\end{align}$$


Full domain approximations with elementary functions

Very good approximation (error below 0.3 of the maximum value 1) of the Bessel function J₀ for an arbitrary value of the argument may be obtained with the elementary functions by joining the trigonometric approximation working for smaller values of with the expression containing attenuated cosine function valid for large arguments with a usage of the smooth transition function $\frac 1 {1 + (x/7)^{20}}$ i.e.

$$J_0(x) \approx \left [\frac 1 6 + \frac 1 3\cos \frac x 2 + \frac 1 3 \cos \frac{\sqrt{3} x} 2 + \frac 1 6 \cos x \right ] \frac{1}{1 + (x/7)^{20}} + \sqrt{\frac {2}{\pi |x|}}\cos\left[x - \frac \pi 4 \sgn(x)\right]\left[1 - \frac{1}{1 + (x/7)^{20}}\right].$$


Properties

For integer order _n_}}, is often defined via a Laurent series for a generating function:

$$e^{\left(\frac{x}{2}\right)\left(t-\frac{1}{t}\right)} = \sum_{n=-\infty}^\infty J_n(x) t^n$$

an approach used by P. A. Hansen in 1843. (This can be generalized to non-integer order by contour integration or other methods.) Another important relation for integer orders is the _Jacobi–Anger expansion_:

$$e^{iz \cos \phi} = \sum_{n=-\infty}^\infty i^n J_n(z) e^{in\phi}$$

and

$$e^{\pm iz \sin \phi} = J_0(z)+2\sum_{n=1}^\infty J_{2n}(z) \cos(2n\phi) \pm 2i \sum_{n=0}^\infty J_{2n+1}(z)\sin((2n+1)\phi)$$

which is used to expand a plane wave as a sum of cylindrical waves, or to find the Fourier series of a tone-modulated FM signal.

More generally, a series

$$f(z)=a_0^\nu J_\nu (z)+ 2 \cdot \sum_{k=1}^\infty a_k^\nu J_{\nu+k}(z)$$

is called Neumann expansion of . The coefficients for 0}} have the explicit form

$$a_k^0=\frac{1}{2 \pi i} \int_{|z|=c} f(z) O_k(z) \,dz$$

where is Neumann's polynomial.[42]

Selected functions admit the special representation

$$f(z)=\sum_{k=0}^\infty a_k^\nu J_{\nu+2k}(z)$$

with

$$a_k^\nu=2(\nu+2k) \int_0^\infty f(z) \frac{J_{\nu+2k}(z)}z \,dz$$

due to the orthogonality relation

$$\int_0^\infty J_\alpha(z) J_\beta(z) \frac {dz} z= \frac 2 \pi \frac{\sin\left(\frac \pi 2 (\alpha-\beta) \right)}{\alpha^2 -\beta^2}$$

More generally, if has a branch-point near the origin of such a nature that

_f_(_z_) = ∑_(_k_ = 0)_a__(_k_)_J__(_ν_ + _k_)(_z_)

then

$$\mathcal{L}\left\{\sum_{k=0} a_k J_{\nu+k}\right\}(s)=\frac{1}{\sqrt{1+s^2}}\sum_{k=0}\frac{a_k}{\left(s+\sqrt{1+s^2} \right) ^{\nu+k}}$$

or

$$\sum_{k=0} a_k \xi^{\nu+k}= \frac{1+\xi^2}{2\xi} \mathcal{L}\{f \} \left( \frac{1-\xi^2}{2\xi} \right)$$

where ℒ{f} is the Laplace transform of .[43]

Another way to define the Bessel functions is the Poisson representation formula and the Mehler-Sonine formula:

$$\begin{align}
J_\nu(z) &= \frac{\left(\frac{z}{2}\right)^\nu}{\Gamma\left(\nu +\frac{1}{2}\right)\sqrt{\pi}} \int_{-1}^1 e^{izs}\left(1-s^2\right)^{\nu-\frac{1}{2}} \,ds \\[5px]
&=\frac 2{{\left(\frac{z}{2}\right)}^\nu\cdot \sqrt{\pi} \cdot \Gamma\left(\frac{1}{2}-\nu\right)} \int_1^\infty \frac{\sin zu}{\left(u^2-1 \right )^{\nu+\frac 1 2}} \,du
\end{align}$$

where and .[44] This formula is useful especially when working with Fourier transforms.

Because Bessel's equation becomes Hermitian (self-adjoint) if it is divided by , the solutions must satisfy an orthogonality relationship for appropriate boundary conditions. In particular, it follows that:

$$\int_0^1 x J_\alpha\left(x u_{\alpha,m}\right) J_\alpha\left(x u_{\alpha,n}\right) \,dx = \frac{\delta_{m,n}}{2} \left[J_{\alpha+1} \left(u_{\alpha,m}\right)\right]^2 = \frac{\delta_{m,n}}{2} \left[J_{\alpha}'\left(u_{\alpha,m}\right)\right]^2$$

where , is the Kronecker delta, and is the th zero of . This orthogonality relation can then be used to extract the coefficients in the Fourier–Bessel series, where a function is expanded in the basis of the functions for fixed and varying .

An analogous relationship for the spherical Bessel functions follows immediately:

$$\int_0^1 x^2 j_\alpha\left(x u_{\alpha,m}\right) j_\alpha\left(x u_{\alpha,n}\right) \,dx = \frac{\delta_{m,n}}{2} \left[j_{\alpha+1}\left(u_{\alpha,m}\right)\right]^2$$

If one defines a boxcar function of that depends on a small parameter as:

$$f_\varepsilon(x)=\varepsilon \operatorname{rect}\left(\frac{x-1}\varepsilon\right)$$

(where is the rectangle function) then the Hankel transform of it (of any given order ), , approaches as approaches zero, for any given . Conversely, the Hankel transform (of the same order) of is :

∫₀^(∞)_k__J__(_α_)(_k__x_)_g__(_ε_)(_k_) _d__k_ = _f__(_ε_)(_x_)

which is zero everywhere except near 1. As approaches zero, the right-hand side approaches , where is the Dirac delta function. This admits the limit (in the distributional sense):

∫₀^(∞)_k__J__(_α_)(_k__x_)_J__(_α_)(_k_) _d__k_ = _δ_(_x_ − 1)

A change of variables then yields the _closure equation_:[45]

$$\int_0^\infty x J_\alpha(ux) J_\alpha(vx) \,dx = \frac{1}{u} \delta(u - v)$$

for . The Hankel transform can express a fairly arbitrary function as an integral of Bessel functions of different scales. For the spherical Bessel functions the orthogonality relation is:

$$\int_0^\infty x^2 j_\alpha(ux) j_\alpha(vx) \,dx = \frac{\pi}{2u^2} \delta(u - v)$$

for .

Another important property of Bessel's equations, which follows from Abel's identity, involves the Wronskian of the solutions:

$$A_\alpha(x) \frac{dB_\alpha}{dx} - \frac{dA_\alpha}{dx} B_\alpha(x) = \frac{C_\alpha}{x}$$

where and are any two solutions of Bessel's equation, and is a constant independent of (which depends on α and on the particular Bessel functions considered). In particular,

$$J_\alpha(x) \frac{dY_\alpha}{dx} - \frac{dJ_\alpha}{dx} Y_\alpha(x) = \frac{2}{\pi x}$$

and

$$I_\alpha(x) \frac{dK_\alpha}{dx} - \frac{dI_\alpha}{dx} K_\alpha(x) = -\frac{1}{x},$$

for .

For , the even entire function of genus 1, , has only real zeros. Let

0 < _j__(_α_, 1) < _j__(_α_, 2) < ⋯ < _j__(_α_, _n_) < ⋯

be all its positive zeros, then

$$J_{\alpha}(z)=\frac{\left(\frac{z}{2}\right)^\alpha}{\Gamma(\alpha+1)}\prod_{n=1}^{\infty}\left(1-\frac{z^2}{j_{\alpha,n}^2}\right)$$

(There are a large number of other known integrals and identities that are not reproduced here, but which can be found in the references.)

Recurrence relations

The functions , , , and all satisfy the recurrence relations[46]

$$\frac{2\alpha}{x} Z_\alpha(x) = Z_{\alpha-1}(x) + Z_{\alpha+1}(x)$$

and

$$2\frac{dZ_\alpha (x)}{dx} = Z_{\alpha-1}(x) - Z_{\alpha+1}(x),$$

where denotes , , , or . (These two identities are often combined, e.g. added or subtracted, to yield various other relations.) In this way, for example, one can compute Bessel functions of higher orders (or higher derivatives) given the values at lower orders (or lower derivatives). In particular, it follows that[47]

$$\begin{align}
\left( \frac{1}{x} \frac{d}{dx} \right)^m \left[ x^\alpha Z_\alpha (x) \right] &= x^{\alpha - m} Z_{\alpha - m} (x), \\
\left( \frac{1}{x} \frac{d}{dx} \right)^m \left[ \frac{Z_\alpha (x)}{x^\alpha} \right] &= (-1)^m \frac{Z_{\alpha + m} (x)}{x^{\alpha + m}}.
\end{align}$$

_Modified_ Bessel functions follow similar relations:

$$e^{\left(\frac{x}{2}\right)\left(t+\frac{1}{t}\right)} = \sum_{n=-\infty}^\infty I_n(x) t^n$$

and

$$e^{z \cos \theta} = I_0(z) + 2\sum_{n=1}^\infty I_n(z) \cos n\theta.$$

The recurrence relation reads

$$\begin{align}
C_{\alpha-1}(x) - C_{\alpha+1}(x) &= \frac{2\alpha}{x} C_\alpha(x), \\
C_{\alpha-1}(x) + C_{\alpha+1}(x) &= 2\frac{dC_\alpha}{dx},
\end{align}$$

where denotes or . These recurrence relations are useful for discrete diffusion problems.


Multiplication theorem

The Bessel functions obey a multiplication theorem

$$\lambda^{-\nu} J_\nu(\lambda z) = \sum_{n=0}^\infty \frac{1}{n!} \left(\frac{\left(1 - \lambda^2\right)z}{2}\right)^n J_{\nu+n}(z),$$

where and may be taken as arbitrary complex numbers.[48][49] For ,[50] the above expression also holds if is replaced by . The analogous identities for modified Bessel functions and are

$$\lambda^{-\nu} I_\nu(\lambda z) = \sum_{n=0}^\infty \frac{1}{n!} \left(\frac{\left(\lambda^2 - 1\right)z}{2}\right)^n I_{\nu+n}(z)$$

and

$$\lambda^{-\nu} K_\nu(\lambda z) = \sum_{n=0}^\infty \frac{(-1)^n}{n!} \left(\frac{\left(\lambda^2 - 1\right)z}{2}\right)^n K_{\nu+n}(z).$$


Zeros of the Bessel function

Bourget's hypothesis

Bessel himself originally proved that for nonnegative integers , the equation 0}} has an infinite number of solutions in .[51] When the functions are plotted on the same graph, though, none of the zeros seem to coincide for different values of except for the zero at 0}}. This phenomenon is known as BOURGET'S HYPOTHESIS after the 19th-century French mathematician who studied Bessel functions. Specifically it states that for any integers and , the functions and have no common zeros other than the one at 0}}. The hypothesis was proved by Carl Ludwig Siegel in 1929.[52]

Numerical approaches

For numerical studies about the zeros of the Bessel function, see , and .


See also

-   Anger function
-   Bessel–Clifford function
-   Bessel–Maitland function
-   Bessel polynomials
-   Fourier–Bessel series
-   Schlömilch's Series
-   Hahn–Exton {{mvar
-   Hankel transform
-   Jackson {{mvar
-   Kelvin functions
-   Kontorovich-Lebedev transform
-   Lerche–Newberger sum rule
-   Lommel function
-   Lommel polynomial
-   Neumann polynomial
-   Sonine formula
-   Struve function
-   Vibrations of a circular drum
-   Weber function


Notes


References

-   -   Arfken, George B. and Hans J. Weber, _Mathematical Methods for Physicists_, 6th edition (Harcourt: San Diego, 2005). .
-   Bayin, S. S. _Mathematical Methods in Science and Engineering_, Wiley, 2006, Chapter 6.
-   Bayin, S. S., _Essentials of Mathematical Methods in Science and Engineering_, Wiley, 2008, Chapter 11.
-   Bowman, Frank _Introduction to Bessel Functions_ (Dover: New York, 1958). .
-   -   .

-   .

-   B Spain, M. G. Smith, _Functions of mathematical physics_, Van Nostrand Reinhold Company, London, 1970. Chapter 9 deals with Bessel functions.
-   N. M. Temme, _Special Functions. An Introduction to the Classical Functions of Mathematical Physics_, John Wiley and Sons, Inc., New York, 1996. . Chapter 9 deals with Bessel functions.
-   Watson, G. N., _A Treatise on the Theory of Bessel Functions, Second Edition_, (1995) Cambridge University Press. .
-   .

-   Gil, A., Segura, J., Temme, N. M. (2007). Numerical methods for special functions. Society for Industrial and Applied Mathematics.


External links

-   .

-   .

-   .

-   Wolfram function pages on Bessel J and Y functions, and modified Bessel I and K functions. Pages include formulas, function evaluators, and plotting calculators.
-   Wolfram Mathworld – Bessel functions of the first kind.
-   Bessel functions J_(ν), Y_(ν), I_(ν) and K_(ν) in Librow Function handbook.
-   F. W. J. Olver, L. C. Maximon, Bessel Functions (chapter 10 of the Digital Library of Mathematical Functions).
-   C. B. Moler, 1. Numerical Computing with MATLAB. The MathWorks, Inc. Society for Industrial and Applied Mathematics.

Category:Special hypergeometric functions Category:Fourier analysis

[1]

[2]

[3] Abramowitz and Stegun, p. 360, 9.1.10.

[4] Abramowitz and Stegun, p. 358, 9.1.5.

[5]

[6]

[7]

[8] Watson, p. 176

[9]

[10]

[11] Arfken & Weber, exercise 11.1.17.

[12] Abramowitz and Stegun, p. 362, 9.1.69.

[13]

[14] http://www.mhtlab.uwaterloo.ca/courses/me755/web_chap4.pdf

[15] NIST Digital Library of Mathematical Functions, (10.8.1). Accessed on line Oct. 25, 2016.

[16]

[17] Watson, p. 178.

[18] Abramowitz and Stegun, p. 358, 9.1.3, 9.1.4.

[19] Abramowitz and Stegun, p. 358, 9.1.6.

[20] Abramowitz and Stegun, p. 360, 9.1.25.

[21]

[22] Abramowitz and Stegun, p. 375, 9.6.2, 9.6.10, 9.6.11.

[23] Abramowitz and Stegun, p. 375, 9.6.3, 9.6.5.

[24] Abramowitz and Stegun, p. 374, 9.6.1.

[25]

[26] Watson, p. 181.

[27] . Derived from formulas sourced to I. S. Gradshteyn and I. M. Ryzhik, _Table of Integrals, Series, and Products_ (Fizmatgiz, Moscow, 1963; Academic Press, New York, 1980).

[28] Referred to as such in:

[29] Abramowitz and Stegun, p. 437, 10.1.1.

[30] Abramowitz and Stegun, p. 439, 10.1.25, 10.1.26.

[31] Abramowitz and Stegun, p. 438, 10.1.11.

[32] Abramowitz and Stegun, p. 438, 10.1.12.

[33] Abramowitz and Stegun, p. 439, 10.1.39.

[34] Abramowitz and Stegun, p. 439, 10.1.23, 10.1.24.

[35] Griffiths. Introduction to Quantum Mechanics, 2nd edition, p. 154.

[36]

[37]

[38] Abramowitz and Stegun, p. 364, 9.2.1.

[39] NIST Digital Library of Mathematical Functions, Section 10.11.

[40] Abramowitz and Stegun, p. 377, 9.7.1.

[41] Abramowitz and Stegun, p. 378, 9.7.2.

[42] Abramowitz and Stegun, p. 363, 9.1.82 ff.

[43]

[44]

[45] Arfken & Weber, section 11.2

[46] Abramowitz and Stegun, p. 361, 9.1.27.

[47] Abramowitz and Stegun, p. 361, 9.1.30.

[48] Abramowitz and Stegun, p. 363, 9.1.74.

[49]

[50]

[51] Bessel, F. (1824) "Untersuchung des Theils der planetarischen Störungen", _Berlin Abhandlungen_, article 14.

[52] Watson, pp. 484–485.