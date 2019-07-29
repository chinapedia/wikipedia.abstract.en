Logarithm_plots.png Binary_logarithm_plot_with_ticks.svg of the logarithm to base 2 crosses the _x_-axis at 1}} and passes through the points , , and , depicting, e.g., 3}} and 8}}. The graph gets arbitrarily close to the -axis, but does not meet it.]] In mathematics, the LOGARITHM is the inverse function to exponentiation. That means the logarithm of a given number  is the exponent to which another fixed number, the _base_ , must be raised, to produce that number . In the simplest case, the logarithm counts repeated multiplication of the same factor; e.g., since 10 × 10 × 10 {{=}} 10³}}, the "logarithm to base " of is . The logarithm of to _base_ is denoted as (or, without parentheses, as , or even without explicit base as , when no confusion is possible). More generally, exponentiation allows any positive real number to be raised to any real power, always producing a positive result, so for any two positive real numbers  and  where  is not equal to , is always a unique real number . More explicitly, the defining relation between exponentiation and logarithm is:

log_(_b_)(_x_) = _y_ 
exactly if  b^(y) = x.

For example, , as .

The logarithm to base (that is ) is called the common logarithm and has many applications in science and engineering. The natural logarithm has the [[e_(mathematical_constant)|number

Exponentiation may be extended to , where is a positive number and the _exponent_ is any real number.[1] For example, is the reciprocal of , that is, . Raising _b_ to the power 1/2 is the square root of _b_. More generally, raising _b_ to a rational power _p_/_q_, where _p_ and _q_ are integers, is given by

$$b^{p / q} = \sqrt[q]{b^p},$$
the _q_-th root of _b_^(_p_). Finally, any irrational number (a real number which is not rational) _y_ can be approximated to arbitrary precision by rational numbers. This can be used to compute the _y_-th power of _b_: for example $\sqrt 2 \approx 1.414 ...$ and $b^{\sqrt 2}$ is increasingly well approximated by b¹, b^(1.4), b^(1.41), b^(1.414), .... A more detailed explanation, as well as the formula ^(_m_) · }} is contained in the article on exponentiation.

Definition

The _logarithm_ of a positive real number with respect to base is the exponent by which must be raised to yield . In other words, the logarithm of to base is the solution to the equation[2]

    b^(y) = x.

The logarithm is denoted "" (pronounced as "the logarithm of to base " or "the logarithm of " or (most commonly) "the log, base , of ").

In the equation , the value is the answer to the question "To what power must be raised, in order to yield ?".

Examples

-   4 }}, since 2 ×2 × 2 × 2 {{=}} 16}}.

-   Logarithms can also be negative: $\quad \log_2 \! \frac{1}{2} = -1 \quad$ since $\quad 2^{-1} = \frac{1}{2^1} = \frac{1}{2}.$
-   is approximately 2.176, which lies between 2 and 3, just as 150 lies between 100}} and 1000.}}

-   For any base , 1}} and , since }} and 1}}, respectively.


Logarithmic identities

Several important formulas, sometimes called _logarithmic identities_ or _logarithmic laws_, relate logarithms to one another.[3]

Product, quotient, power, and root

The logarithm of a product is the sum of the logarithms of the numbers being multiplied; the logarithm of the ratio of two numbers is the difference of the logarithms. The logarithm of the power of a number is _p_ times the logarithm of the number itself; the logarithm of a root is the logarithm of the number divided by _p_. The following table lists these identities with examples. Each of the identities can be derived after substitution of the logarithm definitions x = b^(log_(b)x) or y = b^(log_(b)y) in the left hand sides.

             Formula                                        Example
  ---------- ---------------------------------------------- -------------------------------------------------------------------------
  Product    log_(b)(xy) = log_(b)x + log_(b)y              log₃243 = log₃(9 ⋅ 27) = log₃9 + log₃27 = 2 + 3 = 5
  Quotient   $\log_b \!\frac{x}{y} = \log_b x - \log_b y$   $\log_2 16 = \log_2 \!\frac{64}{4} = \log_2 64 - \log_2 4 = 6 - 2 = 4$
  Power      log_(b)(x^(p)) = plog_(b)x                     log₂64 = log₂(2⁶) = 6log₂2 = 6
  Root       $\log_b \sqrt[p]{x} = \frac{\log_b x}{p}$      $\log_{10} \sqrt{1000} = \frac{1}{2}\log_{10} 1000 = \frac{3}{2} = 1.5$

Change of base

The logarithm can be computed from the logarithms of and with respect to an arbitrary base _k_ using the following formula:

$$\log_b x = \frac{\log_k x}{\log_k b}.\,$$

