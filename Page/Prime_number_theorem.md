In number theory, the PRIME NUMBER THEOREM (PNT) describes the asymptotic distribution of the prime numbers among the positive integers. It formalizes the intuitive idea that primes become less common as they become larger by precisely quantifying the rate at which this occurs. The theorem was proved independently by Jacques Hadamard and Charles Jean de la Vallée Poussin in 1896 using ideas introduced by Bernhard Riemann (in particular, the Riemann zeta function).

The first such distribution found is , where is the prime-counting function and is the natural logarithm of . This means that for large enough , the probability that a random integer not greater than is prime is very close to . Consequently, a random integer with at most digits (for large enough ) is about half as likely to be prime as a random integer with at most digits. For example, among the positive integers of at most 1000 digits, about one in 2300 is prime (), whereas among positive integers of at most 2000 digits, about one in 4600 is prime (). In other words, the average gap between consecutive prime numbers among the first integers is roughly .[1]


Statement

Prime_number_theorem_ratio_convergence.svg Prime_number_theorem_absolute_error.svg

Let be the prime-counting function that gives the number of primes less than or equal to , for any real number . For example, 4}} because there are four prime numbers (2, 3, 5 and 7) less than or equal to 10. The prime number theorem then states that is a good approximation to , in the sense that the limit of the _quotient_ of the two functions and as increases without bound is 1:

    $\lim_{x\to\infty}\frac{\;\pi(x)\;}{\;\left[ \frac{x}{\log(x)}\right]\;} = 1,$

known as THE ASYMPTOTIC LAW OF DISTRIBUTION OF PRIME NUMBERS. Using asymptotic notation this result can be restated as

$$\pi(x)\sim \frac{x}{\log x}.$$

This notation (and the theorem) does _not_ say anything about the limit of the _difference_ of the two functions as increases without bound. Instead, the theorem states that approximates in the sense that the relative error of this approximation approaches 0 as increases without bound.

The prime number theorem is equivalent to the statement that the th prime number satisfies

_p__(_n_) ∼ _n_log (_n_),

the asymptotic notation meaning, again, that the relative error of this approximation approaches 0 as increases without bound. For example, the th prime number is ,[2] and ()log() rounds to , a relative error of about 6.4%.

The prime number theorem is also equivalent to

$$\lim_{x\to\infty} \frac{\vartheta (x)}x = \lim_{x\to\infty} \frac{\psi(x)}x=1,$$
where and are the first and the second Chebyshev functions respectively.


History of the proof of the asymptotic law of prime numbers

Based on the tables by Anton Felkel and Jurij Vega, Adrien-Marie Legendre conjectured in 1797 or 1798 that is approximated by the function , where and are unspecified constants. In the second edition of his book on number theory (1808) he then made a more precise conjecture, with 1}} and −1.08366}}. Carl Friedrich Gauss considered the same question at age 15 or 16 "in the year 1792 or 1793", according to his own recollection in 1849.[3] In 1838 Peter Gustav Lejeune Dirichlet came up with his own approximating function, the logarithmic integral (under the slightly different form of a series, which he communicated to Gauss). Both Legendre's and Dirichlet's formulas imply the same conjectured asymptotic equivalence of and stated above, although it turned out that Dirichlet's approximation is considerably better if one considers the differences instead of quotients.

In two papers from 1848 and 1850, the Russian mathematician Pafnuty Chebyshev attempted to prove the asymptotic law of distribution of prime numbers. His work is notable for the use of the zeta function , for real values of the argument "", as in works of Leonhard Euler, as early as 1737. Chebyshev's papers predated Riemann's celebrated memoir of 1859, and he succeeded in proving a slightly weaker form of the asymptotic law, namely, that if the limit of as goes to infinity exists at all, then it is necessarily equal to one.[4] He was able to prove unconditionally that this ratio is bounded above and below by two explicitly given constants near 1, for all sufficiently large .[5] Although Chebyshev's paper did not prove the Prime Number Theorem, his estimates for were strong enough for him to prove Bertrand's postulate that there exists a prime number between and for any integer .

An important paper concerning the distribution of prime numbers was Riemann's 1859 memoir "On the Number of Primes Less Than a Given Magnitude", the only paper he ever wrote on the subject. Riemann introduced new ideas into the subject, the chief of them being that the distribution of prime numbers is intimately connected with the zeros of the analytically extended Riemann zeta function of a complex variable. In particular, it is in this paper of Riemann that the idea to apply methods of complex analysis to the study of the real function originates. Extending the ideas of Riemann, two proofs of the asymptotic law of the distribution of prime numbers were obtained independently by Jacques Hadamard and Charles Jean de la Vallée Poussin and appeared in the same year (1896). Both proofs used methods from complex analysis, establishing as a main step of the proof that the Riemann zeta function is non-zero for all complex values of the variable that have the form 1 + _it_}} with .[6]

