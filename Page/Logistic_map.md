The LOGISTIC MAP is a polynomial mapping (equivalently, recurrence relation) of degree 2, often cited as an archetypal example of how complex, chaotic behaviour can arise from very simple non-linear dynamical equations.[1] The map was popularized in a 1976 paper by the biologist Robert May,[2] in part as a discrete-time demographic model analogous to the logistic equation first created by Pierre François Verhulst.[3] Mathematically, the logistic map is written where is a number between zero and one that represents the ratio of existing population to the maximum possible population. The values of interest for the parameter (sometimes also denoted ) are those in the interval . This nonlinear difference equation is intended to capture two effects:

-   _reproduction_ where the population will increase at a rate proportional to the current population when the population size is small.
-   _starvation_ (density-dependent mortality) where the growth rate will decrease at a rate proportional to the value obtained by taking the theoretical "carrying capacity" of the environment less the current population.

However, as a demographic model the logistic map has the pathological problem that some initial conditions and parameter values (for example, if ) lead to negative population sizes. This problem does not appear in the older Ricker model, which also exhibits chaotic dynamics.

The 4}} case of the logistic map is a nonlinear transformation of both the bit-shift map and the 2}} case of the tent map.


Characteristics of the map

Behavior dependent on

The image below shows the amplitude and frequency content of some logistic map iterates for parameter values ranging from 2 to 4.

By varying the parameter , the following behavior is observed:

-   With between 0 and 1, the population will eventually die, independent of the initial population.
-   With between 1 and 2, the population will quickly approach the value , independent of the initial population.
-   With between 2 and 3, the population will also eventually approach the same value , but first will fluctuate around that value for some time. The rate of convergence is linear, except for 3}}, when it is dramatically slow, less than linear (see Bifurcation memory).
-   With between 3 and 1 +  ≈ 3.44949, from almost all initial conditions the population will approach permanent oscillations between two values. These two values are dependent on .
-   With between 3.44949 and 3.54409 (approximately), from almost all initial conditions the population will approach permanent oscillations among four values. The latter number is a root of a 12th degree polynomial .
-   With increasing beyond 3.54409, from almost all initial conditions the population will approach oscillations among 8 values, then 16, 32, etc. The lengths of the parameter intervals that yield oscillations of a given length decrease rapidly; the ratio between the lengths of two successive bifurcation intervals approaches the Feigenbaum constant . This behavior is an example of a period-doubling cascade.
-   At is the onset of chaos, at the end of the period-doubling cascade. From almost all initial conditions, we no longer see oscillations of finite period. Slight variations in the initial population yield dramatically different results over time, a prime characteristic of chaos.
-   Most values of beyond 3.56995 exhibit chaotic behaviour, but there are still certain isolated ranges of that show non-chaotic behavior; these are sometimes called _islands of stability_. For instance, beginning at 1 + [4] (approximately 3.82843) there is a range of parameters that show oscillation among three values, and for slightly higher values of oscillation among 6 values, then 12 etc.
-   The development of the chaotic behavior of the logistic sequence as the parameter varies from approximately 3.56995 to approximately 3.82843 is sometimes called the Pomeau–Manneville scenario, characterized by a periodic (laminar) phase interrupted by bursts of aperiodic behavior. Such a scenario has an application in semiconductor devices.[5] There are other ranges that yield oscillation among 5 values etc.; all oscillation periods occur for some values of . A _period-doubling window_ with parameter is a range of -values consisting of a succession of subranges. The th subrange contains the values of for which there is a stable cycle (a cycle that attracts a set of initial points of unit measure) of period . This sequence of sub-ranges is called a _cascade of harmonics_.[6] In a sub-range with a stable cycle of period , there are unstable cycles of period for all . The value at the end of the infinite sequence of sub-ranges is called the _point of accumulation_ of the cascade of harmonics. As rises there is a succession of new windows with different values. The first one is for 1}}; all subsequent windows involving odd occur in decreasing order of starting with arbitrarily large .[7][8]
-   Beyond 4}}, almost all initial values eventually leave the interval and diverge.

For any value of there is at most one stable cycle. If a stable cycle exists, it is globally stable, attracting almost all points.[9] Some values of with a stable cycle of some period have infinitely many unstable cycles of various periods.

The bifurcation diagram at right summarizes this. The horizontal axis shows the possible values of the parameter while the vertical axis shows the set of values of visited asymptotically from almost all initial conditions by the iterates of the logistic equation with that value.

for the logistic map. The attractor for any value of the parameter is shown on the vertical line at that .]] The bifurcation diagram is a self-similar: if we zoom in on the above-mentioned value and focus on one arm of the three, the situation nearby looks like a shrunk and slightly distorted version of the whole diagram. The same is true for all other non-chaotic points. This is an example of the deep and ubiquitous connection between chaos and fractals.

Chaos and the logistic map

s show the stretching-and-folding structure of the logistic map]] of the logistic map, showing chaotic behaviour for most values of ]]