Starting from the defining identity

    x = b^(log_(b)x)

we can apply to both sides of this equation, to get

    log_(k)x = log_(k)(b^(log_(b)x)) = log_(b)x ⋅ log_(k)b.

Solving for log_(b)x yields:

    $\log_b x =  \frac{\log_k x}{\log_k b}$,

showing the conversion factor from given log_(k)-values to their corresponding log_(b)-values to be (log_(k)b)^( − 1).

Typical scientific calculators calculate the logarithms to bases 10 and [[e_(mathematical_constant)| is the inverse function of log_(_b_)_x_, it has been called the ANTILOGARITHM.[4]

Log tables

A key tool that enabled the practical use of logarithms was the _table of logarithms_.[5] The first such table was compiled by Henry Briggs in 1617, immediately after Napier's invention but with the innovation of using 10 as the base. Briggs' first table contained the common logarithms of all integers in the range 1–1000, with a precision of 14 digits. Subsequently, tables with increasing scope were written. These tables listed the values of for any number in a certain range, at a certain precision. Base-10 logarithms were universally used for computation, hence the name common logarithm, since numbers that differ by factors of 10 have logarithms that differ by integers. The common logarithm of can be separated into an integer part and a fractional part, known as the characteristic and mantissa. Tables of logarithms need only include the mantissa, as the characteristic can be easily determined by counting digits from the decimal point.[6] The characteristic of is one plus the characteristic of , and their mantissas are the same. Thus using a three-digit log table, the logarithm of 3542 is approximated by

log₁₀3542 = log₁₀(1000 ⋅ 3.542) = 3 + log₁₀3.542 ≈ 3 + log₁₀3.54 

Greater accuracy can be obtained by interpolation:

log₁₀3542 ≈ 3 + log₁₀3.54 + 0.2(log₁₀3.55 − log₁₀3.54) 

The value of can be determined by reverse look up in the same table, since the logarithm is a monotonic function.

Computations

The product and quotient of two positive numbers _c_ and _d_ were routinely calculated as the sum and difference of their logarithms. The product _cd_ or quotient _c_/_d_ came from looking up the antilogarithm of the sum or difference, via the same table:

_c__d_ = 10^( log₁₀_c_) 10^( log₁₀_d_) = 10^( log₁₀_c_+ log₁₀_d_) 
and

$$\frac c d = c d^{-1} = 10^{\ \log_{10} c - \ \log_{10} d}. \,$$

For manual calculations that demand any appreciable precision, performing the lookups of the two logarithms, calculating their sum or difference, and looking up the antilogarithm is much faster than performing the multiplication by earlier methods such as prosthaphaeresis, which relies on trigonometric identities.

Calculations of powers and roots are reduced to multiplications or divisions and look-ups by

_c_^(_d_) = (10^( log₁₀_c_))^(_d_) = 10^(_d_ log₁₀_c_) 

and

$$\sqrt[d]{c} = c^\frac{1}{d} = 10^{\frac{1}{d} \ \log_{10} c}. \,$$

Trigonometric calculations were facilitated by tables that contained the common logarithms of trigonometric functions.

Slide rules

Another critical application was the slide rule, a pair of logarithmically divided scales used for calculation. The non-sliding logarithmic scale, Gunter's rule, was invented shortly after Napier's invention. William Oughtred enhanced it to create the slide rule—a pair of logarithmic scales movable with respect to each other. Numbers are placed on sliding scales at distances proportional to the differences between their logarithms. Sliding the upper scale appropriately amounts to mechanically adding logarithms, as illustrated here:

Slide_rule_example2_with_labels.svg

For example, adding the distance from 1 to 2 on the lower scale to the distance from 1 to 3 on the upper scale yields a product of 6, which is read off at the lower part. The slide rule was an essential calculating tool for engineers and scientists until the 1970s, because it allows, at the expense of precision, much faster computation than techniques based on tables.[7]


Analytic properties

A deeper study of logarithms requires the concept of a _function_. A function is a rule that, given one number, produces another number.[8] An example is the function producing the power of from any real number , where the base is a fixed number. This function is written: f(x) = b^(x). 

Logarithmic function

To justify the definition of logarithms, it is necessary to show that the equation

_b_^(_x_) = _y_ 
has a solution and that this solution is unique, provided that is positive and that is positive and unequal to 1. A proof of that fact requires the intermediate value theorem from elementary calculus.[9] This theorem states that a continuous function that produces two values _m_ and _n_ also produces any value that lies between _m_ and _n_. A function is _continuous_ if it does not "jump", that is, if its graph can be drawn without lifting the pen.

This property can be shown to hold for the function . Because _f_ takes arbitrarily large and arbitrarily small positive values, any number lies between and for suitable and . Hence, the intermediate value theorem ensures that the equation has a solution. Moreover, there is only one solution to this equation, because the function _f_ is strictly increasing (for ), or strictly decreasing (for ).[10]

The unique solution is the logarithm of to base , . The function that assigns to its logarithm is called _logarithm function_ or _logarithmic function_ (or just _logarithm_).

The function is essentially characterized by the above product formula

log_(_b_)(_x__y_) = log_(_b_)_x_ + log_(_b_)_y_.
More precisely, the logarithm to any base is the only increasing function _f_ from the positive reals to the reals satisfying and [11]

_f_(_x__y_) = _f_(_x_) + _f_(_y_).

Inverse function

Logarithm_inversefunctiontoexp.svg the graph of the function (red) at the diagonal line ().|alt=The graphs of two functions.]] The formula for the logarithm of a power says in particular that for any number ,