During the 20th century, the theorem of Hadamard and de la Vallée Poussin also became known as the Prime Number Theorem. Several different proofs of it were found, including the "elementary" proofs of Atle Selberg and Paul Erdős (1949). While the original proofs of Hadamard and de la Vallée Poussin are long and elaborate, later proofs introduced various simplifications through the use of Tauberian theorems but remained difficult to digest. A short proof was discovered in 1980 by American mathematician Donald J. Newman.[7][8] Newman's proof is arguably the simplest known proof of the theorem, although it is non-elementary in the sense that it uses Cauchy's integral theorem from complex analysis.


Proof sketch

Here is a sketch of the proof referred to in one of Terence Tao's lectures[9]. Like most proofs of the PNT, it starts out by reformulating the problem in terms of a less intuitive, but better-behaved, prime-counting function. The idea is to count the primes (or a related set such as the set of prime powers) with _weights_ to arrive at a function with smoother asymptotic behavior. The most common such generalized counting function is the Chebyshev function , defined by

$$\psi(x) =\!\!\!\! \sum_\stackrel{p^k \le x,}{p \text{ is prime}} \!\!\!\!\log p.$$

This is sometimes written as

_ψ_(_x_) = ∑_(_n_ ≤ _x_)_Λ_(_n_),

where is the von Mangoldt function, namely

$$\Lambda(n) = \begin{cases} \log p & \text{if }n=p^k \text{ for some prime } p \text{ and integer } k \ge 1, \\ 0 & \text{otherwise.} \end{cases}$$

It is now relatively easy to check that the PNT is equivalent to the claim that

$$\lim_{x\to\infty} \frac{\psi(x)}{x}=1.$$
Indeed, this follows from the easy estimates

$$\psi(x) = \sum_{p\le x} \log p \left\lfloor \frac{\log x}{\log p} \right\rfloor \le \sum_{p\le x} \log x = \pi(x)\log x$$
and (using [[big_O_notation|big = -\frac{1}{2}\log\left(1-\frac{1}{x^2}\right), which vanishes for a large . The nontrivial zeros, namely those on the critical strip , can potentially be of an asymptotic order comparable to the main term if 1}}, so we need to show that all zeros have real part strictly less than 1.

To do this, we take for granted that is meromorphic in the half-plane , and is analytic there except for a simple pole at 1}}, and that there is a product formula

$$\zeta(s)=\prod_p\frac{1}{1-p^{-s}}$$
for . This product formula follows from the existence of unique prime factorization of integers, and shows that is never zero in this region, so that its logarithm is defined there and

$$\log\zeta(s)=-\sum_p\log \left(1-p^{-s} \right)=\sum_{p,n}\frac{p^{-ns}}{n}.$$

Write _x_ + _iy_}}; then

$$\big|\zeta(x+iy)\big|=\exp\left(\sum_{n,p}\frac{\cos ny\log p}{np^{nx}}\right).$$

Now observe the identity

3 + 4cos _ϕ_ + cos 2_ϕ_ = 2(1 + cos _ϕ_)² ≥ 0,
so that

$$\left|\zeta(x)^3\zeta(x+iy)^4\zeta(x+2iy)\right|=\exp\left(\sum_{n,p}\frac{3+4\cos(ny\log p) +\cos (2ny\log p)}{np^{nx}}\right)\ge 1$$

for all . Suppose now that 0}}. Certainly is not zero, since has a simple pole at 1}}. Suppose that and let tend to 1 from above. Since ζ(s) has a simple pole at 1}} and stays analytic, the left hand side in the previous inequality tends to 0, a contradiction.

Finally, we can conclude that the PNT is heuristically true. To rigorously complete the proof there are still serious technicalities to overcome, due to the fact that the summation over zeta zeros in the explicit formula for does not converge absolutely but only conditionally and in a "principal value" sense. There are several ways around this problem but many of them require rather delicate complex-analytic estimates that are beyond the scope of this paper. Edwards's book[10] provides the details. Another method is to use Ikehara's Tauberian theorem, though this theorem is itself quite hard to prove. D. J. Newman observed that the full strength of Ikehara's theorem is not needed for the prime number theorem, and one can get away with a special case that is much easier to prove.


Prime-counting function in terms of the logarithmic integral

