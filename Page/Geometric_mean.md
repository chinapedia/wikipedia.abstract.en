In mathematics, the GEOMETRIC MEAN is a mean or average, which indicates the central tendency or typical value of a set of numbers by using the product of their values (as opposed to the arithmetic mean which uses their sum). The geometric mean is defined as the [[Nth_root|, \quad h_0 = y

where h_(n + 1) is the harmonic mean of the previous values of the two sequences, then a_(n) and h_(n) will converge to the geometric mean of x and y.

This can be seen easily from the fact that the sequences do converge to a common limit (which can be shown by Bolzano–Weierstrass theorem) and the fact that geometric mean is preserved:

$$\sqrt{a_i h_i} =
  \sqrt{\frac{a_i + h_i}{\frac{a_i + h_i}{h_i a_i}}} =
  \sqrt{\frac{a_i + h_i}{\frac{1}{a_i} + \frac{1}{h_i}}} =
  \sqrt{a_{i+1} h_{i+1}}$$

Replacing the arithmetic and harmonic mean by a pair of generalized means of opposite, finite exponents yields the same result.

Relationship with logarithms

The geometric mean can also be expressed as the exponential of the arithmetic mean of logarithms.[1] By using logarithmic identities to transform the formula, the multiplications can be expressed as a sum and the power as a multiplication:

    When a₁, a₂, …, a_(n) > 0

        $\left( \prod_{i=1}^n a_i \right)^\frac{1}{n} = \exp\left[\frac{1}{n} \sum_{i=1}^n \ln a_i\right]$

    if ∃a_(j) < 0 then

        $\left( \prod_{i=1}^n a_i \right)^\frac{1}{n} = \left(-1\right)^m \exp\left[\frac{1}{n}\sum_{i=1}^n \ln \left|a_i\right| \right]$

    where m is the number of negative numbers.

This is sometimes called the LOG-AVERAGE (not to be confused with the logarithmic average). It is simply computing the arithmetic mean of the logarithm-transformed values of a_(i) (i.e., the arithmetic mean on the log scale) and then using the exponentiation to return the computation to the original scale, i.e., it is the generalised f-mean with f(x) = log x. For example, the geometric mean of 2 and 8 can be calculated as the following, where b is any base of a logarithm (commonly 2, e or 10):

$$b^{\frac{1}{2}\left[\log_b (2) + \log_b (8)\right]} = 4$$

Related to the above, it can be seen that for a given sample of points a₁, …, a_(n), the geometric mean is the minimizer of $f(a) = \sum_{i=1}^n (\log(a_i) - \log(a))^2$, whereas the arithmetic mean is the minimizer of $f(a) = \sum_{i=1}^n (a_i - a)^2$. Thus, the geometric mean provides a summary of the samples whose exponent best matches the exponents of the samples (in the least squares sense).

The log form of the geometric mean is generally the preferred alternative for implementation in computer languages because calculating the product of many numbers can lead to an arithmetic overflow or arithmetic underflow. This is less likely to occur with the sum of the logarithms for each number.

Relationship with arithmetic mean and mean-preserving spread

If a set of non-identical numbers is subjected to a mean-preserving spread — that is, two or more elements of the set are "spread apart" from each other while leaving the arithmetic mean unchanged — then the geometric mean always decreases.[2]

Computation in constant time

In cases where the geometric mean is being used to determine the average growth rate of some quantity, and the initial and final values a₀ and a_(n) of that quantity are known, the product of the measured growth rate at every step need not be taken. Instead, the geometric mean is simply

$$\left(\frac{a_n}{a_0}\right)^\frac{1}{n},$$

where n is the number of steps from the initial to final state.

If the values are a₀, …, a_(n), then the growth rate between measurement a_(k) and a_(k + 1) is a_(k + 1)/a_(k). The geometric mean of these growth rates is just

$$\left( \frac{a_1}{a_0} \frac{a_2}{a_1} \cdots \frac{a_n}{a_{n-1}} \right)^\frac{1}{n} = \left(\frac{a_n}{a_0}\right)^\frac{1}{n}$$


Properties

The fundamental property of the geometric mean, which can be proven to be false for any other mean, is

    $\operatorname{GM}\left(\frac{X_i}{Y_i}\right) = \frac{\operatorname{GM}(X_i)}{\operatorname{GM}(Y_i)}$

This makes the geometric mean the only correct mean when averaging _normalized_ results; that is, results that are presented as ratios to reference values.[3] This is the case when presenting computer performance with respect to a reference computer, or when computing a single average index from several heterogeneous sources (for example, life expectancy, education years, and infant mortality). In this scenario, using the arithmetic or harmonic mean would change the ranking of the results depending on what is used as a reference. For example, take the following comparison of execution time of computer programs:

                    Computer A     Computer B     Computer C
  ----------------- -------------- -------------- ------------
  PROGRAM 1         1              10             20
  PROGRAM 2         1000           100            20
  ARITHMETIC MEAN   500.5          55             20
  GEOMETRIC MEAN    31.622 . . .   31.622 . . .   20
  HARMONIC MEAN     1.998 . . .    18.182 . . .   20

The arithmetic and geometric means "agree" that computer C is the fastest. However, by presenting appropriately normalized values _and_ using the arithmetic mean, we can show either of the other two computers to be the fastest. Normalizing by A's result gives A as the fastest computer according to the arithmetic mean:

                    Computer A   Computer B    Computer C
  ----------------- ------------ ------------- -------------
  PROGRAM 1         1            10            20
  PROGRAM 2         1            0.1           0.02
  ARITHMETIC MEAN   1            5.05          10.01
  GEOMETRIC MEAN    1            1             0.632 . . .
  HARMONIC MEAN     1            0.198 . . .   0.039 . . .

while normalizing by B's result gives B as the fastest computer according to the arithmetic mean but A as the fastest according to the harmonic mean:

                    Computer A    Computer B   Computer C
  ----------------- ------------- ------------ -------------
  PROGRAM 1         0.1           1            2
  PROGRAM 2         10            1            0.2
  ARITHMETIC MEAN   5.05          1            1.1
  GEOMETRIC MEAN    1             1            0.632
  HARMONIC MEAN     0.198 . . .   1            0.363 . . .

and normalizing by C's result gives C as the fastest computer according to the arithmetic mean but A as the fastest according to the harmonic mean:

                    Computer A    Computer B    Computer C
  ----------------- ------------- ------------- ------------
  PROGRAM 1         0.05          0.5           1
  PROGRAM 2         50            5             1
  ARITHMETIC MEAN   25.025        2.75          1
  GEOMETRIC MEAN    1.581 . . .   1.581 . . .   1
  HARMONIC MEAN     0.099 . . .   0.909 . . .   1

In all cases, the ranking given by the geometric mean stays the same as the one obtained with unnormalized values.

However, this reasoning has been questioned.[4] Giving consistent results is not always equal to giving the correct results. In general, it is more rigorous to assign weights to each of the programs, calculate the average weighted execution time (using the arithmetic mean), and then normalize that result to one of the computers. The three tables above just give a different weight to each of the programs, explaining the inconsistent results of the arithmetic and harmonic means (the first table gives equal weight to both programs, the second gives a weight of 1/1000 to the second program, and the third gives a weight of 1/100 to the second program and 1/10 to the first one). The use of the geometric mean for aggregating performance numbers should be avoided if possible, because multiplying execution times has no physical meaning, in contrast to adding times as in the arithmetic mean. Metrics that are inversely proportional to time (speedup, IPC) should be averaged using the harmonic mean.


Applications

Proportional growth

The geometric mean is more appropriate than the arithmetic mean for describing proportional growth, both exponential growth (constant proportional growth) and varying growth; in business the geometric mean of growth rates is known as the compound annual growth rate (CAGR). The geometric mean of growth over periods yields the equivalent constant growth rate that would yield the same final amount.

Suppose an orange tree yields 100 oranges one year and then 180, 210 and 300 the following years, so the growth is 80%, 16.6666% and 42.8571% for each year respectively. Using the arithmetic mean calculates a (linear) average growth of 46.5079% (80% + 16.6666% + 42.8571%, that sum then divided by 3). However, if we start with 100 oranges and let it grow 46.5079% each year, the result is 314 oranges, not 300, so the linear average _over_-states the year-on-year growth.

Instead, we can use the geometric mean. Growing with 80% corresponds to multiplying with 1.80, so we take the geometric mean of 1.80, 1.166666 and 1.428571, i.e. $\sqrt[3]{1.80 \times 1.166666 \times 1.428571} \approx 1.442249$; thus the "average" growth per year is 44.2249%. If we start with 100 oranges and let the number grow with 44.2249% each year, the result is 300 oranges.

Applications in the social sciences

Although the geometric mean has been relatively rare in computing social statistics, starting from 2010 the United Nations Human Development Index did switch to this mode of calculation, on the grounds that it better reflected the non-substitutable nature of the statistics being compiled and compared:

    The geometric mean decreases the level of substitutability between dimensions [being compared] and at the same time ensures that a 1 percent decline in say life expectancy at birth has the same impact on the HDI as a 1 percent decline in education or income. Thus, as a basis for comparisons of achievements, this method is also more respectful of the intrinsic differences across the dimensions than a simple average.[5]

Not all values used to compute the HDI (Human Development Index) are normalized; some of them instead have the form (X−X_(min))/(X_(norm)−X_(min)). This makes the choice of the geometric mean less obvious than one would expect from the "Properties" section above.

Aspect ratios

16:9 standard.[6] TV 4:3/1.33 in red, 1.66 in orange, 16:9/1.7 IN BLUE, 1.85 in yellow, Panavision/2.2 in mauve and CinemaScope/2.35 in purple.]] The geometric mean has been used in choosing a compromise aspect ratio in film and video: given two aspect ratios, the geometric mean of them provides a compromise between them, distorting or cropping both in some sense equally. Concretely, two equal area rectangles (with the same center and parallel sides) of different aspect ratios intersect in a rectangle whose aspect ratio is the geometric mean, and their hull (smallest rectangle which contains both of them) likewise has aspect ratio their geometric mean.