log_(_b_)(_b_^(_x_)) = _x_log_(_b_)_b_ = _x_.
In prose, taking the power of and then the logarithm gives back . Conversely, given a positive number , the formula

_b_^(log_(_b_)_y_) = _y_
says that first taking the logarithm and then exponentiating gives back . Thus, the two possible ways of combining (or composing) logarithms and exponentiation give back the original number. Therefore, the logarithm to base is the _inverse function_ of ^(_x_)}}.[12]

Inverse functions are closely related to the original functions. Their graphs correspond to each other upon exchanging the - and the -coordinates (or upon reflection at the diagonal line = ), as shown at the right: a point on the graph of _f_ yields a point on the graph of the logarithm and vice versa. As a consequence, log_(_b_)(_x_) diverges to infinity (gets bigger than any given number) if grows to infinity, provided that is greater than one. In that case, is an increasing function. For , tends to minus infinity instead. When approaches zero, goes to minus infinity for (plus infinity for , respectively).

Derivative and antiderivative

Logarithm_derivative.svg (green) and its tangent at 1.5}} (black)|alt=A graph of the logarithm function and a line touching it in one point.]] Analytic properties of functions pass to their inverses.[13] Thus, as is a continuous and differentiable function, so is . Roughly, a continuous function is differentiable if its graph has no sharp "corners". Moreover, as the derivative of evaluates to by the properties of the exponential function, the chain rule implies that the derivative of is given by[14][15]

    $\frac{d}{dx} \log_b x = \frac{1}{x\ln b}.$

That is, the slope of the tangent touching the graph of the logarithm at the point equals .

The derivative of ln is 1/_x_; this implies that ln is the unique antiderivative of that has the value 0 for . It is this very simple formula that motivated to qualify as "natural" the natural logarithm; this is also one of the main reasons of the importance of the constant [[E_(mathematical_constant)|.|group=nb}}[16]

$$\ln (z)  = \frac{(z-1)^1}{1} - \frac{(z-1)^2}{2} + \frac{(z-1)^3}{3} - \frac{(z-1)^4}{4} + \cdots$$
This is a shorthand for saying that can be approximated to a more and more accurate value by the following expressions:

$$\begin{array}{lllll}
(z-1) & & \\
(z-1) & - &  \frac{(z-1)^2}{2} & \\
(z-1) & - &  \frac{(z-1)^2}{2} & + & \frac{(z-1)^3}{3} \\
\vdots &
\end{array}$$
For example, with 1.5}} the third approximation yields 0.4167, which is about 0.011 greater than 0.405465}}. This series approximates with arbitrary precision, provided the number of summands is large enough. In elementary calculus, is therefore the limit of this series. It is the Taylor series of the natural logarithm at . The Taylor series of provides a particularly useful approximation to when is small, _z_{{!}} < 1}}, since then

$$\ln (1+z) = z - \frac{z^2}{2}  +\frac{z^3}{3}\cdots \approx z.$$
For example, with the first-order approximation gives , which is less than 5% off the correct value 0.0953.

More efficient series

Another series is based on the area hyperbolic tangent function:

$$\ln (z) = 2\cdot\operatorname{artanh}\,\frac{z-1}{z+1} = 2 \left ( \frac{z-1}{z+1} + \frac{1}{3}{\left(\frac{z-1}{z+1}\right)}^3 + \frac{1}{5}{\left(\frac{z-1}{z+1}\right)}^5 + \cdots \right ),$$
for any real number .[17] Using sigma notation, this is also written as

