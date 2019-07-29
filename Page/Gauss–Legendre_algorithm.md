The GAUSS–LEGENDRE ALGORITHM is an algorithm to compute the digits of . It is notable for being rapidly convergent, with only 25 iterations producing 45 million correct digits of . However, the drawback is that it is computer memory-intensive and therefore sometimes Machin-like formulas are used instead.

The method is based on the individual work of Carl Friedrich Gauss (1777–1855) and Adrien-Marie Legendre (1752–1833) combined with modern algorithms for multiplication and square roots. It repeatedly replaces two numbers by their arithmetic and geometric mean, in order to approximate their arithmetic-geometric mean.

The version presented below is also known as the GAUSS–EULER, BRENT–SALAMIN (or SALAMIN–BRENT) ALGORITHM;[1] it was independently discovered in 1975 by Richard Brent and Eugene Salamin. It was used to compute the first 206,158,430,000 decimal digits of on September 18 to 20, 1999, and the results were checked with Borwein's algorithm.


Algorithm

1. Initial value setting:

$$a_0 = 1\qquad b_0 = \frac{1}{\sqrt{2}}\qquad t_0 = \frac{1}{4}\qquad p_0 = 1.$$
2. Repeat the following instructions until the difference of a_(n) and b_(n) is within the desired accuracy:

$$\begin{align} a_{n+1} & = \frac{a_n + b_n}{2}, \\
                      b_{n+1} & = \sqrt{a_n b_n}, \\
                      t_{n+1} & = t_n - p_n(a_{n}-a_{n+1})^2, \\
                      p_{n+1} & = 2p_n.
        \end{align}$$
3. is then approximated as:

$$\pi \approx \frac{(a_{n+1}+b_{n+1})^2}{4t_{n+1}}.$$

The first three iterations give (approximations given up to and including the first incorrect digit):

3.140…

3.14159264…

3.1415926535897932382…

The algorithm has quadratic convergence, which essentially means that the number of correct digits doubles with each iteration of the algorithm.


Mathematical background

Limits of the arithmetic–geometric mean

The arithmetic–geometric mean of two numbers, a₀ and b₀, is found by calculating the limit of the sequences

$$\begin{align} a_{n+1} & = \frac{a_n+b_n}{2}, \\[6pt]
                     b_{n+1} & = \sqrt{a_n b_n},
       \end{align}$$

which both converge to the same limit.
If a₀ = 1 and b₀ = cos φ then the limit is ${\pi \over 2K(\sin\varphi)}$ where K(k) is the complete elliptic integral of the first kind

$$K(k) = \int_0^{\pi/2} \frac{d\theta}{\sqrt{1-k^2 \sin^2\theta}}.$$

If c₀ = sin φ, c_(i + 1) = a_(i) − a_(i + 1), then

$$\sum_{i=0}^\infty 2^{i-1} c_i^2 = 1 - {E(\sin\varphi)\over K(\sin\varphi)}$$

where E(k) is the complete elliptic integral of the second kind:

$$E(k) = \int_0^{\pi/2}\sqrt {1-k^2 \sin^2\theta}\; d\theta$$
and $K(k) = \int_0^{\pi/2}\frac{d\theta}{\sqrt {1-k^2 \sin^2\theta}}.$

Gauss knew of both of these results.[2] [3] [4]

Legendre’s identity

For φ and θ such that $\varphi+\theta={1 \over 2}\pi$ Legendre proved the identity:

$$K(\sin \varphi) E(\sin \theta ) + K(\sin \theta ) E(\sin \varphi) - K(\sin \varphi) K(\sin \theta) = {1 \over 2}\pi.$$
[5]

    Equivalently,
    $\forall \varphi: K(\sin\varphi)[E(\cos\varphi)-K(\cos\varphi)] + K(\cos\varphi)E(\sin\varphi) = \frac{\pi}{2}$

Gauss–Euler method

The values $\varphi=\theta={\pi\over 4}$ can be substituted into Legendre’s identity and the approximations to K, E can be found by terms in the sequences for the arithmetic geometric mean with a₀ = 1 and $b_0=\sin{\pi \over 4}=\frac{1}{\sqrt{2}}$.[6]

Elementary proof with integral calculus

The Gauss-Legendre algorithm can be proven without elliptic modular functions. This is done here[7] and here[8] using only integral calculus.


See also

-   Numerical approximations of


References


External links

-   Algorithm in Java and C

Category:Pi algorithms

[1] Brent, Richard, _Old and New Algorithms for pi_, Letters to the Editor, Notices of the AMS 60(1), p. 7

[2]

[3] Salamin, Eugene, _Computation of pi_, Charles Stark Draper Laboratory ISS memo 74–19, 30 January 1974, Cambridge, Massachusetts

[4]

[5]

[6] Adlaj, Semjon, _An eloquent formula for the perimeter of an ellipse_, Notices of the AMS 59(8), p. 1096

[7]

[8]