In the choice of 16:9 aspect ratio by the SMPTE, balancing 2.35 and 4:3, the geometric mean is $\sqrt{2.35 \times \frac{4}{3}} \approx 1.7701$, and thus $16:9 = 1.77\overline{7}$... was chosen. This was discovered empirically by Kerns Powers, who cut out rectangles with equal areas and shaped them to match each of the popular aspect ratios. When overlapped with their center points aligned, he found that all of those aspect ratio rectangles fit within an outer rectangle with an aspect ratio of 1.77:1 and all of them also covered a smaller common inner rectangle with the same aspect ratio 1.77:1.[7] The value found by Powers is exactly the geometric mean of the extreme aspect ratios, 4:3(1.33:1) and CinemaScope(2.35:1), which is coincidentally close to 16 : 9 ($1.77\overline{7}:1$). The intermediate ratios have no effect on the result, only the two extreme ratios.

Applying the same geometric mean technique to 16:9 and 4:3 approximately yields the 14:9 ($1.55\overline{5}$...) aspect ratio, which is likewise used as a compromise between these ratios.[8] In this case 14:9 is exactly the _arithmetic mean_ of 16 : 9 and 4 : 3 = 12 : 9, since 14 is the average of 16 and 12, while the precise _geometric mean_ is $\sqrt{\frac{16}{9}\times\frac{4}{3}} \approx 1.5396 \approx 13.8:9,$ but the two different _means_, arithmetic and geometric, are approximately equal because both numbers are sufficiently close to each other (a difference of less than 2%).