$$\ln (z) = 2\sum_{k=0}^\infty\frac{1}{2k+1}\left(\frac{z-1}{z+1}\right)^{2k+1}.$$
This series can be derived from the above Taylor series. It converges more quickly than the Taylor series, especially if is close to 1. For example, for , the first three terms of the second series approximate with an error of about . The quick convergence for close to 1 can be taken advantage of in the following way: given a low-accuracy approximation and putting

$$A = \frac z{\exp(y)}, \,$$
the logarithm of is:

ln (_z_) = _y_ + ln (_A_). 
The better the initial approximation is, the closer is to 1, so its logarithm can be calculated efficiently. can be calculated using the exponential series, which converges quickly provided is not too large. Calculating the logarithm of larger can be reduced to smaller values of by writing _a_ · 10^(_b_)}}, so that ln(_a_) + · ln(10)}}.

A closely related method can be used to compute the logarithm of integers. Putting $\textstyle z=\frac{n+1}{n}$ in the above series, it follows that:

$$\ln (n+1) = \ln(n) + 2\sum_{k=0}^\infty\frac{1}{2k+1}\left(\frac{1}{2 n+1}\right)^{2k+1}.$$
If the logarithm of a large integer is known, then this series yields a fast converging series for , with a rate of convergence of $\frac{1}{2 n+1}$.

Arithmetic–geometric mean approximation

The arithmetic–geometric mean yields high precision approximations of the natural logarithm. Sasaki and Kanada showed in 1982 that it was particularly fast for precisions between 400 and 1000 decimal places, while Taylor series methods were typically faster when less precision was needed. In their work is approximated to a precision of (or _p_ precise bits) by the following formula (due to Carl Friedrich Gauss):[18][19]

$$\ln (x) \approx \frac{\pi}{2  M(1,2^{2-m}/x)} - m \ln (2).$$

Here denotes the arithmetic–geometric mean of and . It is obtained by repeatedly calculating the average (x + y)/2 (arithmetic mean) and $\sqrt{xy}$ (geometric mean) of and then let those two numbers become the next and . The two numbers quickly converge to a common limit which is the value of . _m_ is chosen such that

_x_ 2^(_m_) > 2^(_p_/2). 

to ensure the required precision. A larger _m_ makes the calculation take more steps (the initial x and y are farther apart so it takes more steps to converge) but gives more precision. The constants and can be calculated with quickly converging series.

Feynman's algorithm

While at Los Alamos National Laboratory working on the Manhattan Project, Richard Feynman developed a bit-processing algorithm that is similar to long division and was later used in the Connection Machine. The algorithm uses the fact that every real number 1 < x < 2 is uniquely representable as a product of distinct factors of the form 1 + 2^( − k). The algorithm sequentially builds that product P: if P ⋅ (1 + 2^( − k)) < x, then it changes P to P ⋅ (1 + 2^( − k)). It then increase k by one regardless. The algorithm stops when k is large enough to give the desired accuracy. Because log (x) is the sum of the terms of the form log (1 + 2^( − k)) corresponding to those k for which the factor 1 + 2^( − k) was included in the product P, log (x) may be computed by simple addition, using a table of log (1 + 2^( − k)) for all k. Any base may be used for the logarithm table.[20]


Applications

NautilusCutawayLogarithmicSpiral.jpg displaying a logarithmic spiral|alt=A photograph of a nautilus' shell.]] Logarithms have many applications inside and outside mathematics. Some of these occurrences are related to the notion of scale invariance. For example, each chamber of the shell of a nautilus is an approximate copy of the next one, scaled by a constant factor. This gives rise to a logarithmic spiral.[21] Benford's law on the distribution of leading digits can also be explained by scale invariance.[22] Logarithms are also linked to self-similarity. For example, logarithms appear in the analysis of algorithms that solve a problem by dividing it into two similar smaller problems and patching their solutions.[23] The dimensions of self-similar geometric shapes, that is, shapes whose parts resemble the overall picture are also based on logarithms. Logarithmic scales are useful for quantifying the relative change of a value as opposed to its absolute difference. Moreover, because the logarithmic function grows very slowly for large , logarithmic scales are used to compress large-scale scientific data. Logarithms also occur in numerous scientific formulas, such as the Tsiolkovsky rocket equation, the Fenske equation, or the Nernst equation.

Logarithmic scale

A logarithmic chart depicting the value of one German gold mark in Papiermarks during the German hyperinflation in the 1920s|right|thumb|alt=A graph of the value of one mark over time. The line showing its value is increasing very quickly, even with logarithmic scale. Scientific quantities are often expressed as logarithms of other quantities, using a _logarithmic scale_. For example, the decibel is a unit of measurement associated with logarithmic-scale quantities. It is based on the common logarithm of ratios—10 times the common logarithm of a power ratio or 20 times the common logarithm of a voltage ratio. It is used to quantify the loss of voltage levels in transmitting electrical signals,[24] to describe power levels of sounds in acoustics,[25] and the absorbance of light in the fields of spectrometry and optics. The signal-to-noise ratio describing the amount of unwanted noise in relation to a (meaningful) signal is also measured in decibels.[26] In a similar vein, the peak signal-to-noise ratio is commonly used to assess the quality of sound and image compression methods using the logarithm.[27]