The relative simplicity of the logistic map makes it a widely used point of entry into a consideration of the concept of chaos.[10] A rough description of chaos is that chaotic systems exhibit a great sensitivity to initial conditions—a property of the logistic map for most values of between about 3.57 and 4 (as noted above).[11] A common source of such sensitivity to initial conditions is that the map represents a repeated folding and stretching of the space on which it is defined. In the case of the logistic map, the quadratic difference equation describing it may be thought of as a stretching-and-folding operation on the interval .[12]

The following figure illustrates the stretching and folding over a sequence of iterates of the map. Figure (a), left, shows a two-dimensional Poincaré plot of the logistic map's state space for 4}}, and clearly shows the quadratic curve of the difference equation (). However, we can embed the same sequence in a three-dimensional state space, in order to investigate the deeper structure of the map. Figure (b), right, demonstrates this, showing how initially nearby points begin to diverge, particularly in those regions of corresponding to the steeper sections of the plot.

This stretching-and-folding does not just produce a gradual divergence of the sequences of iterates, but an exponential divergence (see Lyapunov exponents), evidenced also by the complexity and unpredictability of the chaotic logistic map. In fact, exponential divergence of sequences of iterates explains the connection between chaos and unpredictability: a small error in the supposed initial state of the system will tend to correspond to a large error later in its evolution. Hence, predictions about future states become progressively (indeed, exponentially) worse when there are even very small errors in our knowledge of the initial state. This quality of unpredictability and apparent randomness led the logistic map equation to be used as a pseudo-random number generator in early computers.[13]

Since the map is confined to an interval on the real number line, its dimension is less than or equal to unity. Numerical estimates yield a correlation dimension of (Grassberger, 1983), a Hausdorff dimension of about 0.538 (Grassberger 1981), and an information dimension of approximately 0.5170976 (Grassberger 1983) for (onset of chaos). Note: It can be shown that the correlation dimension is certainly between 0.4926 and 0.5024.

It is often possible, however, to make precise and accurate statements about the _likelihood_ of a future state in a chaotic system. If a (possibly chaotic) dynamical system has an attractor, then there exists a probability measure that gives the long-run proportion of time spent by the system in the various regions of the attractor. In the case of the logistic map with parameter 4}} and an initial state in , the attractor is also the interval and the probability measure corresponds to the beta distribution with parameters 0.5}} and 0.5}}. Specifically,[14] the invariant measure is

$$\frac{1}{\pi\sqrt{x(1-x)}}.$$

Unpredictability is not randomness, but in some circumstances looks very much like it. Hence, and fortunately, even if we know very little about the initial state of the logistic map (or some other chaotic system), we can still say something about the distribution of states arbitrarily far into the future, and use this knowledge to inform decisions based on the state of the system.


Special cases of the map

Upper bound when

Although exact solutions to the recurrence relation are only available in a small number of cases, a closed-form upper bound on the logistic map is known when .[15] There are two aspects of the behavior of the logistic map that should be captured by an upper bound in this regime: the asymptotic geometric decay with constant , and the fast initial decay when is close to 1, driven by the term in the recurrence relation. The following bound captures both of these effects:

$$\forall n \in \{0, 1, \ldots \} \quad \text{and} \quad x_0, r \in [0, 1], \quad x_n \le \frac{x_0}{r^{-n} + x_0n}.$$

Solution when

The special case of can in fact be solved exactly, as can the case with ;[16] however, the general case can only be predicted statistically.[17] The solution when is,[18][19]

_x__(_n_) = sin²(2^(_n_)_θ__π_),

where the initial condition parameter is given by

$$\theta = \tfrac{1}{\pi}\sin^{-1}\left(\sqrt{x_0}\right).$$

For rational , after a finite number of iterations maps into a periodic sequence. But almost all are irrational, and, for irrational , never repeats itself – it is non-periodic. This solution equation clearly demonstrates the two key features of chaos – stretching and folding: the factor shows the exponential growth of stretching, which results in sensitive dependence on initial conditions, while the squared sine function keeps folded within the range .

For an equivalent solution in terms of complex numbers instead of trigonometric functions is[20]

$$x_n=\frac{-\alpha^{2^n} -\alpha^{-2^n} +2}{4}$$

where is either of the complex numbers

$$\alpha = \frac{-8x_0 + 4 \pm \sqrt{\left(-8x_0 + 4\right)^2 - 16}}{4}$$

with modulus equal to 1. Just as the squared sine function in the trigonometric solution leads to neither shrinkage nor expansion of the set of points visited, in the latter solution this effect is accomplished by the unit modulus of .

By contrast, the solution when is[21]

$$x_n = \tfrac{1}{2} - \tfrac{1}{2}\left(1-2x_0\right)^{2^n}$$

for . Since for any value of other than the unstable fixed point 0, the term goes to 0 as goes to infinity, so goes to the stable fixed point .

Finding cycles of any length when  4}}

