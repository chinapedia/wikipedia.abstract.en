Power}} , and to the left are the few that dominate (also known as the 80–20 rule).]]

In statistics, a POWER LAW is a functional relationship between two quantities, where a relative change in one quantity results in a proportional relative change in the other quantity, independent of the initial size of those quantities: one quantity varies as a power of another. For instance, considering the area of a square in terms of the length of its side, if the length is doubled, the area is multiplied by a factor of four.[1]


Empirical examples

The distributions of a wide variety of physical, biological, and man-made phenomena approximately follow a power law over a wide range of magnitudes: these include the sizes of craters on the moon and of solar flares,[2] the foraging pattern of various species,[3] the sizes of activity patterns of neuronal populations,[4] the frequencies of words in most languages, frequencies of family names, the species richness in clades of organisms,[5] the sizes of power outages, criminal charges per convict, volcanic eruptions,[6] human judgements of stimulus intensity[7][8] and many other quantities. Few empirical distributions fit a power law for all their values, but rather follow a power law in the tail. Acoustic attenuation follows frequency power-laws within wide frequency bands for many complex media. Allometric scaling laws for relationships between biological variables are among the best known power-law functions in nature.


Properties

Scale invariance

One attribute of power laws is their scale invariance. Given a relation f(x) = ax^( − k), scaling the argument x by a constant factor c causes only a proportionate scaling of the function itself. That is,

_f_(_c__x_) = _a_(_c__x_)^( − _k_) = _c_^( − _k_)_f_(_x_) ∝ _f_(_x_),​

where ∝ denotes direct proportionality. That is, scaling by a constant c simply multiplies the original power-law relation by the constant c^( − k). Thus, it follows that all power laws with a particular scaling exponent are equivalent up to constant factors, since each is simply a scaled version of the others. This behavior is what produces the linear relationship when logarithms are taken of both f(x) and x, and the straight-line on the log–log plot is often called the _signature_ of a power law. With real data, such straightness is a necessary, but not sufficient, condition for the data following a power-law relation. In fact, there are many ways to generate finite amounts of data that mimic this signature behavior, but, in their asymptotic limit, are not true power laws (e.g., if the generating process of some data follows a Log-normal distribution). Thus, accurately fitting and validating power-law models is an active area of research in statistics; see below.

Lack of well-defined average value

A power-law x^( − k) has a well-defined mean over x ∈ [1, ∞) only if k > 2, and it has a finite variance only if k > 3; most identified power laws in nature have exponents such that the mean is well-defined but the variance is not, implying they are capable of black swan behavior.[9] This can be seen in the following thought experiment:[10] imagine a room with your friends and estimate the average monthly income in the room. Now imagine the world's richest person entering the room, with a monthly income of about 1 billion US$. What happens to the average income in the room? Income is distributed according to a power-law known as the Pareto distribution (for example, the net worth of Americans is distributed according to a power law with an exponent of 2).

On the one hand, this makes it incorrect to apply traditional statistics that are based on variance and standard deviation (such as regression analysis). On the other hand, this also allows for cost-efficient interventions.[11] For example, given that car exhaust is distributed according to a power-law among cars (very few cars contribute to most contamination) it would be sufficient to eliminate those very few cars from the road to reduce total exhaust substantially.[12]

The median does exist, however: for a power law _x_^(–_k_), with exponent , it takes the value 2^(1/(_k_\ –\ 1))_x__(min), where _x__(min) is the minimum value for which the power law holds.[13]

Universality

The equivalence of power laws with a particular scaling exponent can have a deeper origin in the dynamical processes that generate the power-law relation. In physics, for example, phase transitions in thermodynamic systems are associated with the emergence of power-law distributions of certain quantities, whose exponents are referred to as the critical exponents of the system. Diverse systems with the same critical exponents—that is, which display identical scaling behaviour as they approach criticality—can be shown, via renormalization group theory, to share the same fundamental dynamics. For instance, the behavior of water and CO₂ at their boiling points fall in the same universality class because they have identical critical exponents. In fact, almost all material phase transitions are described by a small set of universality classes. Similar observations have been made, though not as comprehensively, for various self-organized critical systems, where the critical point of the system is an attractor. Formally, this sharing of dynamics is referred to as universality, and systems with precisely the same critical exponents are said to belong to the same universality class.