The strength of an earthquake is measured by taking the common logarithm of the energy emitted at the quake. This is used in the moment magnitude scale or the Richter magnitude scale. For example, a 5.0 earthquake releases 32 times and a 6.0 releases 1000 times the energy of a 4.0.[28] Another logarithmic scale is apparent magnitude. It measures the brightness of stars logarithmically.[29] Yet another example is pH in chemistry; pH is the negative of the common logarithm of the activity of hydronium ions (the form hydrogen ions take in water).[30] The activity of hydronium ions in neutral water is 10^(−7) mol·L^(−1), hence a pH of 7. Vinegar typically has a pH of about 3. The difference of 4 corresponds to a ratio of 10⁴ of the activity, that is, vinegar's hydronium ion activity is about .

Semilog (log-linear) graphs use the logarithmic scale concept for visualization: one axis, typically the vertical one, is scaled logarithmically. For example, the chart at the right compresses the steep increase from 1 million to 1 trillion to the same space (on the vertical axis) as the increase from 1 to 1 million. In such graphs, exponential functions of the form appear as straight lines with slope equal to the logarithm of . Log-log graphs scale both axes logarithmically, which causes functions of the form to be depicted as straight lines with slope equal to the exponent _k_. This is applied in visualizing and analyzing power laws.[31]

Psychology

Logarithms occur in several laws describing human perception:[32][33] Hick's law proposes a logarithmic relation between the time individuals take to choose an alternative and the number of choices they have.[34] Fitts's law predicts that the time required to rapidly move to a target area is a logarithmic function of the distance to and the size of the target.[35] In psychophysics, the Weber–Fechner law proposes a logarithmic relationship between stimulus and sensation such as the actual vs. the perceived weight of an item a person is carrying.[36] (This "law", however, is less realistic than more recent models, such as Stevens's power law.[37])

Psychological studies found that individuals with little mathematics education tend to estimate quantities logarithmically, that is, they position a number on an unmarked line according to its logarithm, so that 10 is positioned as close to 100 as 100 is to 1000. Increasing education shifts this to a linear estimate (positioning 1000 10x as far away) in some circumstances, while logarithms are used when the numbers to be plotted are difficult to plot linearly.[38][39]

Probability theory and statistics

PDF-log_normal_distributions.svgs (PDF) of random variables with log-normal distributions. The location parameter , which is zero for all three of the PDFs shown, is the mean of the logarithm of the random variable, not the mean of the variable itself.]] Distribution of first digits (in %, red bars) in the List of countries by population of the world. Black dots indicate the distribution predicted by Benford's law.|thumb|right|alt=A bar chart and a superimposed second chart. The two differ slightly, but both decrease in a similar fashion. Logarithms arise in probability theory: the law of large numbers dictates that, for a fair coin, as the number of coin-tosses increases to infinity, the observed proportion of heads approaches one-half. The fluctuations of this proportion about one-half are described by the law of the iterated logarithm.[40]

Logarithms also occur in log-normal distributions. When the logarithm of a random variable has a normal distribution, the variable is said to have a log-normal distribution.[41] Log-normal distributions are encountered in many fields, wherever a variable is formed as the product of many independent positive random variables, for example in the study of turbulence.[42]

Logarithms are used for maximum-likelihood estimation of parametric statistical models. For such a model, the likelihood function depends on at least one parameter that must be estimated. A maximum of the likelihood function occurs at the same parameter-value as a maximum of the logarithm of the likelihood (the "_log likelihood_"), because the logarithm is an increasing function. The log-likelihood is easier to maximize, especially for the multiplied likelihoods for independent random variables.[43]

Benford's law describes the occurrence of digits in many data sets, such as heights of buildings. According to Benford's law, the probability that the first decimal-digit of an item in the data sample is _d_ (from 1 to 9) equals , _regardless_ of the unit of measurement.[44] Thus, about 30% of the data can be expected to have 1 as first digit, 18% start with 2, etc. Auditors examine deviations from Benford's law to detect fraudulent accounting.[45]

Computational complexity

Analysis of algorithms is a branch of computer science that studies the performance of algorithms (computer programs solving a certain problem).[46] Logarithms are valuable for describing algorithms that divide a problem into smaller ones, and join the solutions of the subproblems.[47]