In a handwritten note on a reprint of his 1838 paper "", which he mailed to Gauss, Dirichlet conjectured (under a slightly different form appealing to a series rather than an integral) that an even better approximation to is given by the offset logarithmic integral function , defined by

$$\operatorname{Li}(x) = \int_2^x \frac{dt}{\log t} = \operatorname{li}(x) - \operatorname{li}(2).$$

Indeed, this integral is strongly suggestive of the notion that the "density" of primes around should be . This function is related to the logarithm by the asymptotic expansion

$$\operatorname{Li}(x) \sim \frac{x}{\log x} \sum_{k=0}^\infty \frac{k!}{(\log x)^k} = \frac{x}{\log x} + \frac{x}{(\log x)^2} + \frac{2x}{(\log x)^3} + \cdots$$

So, the prime number theorem can also be written as . In fact, in another paper in 1899 de la Vallée Poussin proved that

$$\pi(x) = \operatorname{Li} (x) + O \left(x e^{-a\sqrt{\log x}}\right) \quad\text{as } x \to \infty$$

for some positive constant , where is the [[big_O_notation|big \exp \left( -\sqrt{ \frac{\log x}{6.455} } \right) for x ≥ 229.[11]

Because of the connection between the Riemann zeta function and , the Riemann hypothesis has considerable importance in number theory: if established, it would yield a far better estimate of the error involved in the prime number theorem than is available today. More specifically, Helge von Koch showed in 1901[12] that, if and only if the Riemann hypothesis is true, the error term in the above relation can be improved to

$$\pi(x) = \operatorname{Li} (x) + O\left(\sqrt x \log x\right).$$

The constant involved in the big notation was estimated in 1976 by Lowell Schoenfeld:[13] assuming the Riemann hypothesis,

$$\big|\pi(x) - \operatorname{li}(x)\big| < \frac{\sqrt x \log x}{8\pi}$$

for all . He also derived a similar bound for the Chebyshev prime-counting function :

$$\big|\psi(x) - x\big| < \frac{\sqrt x (\log x)^2 }{8\pi}$$

for all . This latter bound has been shown to express a variance to mean power law (when regarded as a random function over the integers), [[pink_noise|; see the article on Skewes' number for more details. (On the other hand, the offset logarithmic integral is smaller than already for 2}}; indeed, 0}}, while 1}}.)


Elementary proofs

In the first half of the twentieth century, some mathematicians (notably G. H. Hardy) believed that there exists a hierarchy of proof methods in mathematics depending on what sorts of numbers (integers, reals, complex) a proof requires, and that the prime number theorem (PNT) is a "deep" theorem by virtue of requiring complex analysis.[14] This belief was somewhat shaken by a proof of the PNT based on Wiener's tauberian theorem, though this could be set aside if Wiener's theorem were deemed to have a "depth" equivalent to that of complex variable methods.

In March 1948, Atle Selberg established, by "elementary" means, the asymptotic formula

$$\vartheta ( x )\log ( x ) + \sum\limits_{p \le x} {\log ( p )}\ \vartheta \left( {\frac{x}{p}} \right) = 2x\log ( x ) + O( x )$$

where

$$\vartheta ( x ) = \sum\limits_{p \le x} {\log ( p )}$$

for primes .[15] By July of that year, Selberg and Paul Erdős had each obtained elementary proofs of the PNT, both using Selberg's asymptotic formula as a starting point.[16][17] These proofs effectively laid to rest the notion that the PNT was "deep", and showed that technically "elementary" methods were more powerful than had been believed to be the case. On the history of the elementary proofs of the PNT, including the Erdős–Selberg priority dispute, see an article by Dorian Goldfeld.[18]

There is some debate about the significance of Erdős and Selberg's result. There is no rigorous and widely accepted definition of the notion of elementary proof in number theory, so it is not clear exactly in what sense their proof is "elementary". Although it does not use complex analysis, it is in fact much more technical than the standard proof of PNT. One possible definition of an "elementary" proof is "one that can be carried out in first order Peano arithmetic." There are number-theoretic statements (for example, the Paris–Harrington theorem) provable using second order but not first order methods, but such theorems are rare to date. Erdős and Selberg's proof can certainly be formalized in Peano arithmetic, and in 1994, Charalambos Cornaros and Costas Dimitracopoulos proved that their proof can be formalized in a very weak fragment of PA, namely ,[19] However, this does not address the question of whether or not the standard proof of PNT can be formalized in PA.


Computer verifications

In 2005, Avigad _et al._ employed the Isabelle theorem prover to devise a computer-verified variant of the Erdős–Selberg proof of the PNT.[20] This was the first machine-verified proof of the PNT. Avigad chose to formalize the Erdős–Selberg proof rather than an analytic one because while Isabelle's library at the time could implement the notions of limit, derivative, and transcendental function, it had almost no theory of integration to speak of.[21]

In 2009, John Harrison employed HOL Light to formalize a proof employing complex analysis.[22] By developing the necessary analytic machinery, including the Cauchy integral formula, Harrison was able to formalize "a direct, modern and elegant proof instead of the more involved 'elementary' Erdős–Selberg argument".


Prime number theorem for arithmetic progressions

Let denote the number of primes in the arithmetic progression less than . Dirichlet and Legendre conjectured, and de la Vallée Poussin proved, that, if and are coprime, then

$$\pi_{n,a}(x) \sim \frac{1}{\varphi(n)} \operatorname{Li}(x),$$

where is Euler's totient function. In other words, the primes are distributed evenly among the residue classes modulo with }}1. This is stronger than Dirichlet's theorem on arithmetic progressions (which only states that there is an infinity of primes in each class) and can be proved using similar methods used by Newman for his proof of the prime number theorem.[23]

The Siegel–Walfisz theorem gives a good estimate for the distribution of primes in residue classes.

Prime number race

Although we have in particular

_π__(4, 1)(_x_) ∼ _π__(4, 3)(_x_),

empirically the primes congruent to 3 are more numerous and are nearly always ahead in this "prime number race"; the first reversal occurs at 26861}}.[24] However Littlewood showed in 1914[25] that there are infinitely many sign changes for the function

_π__(4, 1)(_x_) − _π__(4, 3)(_x_),

so the lead in the race switches back and forth infinitely many times. The phenomenon that is ahead most of the time is called Chebyshev's bias. The prime number race generalizes to other moduli and is the subject of much research; Pál Turán asked whether it is always the case that and change places when and are coprime to .[26] Granville and Martin give a thorough exposition and survey.[27]


Non-asymptotic bounds on the prime-counting function

The prime number theorem is an _asymptotic_ result. It gives an ineffective bound on as a direct consequence of the definition of the limit: for all , there is an such that for all ,

    $(1-\varepsilon)\frac {x}{\log x} < \pi(x) < (1+\varepsilon)\frac {x}{\log x}.$

However, better bounds on are known, for instance Pierre Dusart's

$$\frac{x}{\log x}\left(1+\frac{1}{\log x}\right) < \pi(x) < \frac{x}{\log x}\left(1+\frac{1}{\log x}+\frac{2.51}{(\log x)^2}\right).$$
The first inequality holds for all and the second one for .[28]

A weaker but sometimes useful bound for is[29]

$$\frac {x}{\log x + 2} < \pi(x) < \frac {x}{\log x - 4}.$$

In Pierre Dusart's thesis there are stronger versions of this type of inequality that are valid for larger . Later in 2010, Dusart proved:[30]

$$\begin{align}
\frac {x} {\log x - 1} &< \pi(x) &&\text{for } x \ge 5393 , \text{ and}\\
\pi(x) &<  \frac {x} {\log x - 1.1} &&\text{for } x \ge 60184 .
\end{align}$$

The proof by de la Vallée Poussin implies the following. For every , there is an such that for all ,

    $\frac {x}{\log x - (1-\varepsilon)} < \pi(x) < \frac {x}{\log x - (1+\varepsilon)}.$


Approximations for the __th prime number

As a consequence of the prime number theorem, one gets an asymptotic expression for the th prime number, denoted by :

_p__(_n_) ∼ _n_log _n_.
A better approximation is[31]

$$\frac{p_n}{n} = \log n + \log \log n - 1 + \frac{\log \log n - 2}{\log n} - \frac{(\log\log n)^2 - 6 \log \log n + 11}{2(\log n)^2} + o \left( \frac {1}{(\log n)^2}\right).$$
Again considering the th prime number , this gives an estimate of ; the first 5 digits match and relative error is about 0.00005%.

Rosser's theorem states that

_p__(_n_) > _n_log _n_.
This can be improved by the following pair of bounds:[32] [33]

$$\log n + \log\log n - 1 < \frac{p_n}{n} < \log n + \log \log n \quad\text{for } n \ge 6.$$


Table of , , and

The table compares exact values of to the two approximations and . The last column, , is the average prime gap below .

    {| class="wikitable" style="text-align: right"

! ! ! ! ! ! |- | 10 | 4 | −0.3 | 0.921 | 2.2 | 2.5 |- | 10² | 25 | 3.3 | 1.151 | 5.1 | 4 |- | 10³ | 168 | 23 | 1.161 | 10 | 5.952 |- | 10⁴ | | 143 | 1.132 | 17 | 8.137 |- | 10⁵ | | 906 | 1.104 | 38 | 10.425 |- | 10⁶ | | | 1.084 | 130 | 12.740 |- | 10⁷ | | | 1.071 | 339 | 15.047 |- | 10⁸ | | | 1.061 | 754 | 17.357 |- | 10⁹ | | | 1.054 | | 19.667 |- | 10¹⁰ | | | 1.048 | | 21.975 |- | 10¹¹ | | | 1.043 | | 24.283 |- | 10¹² | | | 1.039 | | 26.590 |- | 10¹³ | | | 1.034 | | 28.896 |- | 10¹⁴ | | | 1.033 | | 31.202 |- | 10¹⁵ | | | 1.031 | | 33.507 |- | 10¹⁶ | | | 1.029 | | 35.812 |- | 10¹⁷ | | | 1.027 | | 38.116 |- | 10¹⁸ | | | 1.025 | | 40.420 |- | 10¹⁹ | | | 1.024 | | 42.725 |- | 10²⁰ | | | 1.023 | | 45.028 |- | 10²¹ | | | 1.022 | | 47.332 |- | 10²² | | | 1.021 | | 49.636 |- | 10²³ | | | 1.020 | | 51.939 |- | 10²⁴ | | | 1.019 | | 54.243 |- | 10²⁵ | | | 1.018 | | 56.546 |- | OEIS | | | | | |}

The value for was originally computed assuming the Riemann hypothesis;[34] it has since been verified unconditionally.[35]


Analogue for irreducible polynomials over a finite field

There is an analogue of the prime number theorem that describes the "distribution" of irreducible polynomials over a finite field; the form it takes is strikingly similar to the case of the classical prime number theorem.

To state it precisely, let GF(_q_)}} be the finite field with elements, for some fixed , and let be the number of monic _irreducible_ polynomials over whose degree is equal to . That is, we are looking at polynomials with coefficients chosen from , which cannot be written as products of polynomials of smaller degree. In this setting, these polynomials play the role of the prime numbers, since all other monic polynomials are built up of products of them. One can then prove that

