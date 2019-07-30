The number is a mathematical constant that is the base of the natural logarithm: the unique number whose natural logarithm is equal to one. It is approximately equal to 2.71828,[1] and is the limit of as approaches infinity, an expression that arises in the study of compound interest. It can also be calculated as the sum of the infinite series[2]

$$e =  \sum\limits_{n = 0}^{\infty} \frac{1}{n!} = \frac{1}{1} + \frac{1}{1} + \frac{1}{1\cdot 2} + \frac{1}{1\cdot 2\cdot 3} + \cdots$$

The constant can be characterized in many different ways. For example, can be defined as the unique positive number such that the graph of the function has unit slope at .[3] The function is called the (natural) exponential function, and is the unique exponential function equal to its own derivative. The natural logarithm, or logarithm to base , is the inverse function to the natural exponential function. The natural logarithm of a number can be defined directly as the area under the curve between and , in which case is the value of _k_ for which this area equals one (see image). There are alternative characterizations.

Sometimes called EULER'S NUMBER after the Swiss mathematician Leonhard Euler, is not to be confused with , the Euler–Mascheroni constant, sometimes called simply _Euler's constant_. The number is also known as NAPIER'S CONSTANT, but Euler's choice of the symbol is said to have been retained in his honor.[4] The constant was discovered by the Swiss mathematician Jacob Bernoulli while studying compound interest.[5]

The number is of eminent importance in mathematics,[6] alongside 0, 1, and [[Imaginary_unit| ubi _e_ denotat numerum, cuius logarithmus hyperbolicus est 1.'' (So it [i.e., _c_, the speed] will be $\frac{dc}{c} = \frac{dy ds}{rdx}$ or $c = e^{\int\frac{dy ds}{rdx}}$, where _e_ denotes the number whose hyperbolic [i.e., natural] logarithm is 1.) While in the subsequent years some researchers used the letter , the letter was more common and eventually became standard.

In mathematics, the standard is to typeset the constant as "", in italics; the ISO 80000-2:2009 standard recommends typesetting constants in an upright style, but this has not been validated by scientific community.


Applications

Compound interest

Jacob Bernoulli discovered this constant in 1683 by studying a question about compound interest:[7]

If the interest is credited twice in the year, the interest rate for each 6 months will be 50%, so the initial $1 is multiplied by 1.5 twice, yielding at the end of the year. Compounding quarterly yields , and compounding monthly yields If there are compounding intervals, the interest for each interval will be and the value at the end of the year will be $1.00×.

Bernoulli noticed that this sequence approaches a limit (the force of interest) with larger and, thus, smaller compounding intervals. Compounding weekly () yields $2.692597…, while compounding daily () yields $2.714567…, just two cents more. The limit as grows large is the number that came to be known as ; with _continuous_ compounding, the account value will reach $2.7182818...

More generally, an account that starts at $1 and offers an annual interest rate of will, after years, yield dollars with continuous compounding. (Here is the decimal equivalent of the rate of interest expressed as a percentage, so for 5% interest, .)

Bernoulli trials

The number itself also has applications to probability theory, where it arises in a way not obviously related to exponential growth. Suppose that a gambler plays a slot machine that pays out with a probability of one in and plays it times. Then, for large (such as a million) the probability that the gambler will lose every bet is approximately . For it is already approximately 1/2.79.

This is an example of a Bernoulli trial process. Each time the gambler plays the slots, there is a one in one million chance of winning. Playing one million times is modelled by the binomial distribution, which is closely related to the binomial theorem and Pascal's triangle. The probability of winning times out of a million trials is:

$$\binom{10^6}{k} \left(10^{-6}\right)^k\left(1 - 10^{-6}\right)^{10^6-k}.$$

In particular, the probability of winning zero times () is

$$\left(1 - \frac{1}{10^6}\right)^{10^6}.$$

This is very close to the limit

$$\lim_{n\to\infty} \left(1 - \frac{1}{n}\right)^n = \frac{1}{e}.$$

Standard normal distribution

The normal distribution with zero mean and unit standard deviation is known as the _standard normal distribution_, given by the probability density function

$$\phi(x) = \frac{1}{\sqrt{2\pi}} e^{-\frac{1}{2} x^2}.$$

The constraint of unit variance (and thus also unit standard deviation) results in the in the exponent, and the constraint of unit total area under the curve results in the factor $\textstyle 1/\sqrt{2\pi}$.^([proof]) This function is symmetric around , where it attains its maximum value $\textstyle 1/\sqrt{2\pi}$, and has inflection points at

Derangements

Another application of , also discovered in part by Jacob Bernoulli along with Pierre Raymond de Montmort, is in the problem of derangements, also known as the _hat check problem_:[8] guests are invited to a party, and at the door, the guests all check their hats with the butler, who in turn places the hats into boxes, each labelled with the name of one guest. But the butler has not asked the identities of the guests, and so he puts the hats into boxes selected at random. The problem of de Montmort is to find the probability that _none_ of the hats gets put into the right box. The answer is:

$$p_n = 1 - \frac{1}{1!} + \frac{1}{2!} - \frac{1}{3!} + \cdots + \frac{(-1)^n}{n!} = \sum_{k = 0}^n \frac{(-1)^k}{k!}.$$

As the number of guests tends to infinity, approaches . Furthermore, the number of ways the hats can be placed into the boxes so that none of the hats are in the right box is rounded to the nearest integer, for every positive .[9]

Optimal planning problems

A stick of length is broken into equal parts. The value of that maximizes the product of the lengths is then either[10]

$$n = \left\lfloor \frac{L}{e} \right\rfloor$$
or $\left\lfloor \frac{L}{e} \right\rfloor + 1.$

The stated result follows because the maximum value of x^( − 1)ln x occurs at x = e (Steiner's problem, discussed below). The quantity x^( − 1)ln x is a measure of information gleaned from an event occurring with probability 1/x, so that essentially the same optimal division appears in optimal planning problems like the secretary problem.

Asymptotics

The number occurs naturally in connection with many problems involving asymptotics. An example is Stirling's formula for the asymptotics of the factorial function, in which both the numbers and enter:

$$n! \sim \sqrt{2\pi n} \left(\frac{n}{e}\right)^n.$$

As a consequence,

$$e = \lim_{n\to\infty} \frac{n}{\sqrt[n]{n!}} .$$


In calculus

The principal motivation for introducing the number , particularly in calculus, is to perform differential and integral calculus with exponential functions and logarithms.[11] A general exponential }} has a derivative, given by a limit:

$$\begin{align}
  \frac{d}{dx}a^x
    &= \lim_{h\to 0}\frac{a^{x+h} - a^x}{h} = \lim_{h\to 0}\frac{a^x a^h - a^x}{h} \\
    &= a^x \cdot \left(\lim_{h\to 0}\frac{a^h - 1}{h}\right).
\end{align}$$

The parenthesized limit on the right is independent of the it depends only on the When the base is set this limit is equal and so is symbolically defined by the equation:

$$\frac{d}{dx}e^x = e^x.$$

Consequently, the exponential function with base is particularly suited to doing calculus. as opposed to some other number, as the base of the exponential function makes calculations involving the derivative much simpler.

Another motivation comes from considering the derivative of the base- logarithm,[12] i.e., of for :

$$\begin{align}
  \frac{d}{dx}\log_a x
    &= \lim_{h\to 0}\frac{\log_a(x + h) - \log_a(x)}{h} \\
    &= \lim_{h\to 0}\frac{\log_a(1 + h/x)}{x\cdot h/x} \\
    &= \frac{1}{x}\log_a\left(\lim_{u\to 0}(1 + u)^\frac{1}{u}\right) \\
    &= \frac{1}{x}\log_a e,
\end{align}$$

where the substitution _h_/_x_}} was made. The -logarithm of is 1, if equals . So symbolically,