For example, to find a number in a sorted list, the binary search algorithm checks the middle entry and proceeds with the half before or after the middle entry if the number is still not found. This algorithm requires, on average, comparisons, where _N_ is the list's length.[48] Similarly, the merge sort algorithm sorts an unsorted list by dividing the list into halves and sorting these first before merging the results. Merge sort algorithms typically require a time approximately proportional to .[49] The base of the logarithm is not specified here, because the result only changes by a constant factor when another base is used. A constant factor is usually disregarded in the analysis of algorithms under the standard uniform cost model.[50]

A function is said to grow logarithmically if is (exactly or approximately) proportional to the logarithm of . (Biological descriptions of organism growth, however, use this term for an exponential function.[51]) For example, any natural number _N_ can be represented in binary form in no more than bits. In other words, the amount of memory needed to store _N_ grows logarithmically with _N_.

Entropy and chaos

Chaotic_Bunimovich_stadium.png on an oval billiard table. Two particles, starting at the center with an angle differing by one degree, take paths that diverge chaotically because of reflections at the boundary.|alt=An oval shape with the trajectories of two particles.]]

Entropy is broadly a measure of the disorder of some system. In statistical thermodynamics, the entropy _S_ of some physical system is defined as

_S_ =  − _k_∑_(_i_)_p__(_i_)ln (_p__(_i_)). 
The sum is over all possible states _i_ of the system in question, such as the positions of gas particles in a container. Moreover, is the probability that the state _i_ is attained and _k_ is the Boltzmann constant. Similarly, entropy in information theory measures the quantity of information. If a message recipient may expect any one of _N_ possible messages with equal likelihood, then the amount of information conveyed by any one such message is quantified as bits.[52]

Lyapunov exponents use logarithms to gauge the degree of chaoticity of a dynamical system. For example, for a particle moving on an oval billiard table, even small changes of the initial conditions result in very different paths of the particle. Such systems are chaotic in a deterministic way, because small measurement errors of the initial state predictably lead to largely different final states.[53] At least one Lyapunov exponent of a deterministically chaotic system is positive.

Fractals

The Sierpinski triangle (at the right) is constructed by repeatedly replacing equilateral triangles by three smaller ones.|right|thumb|400px|alt=Parts of a triangle are removed in an iterated way.

Logarithms occur in definitions of the dimension of fractals.[54] Fractals are geometric objects that are self-similar: small parts reproduce, at least roughly, the entire global structure. The Sierpinski triangle (pictured) can be covered by three copies of itself, each having sides half the original length. This makes the Hausdorff dimension of this structure . Another logarithm-based notion of dimension is obtained by counting the number of boxes needed to cover the fractal in question.

Music

Logarithms are related to musical tones and intervals. In equal temperament, the frequency ratio depends only on the interval between two tones, not on the specific frequency, or pitch, of the individual tones. For example, the note _A_ has a frequency of 440 Hz and _B-flat_ has a frequency of 466 Hz. The interval between _A_ and _B-flat_ is a semitone, as is the one between _B-flat_ and _B_ (frequency 493 Hz). Accordingly, the frequency ratios agree:

$$\frac{466}{440} \approx \frac{493}{466} \approx 1.059 \approx \sqrt[12]2.$$
Therefore, logarithms can be used to describe the intervals: an interval is measured in semitones by taking the logarithm of the frequency ratio, while the logarithm of the frequency ratio expresses the interval in cents, hundredths of a semitone. The latter is used for finer encoding, as it is needed for non-equal temperaments.[55]

