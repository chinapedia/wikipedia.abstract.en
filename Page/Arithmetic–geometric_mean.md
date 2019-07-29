In mathematics, the ARITHMETIC–GEOMETRIC MEAN (AGM) of two positive real numbers and is defined as follows:

Call and and :

$$\begin{align}
 a_0 &= x,\\
 g_0 &= y.
\end{align}$$

Then define the two interdependent sequences and as

$$\begin{align}
 a_{n+1} &= \tfrac12(a_n + g_n),\\
 g_{n+1} &= \sqrt{a_n g_n}\, ,
\end{align}$$

where the square root takes the principal value. These two sequences converge to the same number, the arithmetic–geometric mean of and ; it is denoted by , or sometimes by .

The arithmetic-geometric mean is used in fast algorithms for exponential and trigonometric functions, as well as some mathematical constants, in particular, computing π.


Example

To find the arithmetic–geometric mean of 24}} and 6}}, iterate as follows:

$$\begin{array}{rcccl}
 a_1 & = & \tfrac12(24 + 6) & = & 15\\
 g_1 & = & \sqrt{24 \cdot 6} & = & 12\\
 a_2 & = & \tfrac12(15 + 12) & = & 13.5\\
 g_2 & = & \sqrt{15 \cdot 12} & = & 13.416\ 407\ 8649\dots\\
 & & \vdots & &
\end{array}$$

The first five iterations give the following values:

    {| class="wikitable"

|- ! ! ! |- | 0 | 24 | 6 |- | 1 | 5 | 2 |- | 2 | .5 | .416 407 864 998 738 178 455 042... |- | 3 | 203 932 499 369 089 227 521... | 139 030 990 984 877 207 090... |- | 4 | 45 176 983 217 305... | 06 053 858 316 334... |- | 5 | 20... | 06... |}

The number of digits in which and agree (underlined) approximately doubles with each iteration. The arithmetic–geometric mean of 24 and 6 is the common limit of these two sequences, which is approximately .[1]


History

The first algorithm based on this sequence pair appeared in the works of Lagrange. Its properties were further analyzed by Gauss.[2]


Properties

The geometric mean of two positive numbers is never bigger than the arithmetic mean (see inequality of arithmetic and geometric means); as a consequence, for , is an increasing sequence, is a decreasing sequence, and . These are strict inequalities if .

is thus a number between the geometric and arithmetic mean of and ; it is also between and .

If , then _r M_(_x_,_y_)}}.

There is an integral-form expression for :

$$\begin{align}
 M(x,y) &= \frac{\pi}{2} \div \int_0^\frac{\pi}{2}\frac{d\theta}{\sqrt{x^2\cos^2\theta+y^2\sin^2\theta}}\\
        &= \frac{\pi}{4} \cdot \frac{x + y}{K\left( \frac{x - y}{x + y} \right)}
\end{align}$$

where is the complete elliptic integral of the first kind:

$$K(k) = \int_0^\frac{\pi}{2}\frac{d\theta}{\sqrt{1 - k^2\sin^2(\theta)}}$$

Indeed, since the arithmetic–geometric process converges so quickly, it provides an efficient way to compute elliptic integrals via this formula. In engineering, it is used for instance in elliptic filter design.[3]


Related concepts

The reciprocal of the arithmetic–geometric mean of 1 and the square root of 2 is called Gauss's constant, after Carl Friedrich Gauss.

$$\frac{1}{M(1, \sqrt{2})} = G = 0.8346268\dots$$

The geometric–harmonic mean can be calculated by an analogous method, using sequences of geometric and harmonic means. The arithmetic–harmonic mean can be similarly defined, but takes the same value as the geometric mean.

The arithmetic–geometric mean can be used to compute – among others – logarithms, complete and incomplete elliptic integrals of the first and second kind,[4] and Jacobi elliptic functions.[5]


Proof of existence

From the inequality of arithmetic and geometric means we can conclude that:

_g__(_n_) ≤ _a__(_n_)

and thus

$$g_{n + 1} = \sqrt{g_n \cdot a_n} \geq \sqrt{g_n \cdot g_n} = g_n$$

that is, the sequence is nondecreasing.

Furthermore, it is easy to see that it is also bounded above by the larger of and (which follows from the fact that both the arithmetic and geometric means of two numbers lie between them). Thus, by the monotone convergence theorem, the sequence is convergent, so there exists a such that:

lim_(_n_ → ∞)_g__(_n_) = _g_

However, we can also see that:

$$a_n = \frac{g_{n + 1}^2}{g_n}$$

and so:

$$\lim_{n\to \infty}a_n = \lim_{n\to \infty}\frac{g_{n + 1}^2}{g_{n}} = \frac{g^2}{g} = g$$

Q.E.D.


Proof of the integral-form expression

This proof is given by Gauss.[6] Let

$$I(x,y) = \int_0^{\pi/2}\frac{d\theta}{\sqrt{x^2\cos^2\theta+y^2\sin^2\theta}},$$

Changing the variable of integration to θ′, where

$$\sin\theta = \frac{2x\sin\theta'}{(x+y)+(x-y)\sin^2\theta'},$$

gives

$$\begin{align}
I(x,y) &= \int_0^{\pi/2}\frac{d\theta'}{\sqrt{\bigl(\frac12(x+y)\bigr)^2\cos^2\theta'+\bigl(\sqrt{xy}\bigr)^2\sin^2\theta'}}\\
       &= I\bigl(\tfrac12(x+y),\sqrt{xy}\bigr).
\end{align}$$

Thus, we have

$$\begin{align}
I(x,y) &= I(a_1, g_1) = I(a_2, g_2) = \cdots\\
  &= I\bigl(M(x,y),M(x,y)\bigr) = \pi/\bigr(2M(x,y)\bigl).
\end{align}$$
The last equality comes from observing that I(z, z) = π/(2z).

Finally, we obtain the desired result

_M_(_x_, _y_) = _π_/(2_I_(_x_, _y_)).


The AGM method

Gauss noticed[7][8] that the sequences



\begin{align} a_0 & & b_0 \\ a_1 & = \frac{a_0+b_0}{2}, & b_1 & = \sqrt{a_0 b_0} \\ a_2 & = \frac{a_1+b_1}{2}, & b_2 & = \sqrt{a_1 b_1} \\

   & {}\ \ \vdots & & {}\ \ \vdots \\

a_{N+1} & = \frac{a_N + b_N}{2}, & b_{N+1} & = \sqrt{a_N b_N} \end{align}

as

    N →  + ∞,

have the same limit:



\lim_{N\to\infty}a_N = \lim_{N\to\infty}b_N = M(a,b), the arithmetic–geometric mean, _agm_.

It is possible to use this fact to construct fast algorithms for calculating elementary transcendental functions and some classical constants, in particular, the constant .

Applications

The number _π_

For example, according to the Gauss–Salamin formula:[9]



\pi = \frac{4 \left( M(1; \frac{1}{\sqrt{2}}) \right)^2} {\displaystyle 1 - \sum_{j=1}^\infty 2^{j+1} c_j^2} ,

where

    $c_j = \frac 12\left(a_{j-1}-b_{j-1}\right)$

which can be computed without loss of precision using

    $c_j = \frac{c_{j-1}^2}{4a_j}.$

Complete elliptic integral _K_(sin_α_)

Taking a₀ = 1, b₀ = cos α , yields the _agm_,



\lim_{N\to\infty}a_N = \frac{\pi}{2K(\sin \alpha)}~, where is a complete elliptic integral of the first kind,

_K_(_k_) = ∫₀^(_π_/2)(1 − _k_²sin²_θ_)^( − 1/2) _d__θ_ .
That is to say that this quarter period may be efficiently computed through the _agm_,

$$K(k) =  \frac{\pi}{2~M(1,\sqrt{1-k^2})} ~.$$

Other applications

Using this property of the AGM along with the ascending transformations of Landen,[10] Richard Brent[11] suggested the first AGM algorithms for the fast evaluation of elementary transcendental functions (_e_^(_x_), cos _x_, sin _x_). Subsequently, many authors went on to study the use of the AGM algorithms.[12]


See also

-   Generalized mean
-   Gauss–Legendre algorithm


External links

-   Arithmetic-Geometric Mean Calculator
-   Proof of convergence rate in PlanetMath


References

Notes

Other

-   -   -

Category:Means Category:Special functions Category:Elliptic functions Category:Articles containing proofs

[1] agm(24, 6) at WolframAlpha

[2]  first published in _L'Enseignement Mathématique_, t. 30 (1984), p. 275-330

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