$$\frac{d}{dx}\log_e x = \frac{1}{x}.$$

The logarithm with this special base is called the natural logarithm and is denoted as ; it behaves well under differentiation since there is no undetermined limit to carry through the calculations.

There are thus two ways in which to select such special numbers . One way is to set the derivative of the exponential function equal to , and solve for . The other way is to set the derivative of the base logarithm to and solve for . In each case, one arrives at a convenient choice of base for doing calculus. It turns out that these two solutions for are actually _the same_, the number .

Alternative characterizations

along the ]]

Other characterizations of are also possible: one is as the limit of a sequence, another is as the sum of an infinite series, and still others rely on integral calculus. So far, the following two (equivalent) properties have been introduced:

1.  The number is the unique positive real number such that $\frac{d}{dt}e^t = e^t$.
2.  The number is the unique positive real number such that $\frac{d}{dt} \log_e t = \frac{1}{t}$.

The following four characterizations can be proven equivalent:

| The number  is the sum of the infinite series

    $e = \sum_{n = 0}^\infty \frac{1}{n!} = \frac{1}{0!} + \frac{1}{1!} + \frac{1}{2!} + \frac{1}{3!} + \frac{1}{4!} + \cdots ,$

where is the factorial of .

| The number  is the unique positive real number such that

$$\int_1^e \frac{1}{t} \, dt = 1.$$

| If  is an exponential function, then the quantity τ = f(t)/f′(t) is a constant, sometimes called the time constant (it is the reciprocal of the exponential growth constant or decay constant).  The time constant is the time it takes for the exponential function to increase by a factor of : f(t + τ) = ef(t).

}}