Power-law functions

Scientific interest in power-law relations stems partly from the ease with which certain general classes of mechanisms generate them. The demonstration of a power-law relation in some data can point to specific kinds of mechanisms that might underlie the natural phenomenon in question, and can indicate a deep connection with other, seemingly unrelated systems; see also universality above. The ubiquity of power-law relations in physics is partly due to dimensional constraints, while in complex systems, power laws are often thought to be signatures of hierarchy or of specific stochastic processes. A few notable examples of power laws are Pareto's law of income distribution, structural self-similarity of fractals, and scaling laws in biological systems. Research on the origins of power-law relations, and efforts to observe and validate them in the real world, is an active topic of research in many fields of science, including physics, computer science, linguistics, geophysics, neuroscience, sociology, economics and more.

However, much of the recent interest in power laws comes from the study of probability distributions: The distributions of a wide variety of quantities seem to follow the power-law form, at least in their upper tail (large events). The behavior of these large events connects these quantities to the study of theory of large deviations (also called extreme value theory), which considers the frequency of extremely rare events like stock market crashes and large natural disasters. It is primarily in the study of statistical distributions that the name "power law" is used.

In empirical contexts, an approximation to a power-law o(x^(k)) often includes a deviation term ε, which can represent uncertainty in the observed values (perhaps measurement or sampling errors) or provide a simple way for observations to deviate from the power-law function (perhaps for stochastic reasons):

_y_ = _a__x_^(_k_) + _ε_.​

Mathematically, a strict power law cannot be a probability distribution, but a distribution that is a truncated power function is possible: p(x) = Cx^( − α) for x > x_(min) where the exponent α (Greek letter alpha, not to be confused with scaling factor a used above) is greater than 1 (otherwise the tail has infinite area), the minimum value x_(min) is needed otherwise the distribution has infinite area as _x_ approaches 0, and the constant _C_ is a scaling factor to ensure that the total area is 1, as required by a probability distribution. More often one uses an asymptotic power law – one that is only true in the limit; see power-law probability distributions below for details. Typically the exponent falls in the range 2 < α < 3, though not always.

Examples

More than a hundred power-law distributions have been identified in physics (e.g. sandpile avalanches), biology (e.g. species extinction and body mass), and the social sciences (e.g. city sizes and income).[14] Among them are:

Astronomy

-   Kepler's third law
-   The initial mass function of stars
-   The differential energy spectrum of cosmic-ray nuclei
-   The M-sigma relation

Criminology

-   number of charges per criminal offender

1

Physics

-   The Angstrom exponent in aerosol optics
-   The frequency-dependency of acoustic attenuation in complex media
-   The Stevens' power law of psychophysics
-   The Stefan–Boltzmann law
-   The input-voltage–output-current curves of field-effect transistors and vacuum tubes approximate a square-law relationship, a factor in "tube sound".
-   Square-cube law (ratio of surface area to volume)
-   A 3/2-power law can be found in the plate characteristic curves of triodes.
-   The inverse-square laws of Newtonian gravity and electrostatics, as evidenced by the gravitational potential and Electrostatic potential, respectively.
-   Self-organized criticality with a critical point as an attractor
-   Model of van der Waals force
-   Force and potential in simple harmonic motion
-   Gamma correction relating light intensity with voltage
-   Behaviour near second-order phase transitions involving critical exponents
-   The safe operating area relating to maximum simultaneous current and voltage in power semiconductors.
-   Supercritical state of matter and supercritical fluids, such as supercritical exponents of heat capacity and viscosity.[15]
-   The Curie-von Schweidler law in dielectric responses to step DC voltage input.
-   The damping force over speed relation in antiseismic dampers calculus

Biology

-   Kleiber's law relating animal metabolism to size, and allometric laws in general
-   The two-thirds power law, relating speed to curvature in the human motor system.
-   The Taylor's law relating mean population size and variance of populations sizes in ecology
-   Neuronal avalanches[16]
-   The species richness (number of species) in clades of freshwater fishes[17]
-   The Harlow Knapp effect, where a subset of the kinases found in the human body compose a majority of published research[18]

Meteorology

-   The size of rain-shower cells,[19] energy dissipation in cyclones,[20] and the diameters of dust devils on Earth and Mars [21]

