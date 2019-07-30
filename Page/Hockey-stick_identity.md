Pascal_triangle_small.png

In combinatorial mathematics, the identity

    $\sum^n_{i=r}{i\choose r}={n+1\choose r+1} \qquad \text{ for } n,r\in\mathbb{N}, \quad n>r$

is known as the HOCKEY-STICK[1] or CHRISTMAS STOCKING IDENTITY.[2] That name stems from the graphical representation of the identity on Pascal's triangle: when the addends represented in the summation and the sum itself are highlighted, the shape revealed is vaguely reminiscent of those objects.


Proofs

The inductive and algebraic proofs both make use of Pascal's identity:

$${n \choose k}={n-1\choose k-1}+{n-1\choose k}.$$

Inductive proof

This identity can be proven by induction on n.

Base case Let n = r;

$$\sum^n_{i=r} {i\choose r} = \sum^r_{i=r}{i\choose r}={r\choose r} = 1 = {r+1\choose r+1} = {n+1\choose r+1}.$$

Inductive step Suppose, for some k ∈ ℕ, k ≥ r,

$$\sum^k_{i=r}{i\choose r}={k+1\choose r+1}$$

Then

$$\sum^{k+1}_{i=r} {i\choose r} = \left(\sum^k_{i=r} {i\choose r} \right) + {k+1\choose r}={k+1\choose r+1}+{k+1\choose r}={k+2\choose r+1}.$$

Algebraic proof

We use a telescoping argument to simplify the computation of the sum:

$$\begin{align}
\sum_{t=\color{blue}0}^n \binom{t}{k}
=\sum_{t=\color{blue}k}^n\binom tk
&= \sum_{t=k}^n\left[ \binom {t+1}{k+1}-\binom {t}{k+1}\right]\\
&=\sum_{t=\color{green}k}^{\color{green}n}\binom {\color{green}{t+1}}{k+1} - \sum_{t=k}^n \binom t{k+1}\\
&=\sum_{t=\color{green}{k+1}}^{\color{green}{n+1}}\binom {\color{green}{t}}{k+1} - \sum_{t=k}^n \binom t{k+1}\\
&=\binom{n+1}{k+1}-\underbrace{\binom k{k+1}}_0&&\text{by telescoping}\\
&=\binom{n+1}{k+1}.
\end{align}$$

A combinatorial proof

Imagine that we are distributing n indistinguishable candies to k distinguishable children. By a direct application of the stars and bars method, there are

$$\binom{n+k-1}{ k-1}$$

ways to do this. Alternatively, we can first give 0 ≤ i ≤ n candies to the oldest child so that we are essentially giving n − i candies to k − 1 kids and again, with stars and bars and double counting, we have

$$\binom{n+k-1}{ k-1}=\sum_{i=0}^n\binom{n+k-2-i}{k-2},$$

which simplifies to the desired result by taking n′ = n + k − 2 and r = k − 2, and noticing that n′ − n = k − 2 = r:

$$\binom{n'+1}{ r+1}=\sum_{i=0}^n \binom {n'-i}r = \sum_{i=r}^{n'} \binom {i}r .$$

Another combinatorial proof

We can form a committee of size k + 1 from a group of n + 1 people in

$$\binom{n+1}{k+1}$$

ways. Now we hand out the numbers 1, 2, 3, …, n − k + 1 to n − k + 1 of the n + 1 people. We can divide this into n − k + 1 disjoint cases. In general, in case x, 1 ≤ x ≤ n − k + 1, person x is on the committee and persons 1, 2, 3, …, x − 1 are not on the committee. This can be done in

$$\binom{n-x+1}{k}$$

ways. Now we can sum the values of these n − k + 1 disjoint cases, getting

$$\binom{n+1}{k+1} = \binom n k + \binom {n-1} k + \binom{n-2} k + \cdots + \binom{k+1} k+ \binom k k.$$


See also

-   Pascal's identity
-   Pascal's triangle
-   Vandermonde's identity


References


External links

-   On AOPS
-   On StackExchange, Mathematics

Category:Theorems Category:Combinatorics Category:Mathematical identities Category:Articles containing proofs Category:Factorial and binomial topics

[1] CH Jones (1996) _Generalized Hockey Stick Identities and N-Dimensional Block Walking._ Fibonacci Quarterly 34(3), 280-288.

[2]