Properties

Calculus

As in the motivation, the exponential function is important in part because it is the unique nontrivial function (up to multiplication by a constant) which is its own derivative

$$\frac{d}{dx}e^x = e^x$$

and therefore its own antiderivative as well:

∫_e_^(_x_) _d__x_ = _e_^(_x_) + _C_.

Inequalities

The number is the unique real number such that

$$\left(1 + \frac{1}{x}\right)^x < e < \left(1 + \frac{1}{x}\right)^{x+1}$$

for all positive .[13]

Also, we have the inequality

_e_^(_x_) ≥ _x_ + 1

for all real , with equality if and only if 0}}. Furthermore, is the unique base of the exponential for which the inequality holds for all .[14] This is a limiting case of Bernoulli's inequality.

Exponential-like functions

of $\sqrt[x]{x}$ .}}]]

Steiner's problem asks to find the global maximum for the function

$$f(x) = x^\frac{1}{x} .$$

This maximum occurs precisely at _e_}}. For proof, the inequality e^(y) ≥ y + 1, from above, evaluated at y = (x − e)/e and simplifying gives e^(x/e) ≥ x. So e^(1/e) ≥ x^(1/x) for all positive _x_.[15]

Similarly, 1/_e_}} is where the global minimum occurs for the function

_f_(_x_) = _x_^(_x_)

defined for positive . More generally, for the function

_f_(_x_) = _x_^(_x_^(_n_))

the global maximum for positive occurs at 1/_e_}} for any ; and the global minimum occurs at _e_^(−1/_n_)}} for any .

The infinite tetration

_x_^(_x_^(_x_^(⋅^(⋅^(⋅)))))
or ^(∞)x

converges if and only if (or approximately between 0.0660 and 1.4447), due to a theorem of Leonhard Euler.[16]

Number theory

The real number is irrational. Euler proved this by showing that its simple continued fraction expansion is infinite.[17] (See also Fourier's [[proof_that_e_is_irrational|proof that {2i} , \qquad

 \cos x = \frac{e^{ix} + e^{-ix}}{2}.

Differential equations

The general function

_y_(_x_) = _C__e_^(_x_)

is the solution to the differential equation:

_y_′ = _y_.


Representations

The number can be represented as a real number in a variety of ways: as an infinite series, an infinite product, a continued fraction, or a limit of a sequence. The chief among these representations, particularly in introductory calculus courses is the limit

$$\lim_{n\to\infty}\left(1 + \frac{1}{n}\right)^n,$$

given above, as well as the series

$$e=\sum_{n=0}^\infty \frac{1}{n!}$$

given by evaluating the above power series for at 1}}.

Less common is the continued fraction

_e_ = [2; 1, 2, 1, 1, 4, 1, 1, 6, 1, ..., 1, 2_n_, 1, ...],
[18][19]

which written out looks like

$$e = 2 +
\cfrac{1}
   {1 + \cfrac{1}
      {2 + \cfrac{1}
         {1 + \cfrac{1}
            {1 + \cfrac{1}
               {4 + \cfrac{1}
            {1 + \cfrac{1}
               {1 + \ddots}
                  }
               }
            }
         }
      }
   }
.$$

This continued fraction for converges three times as quickly:

$$e = 1 + \cfrac{2}{1 + \cfrac{1}{6 + \cfrac{1}{10 + \cfrac{1}{14 + \cfrac{1}{18 + \cfrac{1}{22 + \cfrac{1}{26 + \ddots}}}}}}}.$$

Many other series, sequence, continued fraction, and infinite product representations of have been developed.

Stochastic representations

In addition to exact analytical expressions for representation of , there are stochastic techniques for estimating . One such approach begins with an infinite sequence of independent random variables , …, drawn from the uniform distribution on [0, 1]. Let be the least number such that the sum of the first observations exceeds 1:

_V_ = min {_n_∣_X_₁+_X_₂+⋯+_X__(_n_)>1}.

Then the expected value of is : _e_}}.[20][21]

Known digits

The number of known digits of has increased substantially during the last decades. This is due both to the increased performance of computers and to algorithmic improvements.[22][23]

  Date   Decimal digits   Computation performed by
  ------ ---------------- -----------------------------------
  1690   1                Jacob Bernoulli[24]
  1714   13               Roger Cotes[25]
  1748   23               Leonhard Euler[26]
  1853   137              William Shanks[27]
  1871   205              William Shanks[28]
  1884   346              J. Marcus Boorman[29]
  1949   2,010            John von Neumann (on the ENIAC)
  1961   100,265          Daniel Shanks and John Wrench[30]
  1978   116,000          Steve Wozniak on the Apple II[31]

  : Number of known decimal digits of