+---------------------------------------------+-----------------------------------+-----------------------------------+---------------------+---------------------------------------------------------------------------------+------------------------------------------------------------------------------+---------------------------+
| INTERVAL                                    | 1/12 tone                         | Semitone                          | Just major third    | Major third                                                                     | Tritone                                                                      | Octave                    |
| (the two tones are played at the same time) |                                   |                                   |                     |                                                                                 |                                                                              |                           |
+---------------------------------------------+-----------------------------------+-----------------------------------+---------------------+---------------------------------------------------------------------------------+------------------------------------------------------------------------------+---------------------------+
| FREQUENCY RATIO _r_                         | $2^{\frac 1 {72}} \approx 1.0097$ | $2^{\frac 1 {12}} \approx 1.0595$ | $\tfrac 5 4 = 1.25$ | $\begin{align} 2^{\frac 4 {12}} & = \sqrt[3] 2 \\ & \approx 1.2599 \end{align}$ | $\begin{align} 2^{\frac 6 {12}} & = \sqrt 2 \\ & \approx 1.4142 \end{align}$ | $2^{\frac {12} {12}} = 2$ |
+---------------------------------------------+-----------------------------------+-----------------------------------+---------------------+---------------------------------------------------------------------------------+------------------------------------------------------------------------------+---------------------------+
| CORRESPONDING NUMBER OF SEMITONES           | $\tfrac 1 6 \,$                   | 1                                 |  ≈ 3.8631           | 4                                                                               | 6                                                                            | 12                        |
| $\log_{\sqrt[12] 2}(r) = 12 \log_2 (r)$     |                                   |                                   |                     |                                                                                 |                                                                              |                           |
+---------------------------------------------+-----------------------------------+-----------------------------------+---------------------+---------------------------------------------------------------------------------+------------------------------------------------------------------------------+---------------------------+
| CORRESPONDING NUMBER OF CENTS               | $16 \tfrac 2 3 \,$                | 100                               |  ≈ 386.31           | 400                                                                             | 600                                                                          | 1200                      |
| $\log_{\sqrt[1200] 2}(r) = 1200 \log_2 (r)$ |                                   |                                   |                     |                                                                                 |                                                                              |                           |
+---------------------------------------------+-----------------------------------+-----------------------------------+---------------------+---------------------------------------------------------------------------------+------------------------------------------------------------------------------+---------------------------+

Number theory

Natural logarithms are closely linked to counting prime numbers (2, 3, 5, 7, 11, ...), an important topic in number theory. For any integer , the quantity of prime numbers less than or equal to is denoted [[prime-counting_function|, where and are real numbers and is an imaginary unit, the square of which is −1. Such a number can be visualized by a point in the complex plane, as shown at the right. The polar form encodes a non-zero complex number by its absolute value, that is, the (positive, real) distance to the origin, and an angle between the real () axis _Re_ and the line passing through both the origin and . This angle is called the argument of .

The absolute value of is given by

$$\textstyle r=\sqrt{x^2+y^2}.$$

Using the geometrical interpretation of sin  and cos  and their periodicity in 2π, any complex number may be denoted as

_z_ = _x_ + _i__y_ = _r_(cos _φ_ + _i_sin _φ_) = _r_(cos (_φ_ + 2_k__π_) + _i_sin (_φ_ + 2_k__π_)),

for any integer number . Evidently the argument of is not uniquely specified: both and ' = + 2_k_ are valid arguments of for all integers , because adding 2_k_ radian or _k_⋅360° to corresponds to "winding" around the origin counter-clock-wise by turns. The resulting complex number is always , as illustrated at the right for 1}}. One may select exactly one of the possible arguments of as the so-called _principal argument_, denoted , with a capital , by requiring to belong to one, conveniently selected turn, e.g.,  − π < φ ≤ π[56] or 0 ≤ φ < 2π.[57] These regions, where the argument of is uniquely determined are called _branches_ of the argument function.

Complex_log.jpg of the complex logarithm, . The black point at 1}} corresponds to absolute value zero and brighter (more saturated) colors refer to bigger absolute values. The hue of the color encodes the argument of .|alt=A density plot. In the middle there is a black point, at the negative axis the hue jumps sharply and evolves smoothly otherwise.]]

Euler's formula connects the trigonometric functions sine and cosine to the complex exponential:

_e_^(_i__φ_) = cos _φ_ + _i_sin _φ_.

Using this formula, and again the periodicity, the following identities hold:[58]

$$\begin{array}{lll}z& = & r \left (\cos \varphi + i \sin \varphi\right) \\
& = & r \left (\cos(\varphi + 2k\pi) + i \sin(\varphi + 2k\pi)\right) \\
& = & r e^{i (\varphi + 2k\pi)} \\
& = & e^{\ln(r)} e^{i (\varphi + 2k\pi)}  \\
& = & e^{\ln(r) + i(\varphi + 2k\pi)} = e^{a_k},
\end{array}$$

where is the unique real natural logarithm, denote the complex logarithms of , and is an arbitrary integer. Therefore, the complex logarithms of , which are all those complex values for which the power of equals , are the infinitely many values

_a__(_k_) = ln (_r_) + _i_(_φ_ + 2_k__π_), 
for arbitrary integers .

Taking such that φ + 2kπ is within the defined interval for the principal arguments, then is called the _principal value_ of the logarithm, denoted , again with a capital . The principal argument of any positive real number is 0; hence is a real number and equals the real (natural) logarithm. However, the above formulas for logarithms of products and powers do _not_ generalize to the principal value of the complex logarithm.[59]