Anti-reflective coatings

In optical coatings, where reflection needs to be minimised between two media of refractive indices _n_₀ and _n_₂, the optimum refractive index _n_₁ of the anti-reflective coating is given by the geometric mean: $n_1 = \sqrt{n_0 n_2}$.

Spectral flatness

In signal processing, spectral flatness, a measure of how flat or spiky a spectrum is, is defined as the ratio of the geometric mean of the power spectrum to its arithmetic mean.

Geometry

In the case of a right triangle, its altitude is the length of a line extending perpendicularly from the hypotenuse to its 90° vertex. Imagining that this line splits the hypotenuse into two segments, the geometric mean of these segment lengths is the length of the altitude.

In an ellipse, the semi-minor axis is the geometric mean of the maximum and minimum distances of the ellipse from a focus; it is also the geometric mean of the semi-major axis and the semi-latus rectum. The semi-major axis of an ellipse is the geometric mean of the distance from the center to either focus and the distance from the center to either directrix.

Distance to the horizon of a sphere is the geometric mean of the distance to the closest point of the sphere and the distance to the farthest point of the sphere.

Both in the approximation of squaring the circle according to S.A. Ramanujan (1914) and in the construction of the Heptadecagon according to _"sent by T. P. Stowell, credited to Leybourn's Math. Repository, 1818"_, the geometric mean is employed.

Financial

The geometric mean has from time to time been used to calculate financial indices (the averaging is over the components of the index). For example, in the past the FT 30 index used a geometric mean.[9] It is also used in the recently introduced "RPIJ" measure of inflation in the United Kingdom and elsewhere in the European Union.

This has the effect of understating movements in the index compared to using the arithmetic mean.[10]

Image Processing

The geometric mean filter is used as a noise filter in image processing.


See also

-   Arithmetic mean
-   Arithmetic-geometric mean
-   Average
-   Generalized mean
-   Geometric mean theorem
-   Geometric standard deviation
-   Harmonic mean
-   Heronian mean
-   Hyperbolic coordinates
-   Log-normal distribution
-   Muirhead's inequality
-   Multiplicative calculus
-   Product
-   Pythagorean means
-   Quadratic mean
-   Quadrature (mathematics)
-   Rate of return
-   Weighted geometric mean


Notes and references

Deleted redundant link.


See also

-   Multiplicative calculus


External links

-   Calculation of the geometric mean of two numbers in comparison to the arithmetic solution
-   Arithmetic and geometric means
-   When to use the geometric mean
-   Practical solutions for calculating geometric mean with different kinds of data
-   Geometric Mean on MathWorld
-   Geometric Meaning of the Geometric Mean
-   Geometric Mean Calculator for larger data sets
-   Computing Congressional apportionment using Geometric Mean
-   Non-Newtonian calculus website
-   Geometric Mean Definition and Formula

Category:Means Category:Non-Newtonian calculus

[1]

[2]

[3]

[4]

[5]

[6]

[7]

[8]

[9]

[10]