Since that time, the proliferation of modern high-speed desktop computers has made it possible for amateurs, with the right hardware, to compute trillions of digits of _e_.[32]


In computer culture

In contemporary internet culture, individuals and organizations frequently pay homage to the number .

For instance, in the IPO filing for Google in 2004, rather than a typical round-number amount of money, the company announced its intention to raise $2,718,281,828, which is billion dollars rounded to the nearest dollar. Google was also responsible for a billboard[33] that appeared in the heart of Silicon Valley, and later in Cambridge, Massachusetts; Seattle, Washington; and Austin, Texas. It read "{first 10-digit prime found in consecutive digits of }.com". Solving this problem and visiting the advertised (now defunct) web site led to an even more difficult problem to solve, which in turn led to Google Labs where the visitor was invited to submit a résumé.[34] The first 10-digit prime in is 7427466391, which starts at the 99th digit.[35]

In another instance, the computer scientist Donald Knuth let the version numbers of his program Metafont approach . The versions are 2, 2.7, 2.71, 2.718, and so forth.[36]


Notes


Further reading

-   Maor, Eli; _: The Story of a Number_,
-   Commentary on Endnote 10 of the book _Prime Obsession_ for another stochastic representation
-


External links

-   [ http://gutenberg.org/ebooks/127 The number to 1 million places] and 2 and 5 million places
-   Approximations – Wolfram MathWorld
-   Earliest Uses of Symbols for Constants Jan. 13, 2008
-   "The story of ", by Robin Wilson at Gresham College, 28 February 2007 (available for audio and video download)
-   Search Engine 2 billion searchable digits of , and

Category:Transcendental numbers Category:Mathematical constants * Category:Real transcendental numbers Category:Leonhard Euler

[1] Oxford English Dictionary, 2nd ed.: natural logarithm

[2] Encyclopedic Dictionary of Mathematics 142.D

[3]

[4]

[5]

[6]

[7]

[8] Grinstead, C.M. and Snell, J.L._Introduction to probability theory_ (published online under the GFDL), p. 85.

[9] Knuth (1997) _The Art of Computer Programming_ Volume I, Addison-Wesley, p. 183 .

[10]

[11] Kline, M. (1998) _Calculus: An intuitive and physical approach_, section 12.3 "The Derived Functions of Logarithmic Functions.", pp. 337 ff, Courier Dover Publications, 1998,

[12] This is the approach taken by Kline (1998).

[13]

[14] A standard calculus exercise using the mean value theorem; see for example Apostol (1967) _Calculus_, §6.17.41.

[15]

[16] Euler, L. "De serie Lambertina Plurimisque eius insignibus proprietatibus." _Acta Acad. Scient. Petropol. 2_, 29–51, 1783. Reprinted in Euler, L. _Opera Omnia, Series Prima, Vol. 6: Commentationes Algebraicae_. Leipzig, Germany: Teubner, pp. 350–369, 1921. (facsimile)

[17]

[18] Hofstadter, D.R., "Fluid Concepts and Creative Analogies: Computer Models of the Fundamental Mechanisms of Thought" Basic Books (1995)

[19]

[20] Russell, K.G. (1991) _Estimating the Value of e by Simulation_ The American Statistician, Vol. 45, No. 1. (Feb., 1991), pp. 66–68.

[21] Dinov, ID (2007) _Estimating e using SOCR simulation_, SOCR Hands-on Activities (retrieved December 26, 2007).

[22] Sebah, P. and Gourdon, X.; The constant e and its computation

[23] Gourdon, X.; Reported large computations with PiFast

[24]

[25] Roger Cotes (1714) "Logometria," _Philosophical Transactions of the Royal Society of London_, 29 (338) : 5–45; see especially the bottom of page 10. From page 10: _"Porro eadem ratio est inter 2,718281828459 &c et 1, … "_ (Furthermore, by the same means, the ratio is between 2.718281828459… and 1, … )

[26] Leonhard Euler, _Introductio in Analysin Infinitorum_ (Lausanne, Switzerland: Marc Michel Bousquet & Co., 1748), volume 1, page 90.

[27] William Shanks, _Contributions to Mathematics_, … (London, England: G. Bell, 1853), page 89.

[28] William Shanks (1871) "On the numerical values of _e_, log_(_e_) 2, log_(_e_) 3, log_(_e_) 5, and log_(_e_) 10, also on the numerical value of M the modulus of the common system of logarithms, all to 205 decimals," _Proceedings of the Royal Society of London_, 20 : 27–29.

[29] J. Marcus Boorman (October 1884) "Computation of the Naperian base," _Mathematical Magazine_, 1 (12) : 204–205.

[30]

[31]

[32]

[33] First 10-digit prime found in consecutive digits of }. Brain Tags. Retrieved on 2012-02-24.

[34]

[35]

[36]