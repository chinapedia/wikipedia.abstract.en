A chord (in red) of length 0.3 on a sinusoidal function. The universal chord theorem guarantees the existence of chords of length 1/_n_ for functions satisfying certain conditions.

In mathematical analysis, the UNIVERSAL CHORD THEOREM states that if a function _f_ is continuous on [_a_,_b_] and satisfies f(a) = f(b), then for every natural number n, there exists some x ∈ [a, b] such that $f(x) = f\left(x + \frac{b-a}{n}\right)$.[1]


History

The theorem was published by Paul Lévy in 1934 as a generalization of Rolle's Theorem.[2]


Statement of the theorem

Let H(f) = {h ∈ [0, 1] : f(x) = f(x + h) for some x} denote the CHORD SET of the function _f_. If _f_ is a continuous function and h ∈ H(f), then $\frac h n \in H(f)$ for all natural numbers _n_. [3]

==Case of _n_ = 2== The case when _n_ = 2 can be considered an application of the Borsuk–Ulam theorem to the real line. It says that if f(x) is continuous on some interval I = [a, b] with the condition that f(a) = f(b), then there exists some x ∈ [a, b] such that $f\left(x + \frac{b-a}{2}\right)$.

In less generality, if $f : [0,1] \rightarrow \R$ is continuous and f(0) = f(1), then there exists $x \in \left[0,\frac{1}{2}\right]$ that satisfies f(x) = f(x + 1/2).

==Proof of _n_ = 2== Consider the function $g:\left[a, \dfrac{b+a}{2}\right]\to\mathbb{R}$ defined by $g(x) = f\left(x+\dfrac{b-a}{2}\right) - f(x)$. Being the sum of two continuous functions, g is continuous, g(a) + g(b) = f(b) − f(a) = 0. It follows that g(a) ⋅ g(b) ≤ 0 and by applying the intermediate value theorem, there exists $c\in \left[a, \dfrac{b-a}{2}\right]$ such that g(c) = 0, so that $f(c) = f\left(c + \dfrac{b-a}{2}\right)$. Which concludes the proof of the theorem for n = 2


Proof of general case

The proof of the theorem in the general case is very similar to the proof for n = 2 Let n be a non negative integer, and consider the function $g:\left[a, b - \dfrac{b-a}{n}\right]\to\mathbb{R}$ defined by $g(x) = f\left(x + \dfrac{b-a}{n}\right) - f(x)$. Being the sum of two continuous functions, g is continuous. Furthermore, $\sum_{k=0}^{n-1}g\left(a+k\cdot\dfrac{b-a}{n}\right) = 0$. It follows that there exists integers i, j such that $g\left(a+i\cdot\dfrac{b-a}{n}\right)\le 0\le g\left(a+j\cdot\dfrac{b-a}{n}\right)$ The intermediate value theorems gives us c such that g(c) = 0 and the theorem follows.


See also

-   Intermediate value theorem
-   Borsuk–Ulam theorem
-   Rolle's theorem


References

Category:Mathematical theorems

[1] Rosenbaum, J. T. (May, 1971) _The American Mathematical Monthly_, Vol. 78, No. 5, pp. 509–513

[2] Paul Levy, "Sur une Généralisation du Théorème de Rolle", C. R. Acad. Sci., Paris, 198 (1934) 424–425.

[3]