The illustration at the right depicts , confining the arguments of to the interval . This way the corresponding branch of the complex logarithm has discontinuities all along the negative real axis, which can be seen in the jump in the hue there. This discontinuity arises from jumping to the other boundary in the same branch, when crossing a boundary, i.e., not changing to the corresponding -value of the continuously neighboring branch. Such a locus is called a branch cut. Dropping the range restrictions on the argument makes the relations "argument of ", and consequently the "logarithm of ", multi-valued functions.

Inverses of other exponential functions

Exponentiation occurs in many areas of mathematics and its inverse function is often referred to as the logarithm. For example, the logarithm of a matrix is the (multi-valued) inverse function of the matrix exponential.[60] Another example is the _p_-adic logarithm, the inverse function of the _p_-adic exponential. Both are defined via Taylor series analogous to the real case.[61] In the context of differential geometry, the exponential map maps the tangent space at a point of a manifold to a neighborhood of that point. Its inverse is also called the logarithmic (or log) map.[62]

In the context of finite groups exponentiation is given by repeatedly multiplying one group element with itself. The discrete logarithm is the integer _n_ solving the equation

_b_^(_n_) = _x_, 
where is an element of the group. Carrying out the exponentiation can be done efficiently, but the discrete logarithm is believed to be very hard to calculate in some groups. This asymmetry has important applications in public key cryptography, such as for example in the Diffie–Hellman key exchange, a routine that allows secure exchanges of cryptographic keys over unsecured information channels.[63] Zech's logarithm is related to the discrete logarithm in the multiplicative group of non-zero elements of a finite field.[64]

Further logarithm-like inverse functions include the _double logarithm_ ln(ln(_x_)), the _super- or hyper-4-logarithm_ (a slight variation of which is called iterated logarithm in computer science), the Lambert W function, and the logit. They are the inverse functions of the double exponential function, tetration, of _we^(w)_}},[65] and of the logistic function, respectively.[66]

Related concepts

From the perspective of group theory, the identity log(_c_) + log(_d_)}} expresses a group isomorphism between positive reals under multiplication and reals under addition. Logarithmic functions are the only continuous isomorphisms between these groups.[67] By means of that isomorphism, the Haar measure (Lebesgue measure) _dx_ on the reals corresponds to the Haar measure on the positive reals.[68] The non-negative reals not only have a multiplication, but also have addition, and form a semiring, called the probability semiring; this is in fact a semifield. The logarithm then takes multiplication to addition (log multiplication), and takes addition to log addition (LogSumExp), giving an isomorphism of semirings between the probability semiring and the log semiring.

Logarithmic one-forms appear in complex analysis and algebraic geometry as differential forms with logarithmic poles.[69]

The polylogarithm is the function defined by

$$\operatorname{Li}_s(z) = \sum_{k=1}^\infty {z^k \over k^s}.$$
It is related to the natural logarithm by . Moreover, equals the Riemann zeta function .[70]


See also

-   Cologarithm
-   Decimal exponent (dex)
-   Exponential function
-   Index of logarithm articles


Notes


References


External links

-   -   -   Khan Academy: Logarithms, free online micro lectures
-   -   -   -

Logarithms Category:Elementary special functions Category:Scottish inventions Category:Additive function

[1] , esp. section 2

[2] , chapter 1

[3] All statements in this section can be found in , , or , for example.

[4] , section 4.7., p. 89

[5] , section 2

[6] , p. 264

[7]

[8] , or see the references in function

[9] , section III.3

[10]

[11]  item (4.3.1)

[12] , section 1.6

[13]

[14]

[15]

[16]

[17]

[18]

[19]

[20]

[21]

[22] , chapter 6, section 64

[23] , p. 21, section 1.3.2

[24] , section 5.2

[25] , section 23.0.2

[26]

[27]

[28] , section 4.4.

[29] , section 8.3, p. 231

[30]

[31] , section 34

[32] , pp. 355–56

[33] , p. 48

[34] , p. 61

[35] , reprinted in

[36]

[37] , lemmas _Psychophysics_ and _Perception: Overview_

[38]

[39]

[40] , section 12.9

[41]

[42]

[43] , section 11.3

[44] , section 2.1

[45]

[46] , pp. 1–2

[47] , p. 143

[48] , section 6.2.1, pp. 409–26

[49]

[50]

[51] , chapter 19, p. 298

[52] , section III.I

[53] , section 1.9

[54]

[55] , chapter 5

[56] , Definition 1.6.3

[57] , section 5.9

[58] , section 1.2

[59] , theorem 6.1.

[60] , chapter 11.

[61] , section II.5.

[62]

[63]

[64]

[65]

[66] , p. 357

[67] , section V.4.1

[68] , section 1.4

[69] , section 2

[70]