$$N_n \sim \frac{q^n}{n}.$$
If we make the substitution _q_^(_n_)}}, then the right hand side is just

$$\frac{x}{\log_q x},$$
which makes the analogy clearer. Since there are precisely monic polynomials of degree (including the reducible ones), this can be rephrased as follows: if a monic polynomial of degree is selected randomly, then the probability of it being irreducible is about .

One can even prove an analogue of the Riemann hypothesis, namely that

$$N_n = \frac{q^n}n + O\left(\frac{q^\frac{n}{2}}{n}\right).$$

The proofs of these statements are far simpler than in the classical case. It involves a short combinatorial argument,[36] summarised as follows: every element of the degree extension of is a root of some irreducible polynomial whose degree divides ; by counting these roots in two different ways one establishes that

_q_^(_n_) = ∑_(_d_ ∣ _n_)_d__N__(_d_),
where the sum is over all divisors of . Möbius inversion then yields

$$N_n = \frac{1}{n} \sum_{d\mid n} \mu\left(\frac{n}{d}\right) q^d,$$
where is the Möbius function. (This formula was known to Gauss. ) The main term occurs for _n_}}, and it is not difficult to bound the remaining terms. The "Riemann hypothesis" statement depends on the fact that the largest proper divisor of can be no larger than .


See also

-   Abstract analytic number theory for information about generalizations of the theorem.
-   Landau prime ideal theorem for a generalization to prime ideals in algebraic number fields.
-   Riemann hypothesis


Notes


References

-   -


External links

-   -   Table of Primes by Anton Felkel.
-   Short video visualizing the Prime Number Theorem.
-   Prime formulas and Prime number theorem at MathWorld.
-   -   How Many Primes Are There? and The Gaps between Primes by Chris Caldwell, University of Tennessee at Martin.
-   Tables of prime-counting functions by Tomás Oliveira e Silva

Category:Theorems in analytic number theory Category:Theorems about prime numbers Category:Logarithms

[1]

[2]

[3] C. F. Gauss. _Werke_, Bd 2, 1st ed, 444–447. Göttingen 1863.

[4]

[5]

[6]

[7]

[8]

[9]

[10]

[11]

[12]

[13] .

[14]

[15]

[16]

[17]

[18]

[19] .

[20]

[21]

[22]

[23]

[24]

[25]

[26]

[27]

[28]

[29]

[30]

[31]

[32]

[33]

[34]

[35]

[36]