For the 4}} case, from almost all initial conditions the iterate sequence is chaotic. Nevertheless, there exist an infinite number of initial conditions that lead to cycles, and indeed there exist cycles of length for _all_ integers . We can exploit the relationship of the logistic map to the dyadic transformation (also known as the _bit-shift map_) to find cycles of any length. If follows the logistic map 4_x_(n)_(1 − _x_(n)_)}} and follows the _dyadic transformation_

$$y_{n+1}=\begin{cases}2y_n & 0 \le y_n < \tfrac12 \\2y_n -1 & \tfrac12 \le y_n < 1, \end{cases}$$

then the two are related by a homeomorphism

_x__(_n_) = sin²(2_π__y__(_n_)).

The reason that the dyadic transformation is also called the bit-shift map is that when is written in binary notation, the map moves the binary point one place to the right (and if the bit to the left of the binary point has become a "1", this "1" is changed to a "0"). A cycle of length 3, for example, occurs if an iterate has a 3-bit repeating sequence in its binary expansion (which is not also a one-bit repeating sequence): 001, 010, 100, 110, 101, or 011. The iterate 001001001… maps into 010010010..., which maps into 100100100..., which in turn maps into the original 001001001...; so this is a 3-cycle of the bit shift map. And the other three binary-expansion repeating sequences give the 3-cycle 110110110… → 101101101… → 011011011… → 110110110.… Either of these 3-cycles can be converted to fraction form: for example, the first-given 3-cycle can be written as → → → . Using the above translation from the bit-shift map to the r = 4 logistic map gives the corresponding logistic cycle 0.611260467… → 0.950484434… → 0.188255099… → 0.611260467.… We could similarly translate the other bit-shift 3-cycle into its corresponding logistic cycle. Likewise, cycles of any length can be found in the bit-shift map and then translated into the corresponding logistic cycles.

However, since almost all numbers in are irrational, almost all initial conditions of the bit-shift map lead to the non-periodicity of chaos. This is one way to see that the logistic 4}} map is chaotic for almost all initial conditions.

The number of cycles of (minimal) length 1, 2, 3,…}} for the logistic map with 4}} (tent map with 2}}) is a known integer sequence : 2, 1, 2, 3, 6, 9, 18, 30, 56, 99, 186, 335, 630, 1161…. This tells us that the logistic map with 4}} has 2 fixed points, 1 cycle of length 2, 2 cycles of length 3 and so on. This sequence takes a particularly simple form for prime : . For example: 2 ⋅  = 630 is the number of cycles of length 13. Since this case of the logistic map is chaotic for almost all initial conditions, all of these finite-length cycles are unstable.


Related concepts

Feigenbaum universality of 1-D maps.

Universality of one-dimensional maps with parabolic maxima and Feigenbaum constants δ = 4.664201...,α = 2.502907... [22] [23] is well visible with map proposed as a toy model for discrete laser dynamics: x → Gx(1 − tanh (x)), where x stands for electric field amplitude, G[24] is laser gain as bifurcation parameter. for the hyperbolic tangent map. It is a self-similar in a wider range of bifurcation parameter G. This is the else ubiquitous connection between chaos and fractals.]] The gradual increase of G at interval [0, ∞) changes dynamics from regular to chaotic one [25] with qualitatively the same bifurcation diagram as those for logistic map.




See also

-   Logistic function, solution of the logistic map's continuous counterpart: the Logistic differential equation.
-   Lyapunov stability#Definition for discrete-time systems
-   Malthusian growth model
-   Periodic points of complex quadratic mappings, of which the logistic map is a special case confined to the real line
-   Radial basis function network, which illustrates the inverse problem for the logistic map.
-   Schröder's equation
-   Stiff equation


Notes


References

-   -   -   -   -


External links

-   Logistic Map. Contains an interactive computer simulation of the logistic map.
-   The Chaos Hypertextbook. An introductory primer on chaos and fractals.
-   Interactive Logistic map with iteration and bifurcation diagrams in Java.
-   Interactive Logistic map showing fixed points.
-   The Logistic Map and Chaos by Elmer G. Wiens
-   Complexity & Chaos (audiobook) by Roger White. Chapter 5 covers the Logistic Equation.
-   "History of iterated maps," in _A New Kind of Science_ by Stephen Wolfram. Champaign, IL: Wolfram Media, p. 918, 2002.
-   Discrete Logistic Equation by Marek Bodnar after work by Phil Ramsden, Wolfram Demonstrations Project.
-   Multiplicative coupling of 2 logistic maps by C. Pellicer-Lostao and R. Lopez-Ruiz after work by Ed Pegg Jr, Wolfram Demonstrations Project.
-   Using SAGE to investigate the discrete logistic equation

Category:Chaotic maps

[1]

[2]

[3] "

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

[22] Feigenbaum, M. J. (1976) "Universality in complex discrete dynamics", Los Alamos Theoretical Division Annual Report 1975-1976

[23]

[24]

[25]