General science

-   Exponential growth and random observation (or killing)[22]
-   Progress through exponential growth and exponential diffusion of innovations[23]
-   Highly optimized tolerance
-   Proposed form of experience curve effects
-   Pink noise
-   The law of stream numbers, and the law of stream lengths (Horton's laws describing river systems)[24]
-   Populations of cities (Gibrat's law)
-   Bibliograms, and frequencies of words in a text (Zipf's law)[25]
-   90–9–1 principle on wikis (also referred to as the 1% rule)
-   Richardson's Law for the severity of violent conflicts (wars and terrorism)[26]
-   The relationship between a CPU's cache size and the number of cache misses follows the power law of cache misses.
-   The spectral density of the weight matrices of deep neural networks[27]

Mathematics

-   Fractals
-   Pareto distribution and the Pareto principle also called the "80–20 rule"
-   Zipf's law in corpus analysis and population distributions amongst others, where frequency of an item or event is inversely proportional to its frequency rank (i.e. the second most frequent item/event occurs half as often as the most frequent item, the third most frequent item/event occurs one third as often as the most frequent item, and so on).
-   Zeta distribution (discrete)
-   Yule–Simon distribution (discrete)
-   Student's t-distribution (continuous), of which the Cauchy distribution is a special case
-   Lotka's law
-   The scale-free network model

Economics

-   Distribution of artists by the average price of their artworks.[28]

-   Distribution of income in a market economy.

-   Distribution of degrees in banking networks.

Variants

Broken power law

use a broken power law; here Kroupa (2001) in red.]] A broken power law is a piecewise function, consisting of two or more power laws, combined with a threshold. For example, with two power laws:[29]

_f_(_x_) ∝ _x_^(_α_₁)
for x < x_(th),

_f_(_x_) ∝ _x__(th)^(_α_₁ − _α_₂)_x_^(_α_₂) for _x_ > _x__(th)
.

Power law with exponential cutoff

A power law with an exponential cutoff is simply a power law multiplied by an exponential function:[30]

_f_(_x_) ∝ _x_^(_α_)_e_^(_β__x_).

Curved power law

_f_(_x_) ∝ _x_^(_α_ + _β__x_)
[31]


Power-law probability distributions

In a looser sense, a power-law probability distribution is a distribution whose density function (or mass function in the discrete case) has the form, for large values of x,[32]

_P_(_X_ > _x_) ∼ _L_(_x_)_x_^( − (_α_ − 1))

where α > 1, and L(x) is a slowly varying function, which is any function that satisfies lim_(x → ∞)L(r x)/L(x) = 1 for any positive factor r. This property of L(x) follows directly from the requirement that p(x) be asymptotically scale invariant; thus, the form of L(x) only controls the shape and finite extent of the lower tail. For instance, if L(x) is the constant function, then we have a power law that holds for all values of x. In many cases, it is convenient to assume a lower bound x_(min) from which the law holds. Combining these two cases, and where x is a continuous variable, the power law has the form

$$p(x) = \frac{\alpha-1}{x_\min} \left(\frac{x}{x_\min}\right)^{-\alpha},$$

where the pre-factor to $\frac{\alpha-1}{x_\min}$ is the normalizing constant. We can now consider several properties of this distribution. For instance, its moments are given by

$$\langle x^{m} \rangle = \int_{x_\min}^\infty x^{m} p(x) \,\mathrm{d}x = \frac{\alpha-1}{\alpha-1-m}x_\min^m$$

which is only well defined for m < α − 1. That is, all moments m ≥ α − 1 diverge: when α ≤ 2, the average and all higher-order moments are infinite; when 2 < α < 3, the mean exists, but the variance and higher-order moments are infinite, etc. For finite-size samples drawn from such distribution, this behavior implies that the central moment estimators (like the mean and the variance) for diverging moments will never converge – as more data is accumulated, they continue to grow. These power-law probability distributions are also called Pareto-type distributions, distributions with Pareto tails, or distributions with regularly varying tails.

A modification, which does not satisfy the general form above, with an exponential cutoff, is

_p_(_x_) ∝ _L_(_x_)_x_^( − _α_)_e_^( − _λ__x_).

In this distribution, the exponential decay term e^( − λx) eventually overwhelms the power-law behavior at very large values of x. This distribution does not scale and is thus not asymptotically as a power law; however, it does approximately scale over a finite region before the cutoff. (Note that the pure form above is a subset of this family, with λ = 0.) This distribution is a common alternative to the asymptotic power-law distribution because it naturally captures finite-size effects.

The Tweedie distributions are a family of statistical models characterized by closure under additive and reproductive convolution as well as under scale transformation. Consequently, these models all express a power-law relationship between the variance and the mean. These models have a fundamental role as foci of mathematical convergence similar to the role that the normal distribution has as a focus in the central limit theorem. This convergence effect explains why the variance-to-mean power law manifests so widely in natural processes, as with Taylor's law in ecology and with fluctuation scaling[33] in physics. It can also be shown that this variance-to-mean power law, when demonstrated by the method of expanding bins, implies the presence of 1/_f_ noise and that 1/_f_ noise can arise as a consequence of this Tweedie convergence effect.[34]

Graphical methods for identification

Although more sophisticated and robust methods have been proposed, the most frequently used graphical methods of identifying power-law probability distributions using random samples are Pareto quantile-quantile plots (or Pareto Q–Q plots), mean residual life plots[35][36] and log–log plots. Another, more robust graphical method uses bundles of residual quantile functions.[37] (Please keep in mind that power-law distributions are also called Pareto-type distributions.) It is assumed here that a random sample is obtained from a probability distribution, and that we want to know if the tail of the distribution follows a power law (in other words, we want to know if the distribution has a "Pareto tail"). Here, the random sample is called "the data".

Pareto Q–Q plots compare the quantiles of the log-transformed data to the corresponding quantiles of an exponential distribution with mean 1 (or to the quantiles of a standard Pareto distribution) by plotting the former versus the latter. If the resultant scatterplot suggests that the plotted points " asymptotically converge" to a straight line, then a power-law distribution should be suspected. A limitation of Pareto Q–Q plots is that they behave poorly when the tail index α (also called Pareto index) is close to 0, because Pareto Q–Q plots are not designed to identify distributions with slowly varying tails.[38]

On the other hand, in its version for identifying power-law probability distributions, the mean residual life plot consists of first log-transforming the data, and then plotting the average of those log-transformed data that are higher than the _i_-th order statistic versus the _i_-th order statistic, for _i_ = 1, ..., _n_, where n is the size of the random sample. If the resultant scatterplot suggests that the plotted points tend to "stabilize" about a horizontal straight line, then a power-law distribution should be suspected. Since the mean residual life plot is very sensitive to outliers (it is not robust), it usually produces plots that are difficult to interpret; for this reason, such plots are usually called Hill horror plots [39]

Log–log plots are an alternative way of graphically examining the tail of a distribution using a random sample. Caution has to be exercised however as a log–log plot is necessary but insufficient evidence for a power law relationship, as many non power-law distributions will appear as straight lines on a log–log plot.[40][41] This method consists of plotting the logarithm of an estimator of the probability that a particular number of the distribution occurs versus the logarithm of that particular number. Usually, this estimator is the proportion of times that the number occurs in the data set. If the points in the plot tend to "converge" to a straight line for large numbers in the x axis, then the researcher concludes that the distribution has a power-law tail. Examples of the application of these types of plot have been published.[42] A disadvantage of these plots is that, in order for them to provide reliable results, they require huge amounts of data. In addition, they are appropriate only for discrete (or grouped) data.

Another graphical method for the identification of power-law probability distributions using random samples has been proposed.[43] This methodology consists of plotting a _bundle for the log-transformed sample_. Originally proposed as a tool to explore the existence of moments and the moment generation function using random samples, the bundle methodology is based on residual quantile functions (RQFs), also called residual percentile functions,[44][45][46][47][48][49][50] which provide a full characterization of the tail behavior of many well-known probability distributions, including power-law distributions, distributions with other types of heavy tails, and even non-heavy-tailed distributions. Bundle plots do not have the disadvantages of Pareto Q–Q plots, mean residual life plots and log–log plots mentioned above (they are robust to outliers, allow visually identifying power laws with small values of α, and do not demand the collection of much data). In addition, other types of tail behavior can be identified using bundle plots.

Plotting power-law distributions

In general, power-law distributions are plotted on doubly logarithmic axes, which emphasizes the upper tail region. The most convenient way to do this is via the (complementary) cumulative distribution (cdf), P(x) = Pr(X > x),

$$P(x) = \Pr(X > x) =  C \int_x^\infty p(X)\,\mathrm{d}X =  \frac{\alpha-1}{x_\min^{-\alpha+1}} \int_x^\infty X^{-\alpha}\,\mathrm{d}X = \left(\frac{x}{x_\min} \right)^{-\alpha+1}.$$

Note that the cdf is also a power-law function, but with a smaller scaling exponent. For data, an equivalent form of the cdf is the rank-frequency approach, in which we first sort the n observed values in ascending order, and plot them against the vector $\left[1,\frac{n-1}{n},\frac{n-2}{n},\dots,\frac{1}{n}\right]$.

Although it can be convenient to log-bin the data, or otherwise smooth the probability density (mass) function directly, these methods introduce an implicit bias in the representation of the data, and thus should be avoided.[51][52] The cdf, on the other hand, is more robust to (but not without) such biases in the data and preserves the linear signature on doubly logarithmic axes. Though a cdf representation is favored over that of the pdf while fitting a power law to the data with the linear least square method, it is not devoid of mathematical inaccuracy. Thus, while estimating exponents of a power law distribution, maximum likelihood estimator is recommended.

Estimating the exponent from empirical data

There are many ways of estimating the value of the scaling exponent for a power-law tail, however not all of them yield unbiased and consistent answers. Some of the most reliable techniques are often based on the method of maximum likelihood. Alternative methods are often based on making a linear regression on either the log–log probability, the log–log cumulative distribution function, or on log-binned data, but these approaches should be avoided as they can all lead to highly biased estimates of the scaling exponent.

Maximum likelihood

For real-valued, independent and identically distributed data, we fit a power-law distribution of the form

    $p(x) = \frac{\alpha-1}{x_\min} \left(\frac{x}{x_\min}\right)^{-\alpha}$

to the data x ≥ x_(min), where the coefficient $\frac{\alpha-1}{x_\min}$ is included to ensure that the distribution is normalized. Given a choice for x_(min), the log likelihood function becomes:

$$\mathcal{L}(\alpha)=\log  \prod _{i=1}^n \frac{\alpha-1}{x_\min} \left(\frac{x_i}{x_\min}\right)^{-\alpha}$$
The maximum of this likelihood is found by differentiating with respect to parameter α, setting the result equal to zero. Upon rearrangement, this yields the estimator equation:

$$\hat{\alpha} = 1 + n \left[ \sum_{i=1}^n \ln \frac{x_i}{x_\min} \right]^{-1}$$

where {x_(i)} are the n data points x_(i) ≥ x_(min).[53][54] This estimator exhibits a small finite sample-size bias of order O(n^( − 1)), which is small when _n_ > 100. Further, the standard error of the estimate is $\sigma = \frac{\hat{\alpha}-1}{\sqrt{n}} + O(n^{-1})$. This estimator is equivalent to the popular Hill estimator from quantitative finance and extreme value theory.

For a set of _n_ integer-valued data points {x_(i)}, again where each x_(i) ≥ x_(min), the maximum likelihood exponent is the solution to the transcendental equation

    $\frac{\zeta'(\hat\alpha,x_\min)}{\zeta(\hat{\alpha},x_\min)} = -\frac{1}{n} \sum_{i=1}^n \ln \frac{x_i}{x_\min}$

where ζ(α, x_(min)) is the incomplete zeta function. The uncertainty in this estimate follows the same formula as for the continuous equation. However, the two equations for α̂ are not equivalent, and the continuous version should not be applied to discrete data, nor vice versa.

Further, both of these estimators require the choice of x_(min). For functions with a non-trivial L(x) function, choosing x_(min) too small produces a significant bias in α̂, while choosing it too large increases the uncertainty in α̂, and reduces the statistical power of our model. In general, the best choice of x_(min) depends strongly on the particular form of the lower tail, represented by L(x) above.

More about these methods, and the conditions under which they can be used, can be found in . Further, this comprehensive review article provides usable code (Matlab, Python, R and C++) for estimation and testing routines for power-law distributions.

Kolmogorov–Smirnov estimation

Another method for the estimation of the power-law exponent, which does not assume independent and identically distributed (iid) data, uses the minimization of the Kolmogorov–Smirnov statistic, D, between the cumulative distribution functions of the data and the power law:

    $\hat{\alpha} = \underset{\alpha}{\operatorname{arg\,min}} \, D_\alpha$

with

    D_(α) = max_(x)|P_(emp)(x) − P_(α)(x)|

where P_(emp)(x) and P_(α)(x) denote the cdfs of the data and the power law with exponent α, respectively. As this method does not assume iid data, it provides an alternative way to determine the power-law exponent for data sets in which the temporal correlation can not be ignored.[55]

Two-point fitting method

This criterion can be applied for the estimation of power-law exponent in the case of scale free distributions and provides a more convergent estimate than the maximum likelihood method.[56] It has been applied to study probability distributions of fracture apertures.[57] In some contexts the probability distribution is described, not by the cumulative distribution function, by the cumulative frequency of a property _X_, defined as the number of elements per meter (or area unit, second etc.) for which _X_ > _x_ applies, where _x_ is a variable real number. As an example,[58] the cumulative distribution of the fracture aperture, _X_, for a sample of _N_ elements is defined as 'the number of fractures per meter having aperture greater than _x_ . Use of cumulative frequency has some advantages, e.g. it allows one to put on the same diagram data gathered from sample lines of different lengths at different scales (e.g. from outcrop and from microscope).

R function

The following function estimates the exponent in R, plotting the log–log data and the fitted line.

        pwrdist <- function(u,...) {
            # u is vector of event counts, e.g. how many
            # crimes was a given perpetrator charged for by the police
            fx <- table(u)
            i <- as.numeric(names(fx))
            y <- rep(0,max(i))
            y[i] <- fx
            m0 <- glm(y~log(1:max(i)),family=quasipoisson())
            print(summary(m0))
            sub <- paste("s=",round(m0$coef[2],2),"lambda=",sum(u),"/",length(u))
            plot(i,fx,log="xy",xlab="x",sub=sub,ylab="counts",...)
            grid()
            lines(1:max(i),(fitted(m0)),type="b")
            return(m0)
        }


Validating power laws

Although power-law relations are attractive for many theoretical reasons, demonstrating that data does indeed follow a power-law relation requires more than simply fitting a particular model to the data.[59] This is important for understanding the mechanism that gives rise to the distribution: superficially similar distributions may arise for significantly different reasons, and different models yield different predictions, such as extrapolation.

For example, log-normal distributions are often mistaken for power-law distributions: a data set drawn from a lognormal distribution will be approximately linear for large values (corresponding to the upper tail of the lognormal being close to a power law), but for small values the lognormal will drop off significantly (bowing down), corresponding to the lower tail of the lognormal being small (there are very few small values, rather than many small values in a power law).

For example, Gibrat's law about proportional growth processes produce distributions that are lognormal, although their log–log plots look linear over a limited range. An explanation of this is that although the logarithm of the lognormal density function is quadratic in , yielding a "bowed" shape in a log–log plot, if the quadratic term is small relative to the linear term then the result can appear almost linear, and the lognormal behavior is only visible when the quadratic term dominates, which may require significantly more data. Therefore, a log–log plot that is slightly "bowed" downwards can reflect a log-normal distribution – not a power law.

In general, many alternative functional forms can appear to follow a power-law form for some extent. Stumpf[60] proposed plotting the empirical cumulative distribution function in the log-log domain and claimed that a candidate power-law should cover at least two orders of magnitude. Also, researchers usually have to face the problem of deciding whether or not a real-world probability distribution follows a power law. As a solution to this problem, Diaz[61] proposed a graphical methodology based on random samples that allow visually discerning between different types of tail behavior. This methodology uses bundles of residual quantile functions, also called percentile residual life functions, which characterize many different types of distribution tails, including both heavy and non-heavy tails. However, Stumpf[62] claimed the need for both a statistical and a theoretical background in order to support a power-law in the underlying mechanism driving the data generating process.

One method to validate a power-law relation tests many orthogonal predictions of a particular generative mechanism against data. Simply fitting a power-law relation to a particular kind of data is not considered a rational approach. As such, the validation of power-law claims remains a very active field of research in many areas of modern science.


See also

-   Acoustic attenuation
-   Allometry
-   Fat-tailed distribution
-   Finite-time singularity
-   Fractional calculus
-   Fractional dynamics
-   Heavy-tailed distributions
-   Hyperbolic growth

-   Lévy flight
-   Long tail
-   Power law fluid
-   Simon model
-   Stable distribution
-   Stevens's power law
-   Wealth concentration
-   Webgraph


References

NOTES

BIBLIOGRAPHY

-   Bak, Per (1997) _How nature works_, Oxford University Press
-   -   -   -   Alexander Saichev, Yannick Malevergne and Didier Sornette (2009) _Theory of Zipf's law and beyond_, Lecture Notes in Economics and Mathematical Systems, Volume 632, Springer (November 2009),
-   -   -   Mark Buchanan (2000) _Ubiquity_, Weidenfeld & Nicolson
-


External links

-   Zipf's law
-   Zipf, Power-laws, and Pareto – a ranking tutorial
-   Stream Morphometry and Horton's Laws
-   Clay Shirky on Institutions & Collaboration: Power law in relation to the internet-based social networks
-   Clay Shirky on Power Laws, Weblogs, and Inequality
-   "How the Finance Gurus Get Risk All Wrong" by Benoit Mandelbrot & Nassim Nicholas Taleb. _Fortune_, July 11, 2005.
-   "Million-dollar Murray": power-law distributions in homelessness and other social problems; by Malcolm Gladwell. _The New Yorker_, February 13, 2006.
-   Benoit Mandelbrot & Richard Hudson: _The Misbehaviour of Markets (2004)_
-   Philip Ball: Critical Mass: How one thing leads to another (2005)
-   _Tyranny of the Power Law_ from The Econophysics Blog
-   _So You Think You Have a Power Law – Well Isn't That Special?_ from Three-Toed Sloth, the blog of Cosma Shalizi, Professor of Statistics at Carnegie-Mellon University.
-   Simple MATLAB script which bins data to illustrate power-law distributions (if any) in the data.
-   The Erdős Webgraph Server visualizes the distribution of the degrees of the webgraph on the download page.

nl:Machtsfunctie

Category:Exponentials * Category:Theory of probability distributions Category:Statistical laws

[1]

[2]

[3]

[4]

[5]

[6]

[7] Stevens, S. S. (1957). On the psychophysical law. Psychological Review, 64, 153-181

[8] Staddon, J. E. R. (1978). Theory of behavioral power functions. Psychological Review, 85, 305-320.

[9]

[10] 9na CEPAL Charlas Sobre Sistemas Complejos Sociales (CCSSCS): Leyes de potencias, https://www.youtube.com/watch?v=4uDSEs86xCI

[11]

[12] Malcolm Gladwell (2006), Million-Dollar Murray;

[13] Newman, Mark EJ. "Power laws, Pareto distributions and Zipf's law." Contemporary physics 46.5 (2005): 323-351.

[14]

[15]

[16]

[17]

[18]

[19]

[20]

[21]

[22] Reed W. J.; Hughes B. D. "From gene families and genera to incomes and internet file sizes: Why power laws are so common in nature". Phys Rev E, 2002, 66, 067103

[23]

[24]

[25]

[26]

[27]

[28]

[29]

[30]

[31]

[32] N. H. Bingham, C. M. Goldie, and J. L. Teugels, Regular variation. Cambridge University Press, 1989

[33]

[34]

[35] Beirlant, J., Teugels, J. L., Vynckier, P. (1996a) _Practical Analysis of Extreme Values_, Leuven: Leuven University Press

[36] Coles, S. (2001) _An introduction to statistical modeling of extreme values_. Springer-Verlag, London.

[37]

[38]

[39]

[40]

[41]

[42]

[43]

[44]

[45]

[46] Joe, H. (1985), "Characterizations of life distributions from percentile residual lifetimes", _Ann. Inst. Statist. Math._ 37, Part A, 165–172.

[47]

[48]

[49]

[50]

[51]

[52]

[53]

[54]

[55]

[56]

[57]

[58]

[59]

[60]

[61]

[62]