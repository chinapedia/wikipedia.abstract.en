The number () is a mathematical constant. Originally defined as the ratio of a circle's circumference to its diameter, it now has various equivalent definitions and appears in many formulas in all areas of mathematics and physics. It is approximately equal to 3.14159. It has been represented by the Greek letter "" since the mid-18th century, though it is also sometimes spelled out as "PI". It is also called ARCHIMEDES' CONSTANT.

Being an irrational number, cannot be expressed as a common fraction (equivalently, its decimal representation never ends and never settles into a permanently repeating pattern). Still, fractions such as 22/7 and other rational numbers are commonly used to approximate . The digits appear to be randomly distributed. In particular, the digit sequence of is conjectured to satisfy a specific kind of statistical randomness, but to date, no proof of this has been discovered. Also, is a transcendental number; that is, it is not the root of any polynomial having rational coefficients. This transcendence of implies that it is impossible to solve the ancient challenge of squaring the circle with a compass and straightedge.

Ancient civilizations required fairly accurate computed values to approximate for practical reasons, including the Egyptians and Babylonians. Around 250 BC the Greek mathematician Archimedes created an algorithm for calculating it. In the 5th century AD Chinese mathematics approximated to seven digits, while Indian mathematics made a five-digit approximation, both using geometrical techniques. The historically first exact formula for , based on infinite series, was not available until a millennium later, when in the 14th century the Madhava–Leibniz series was discovered in Indian mathematics.[1][2] In the 20th and 21st centuries, mathematicians and computer scientists discovered new approaches that, when combined with increasing computational power, extended the decimal representation of to many trillions of digits after the decimal point.[3][4] Practically all scientific applications require no more than a few hundred digits of , and many substantially fewer, so the primary motivation for these computations is the quest to find more efficient algorithms for calculating lengthy numeric series, as well as the desire to break records.[5][6] The extensive calculations involved have also been used to test supercomputers and high-precision multiplication algorithms.

Because its most elementary definition relates to the circle, is found in many formulae in trigonometry and geometry, especially those concerning circles, ellipses, and spheres. In more modern mathematical analysis, the number is instead defined using the spectral properties of the real number system, as an eigenvalue or a period, without any reference to geometry. It appears therefore in areas of mathematics and the sciences having little to do with the geometry of circles, such as number theory and statistics, as well as in almost all areas of physics. The ubiquity of makes it one of the most widely known mathematical constants both inside and outside the scientific community. Several books devoted to have been published, and record-setting calculations of the digits of often result in news headlines. Attempts to memorize the value of with increasing precision have led to records of over 70,000 digits.


Fundamentals

Name

The symbol used by mathematicians to represent the ratio of a circle's circumference to its diameter is the lowercase Greek letter , sometimes spelled out as _pi,_ and derived from the first letter of the Greek word _perimetros,_ meaning circumference.[7] In English, is pronounced as "pie" ( ).[8] In mathematical use, the lowercase letter (or π in sans-serif font) is distinguished from its capitalized and enlarged counterpart , which denotes a product of a sequence, analogous to how denotes summation.

The choice of the symbol is discussed in the section _Adoption of the symbol _.

Definition

Pi_eq_C_over_d.svg is commonly defined as the ratio of a circle's circumference to its diameter :[9]

$$\pi = \frac{C}{d}.$$
The ratio is constant, regardless of the circle's size. For example, if a circle has twice the diameter of another circle it will also have twice the circumference, preserving the ratio . This definition of implicitly makes use of flat (Euclidean) geometry; although the notion of a circle can be extended to any curved (non-Euclidean) geometry, these new circles will no longer satisfy the formula _C_/_d_}}.[10]

Here, the circumference of a circle is the arc length around the perimeter of the circle, a quantity which can be formally defined independently of geometry using limits, a concept in calculus.[11] For example, one may directly compute the arc length of the top half of the unit circle, given in Cartesian coordinates by the equation 1}}, as the integral:[12]

$$\pi = \int_{-1}^1 \frac{dx}{\sqrt{1-x^2}}.$$
An integral such as this was adopted as the definition of by Karl Weierstrass, who defined it directly as an integral in 1841.[13]

Definitions of such as these that rely on a notion of circumference, and hence implicitly on concepts of the integral calculus, are no longer common in the literature. explains that this is because in many modern treatments of calculus, differential calculus typically precedes integral calculus in the university curriculum, so it is desirable to have a definition of that does not rely on the latter. One such definition, due to Richard Baltzer,[14] and popularized by Edmund Landau,[15] is the following: is twice the smallest positive number at which the cosine function equals 0.[16][17][18] The cosine can be defined independently of geometry as a power series,[19] or as the solution of a differential equation.[20]

In a similar spirit, can be defined instead using properties of the complex exponential, , of a complex variable . Like the cosine, the complex exponential can be defined in one of several ways. The set of complex numbers at which is equal to one is then an (imaginary) arithmetic progression of the form:

{…,  − 2_π__i_, 0, 2_π__i_, 4_π__i_, …} = {2_π__k__i_ ∣ _k_ ∈ ℤ}
and there is a unique positive real number with this property.[21][22] A more abstract variation on the same idea, making use of sophisticated mathematical concepts of topology and algebra, is the following theorem:[23] there is a unique (up to automorphism) continuous isomorphism from the group R/Z of real numbers under addition modulo integers (the circle group) onto the multiplicative group of complex numbers of absolute value one. The number is then defined as half the magnitude of the derivative of this homomorphism.[24]

A circle encloses the largest area that can be attained within a given perimeter. Thus the number is also characterized as the best constant in the isoperimetric inequality (times one-fourth). There are many other, closely related, ways in which appears as an eigenvalue of some geometrical or physical process; see below.

Irrationality and normality

is an irrational number, meaning that it cannot be written as the ratio of two integers (fractions such as are commonly used to approximate , but no common fraction (ratio of whole numbers) can be its exact value).[25] Because is irrational, it has an infinite number of digits in its decimal representation, and it does not settle into an infinitely repeating pattern of digits. There are several proofs that is irrational; they generally require calculus and rely on the _reductio ad absurdum_ technique. The degree to which can be approximated by rational numbers (called the irrationality measure) is not precisely known; estimates have established that the irrationality measure is larger than the measure of or but smaller than the measure of Liouville numbers.[26]

The digits of have no apparent pattern and have passed tests for statistical randomness, including tests for normality; a number of infinite length is called normal when all possible sequences of digits (of any given length) appear equally often.[27] The conjecture that is normal has not been proven or disproven.[28]

Since the advent of computers, a large number of digits of have been available on which to perform statistical analysis. Yasumasa Kanada has performed detailed statistical analyses on the decimal digits of and found them consistent with normality; for example, the frequencies of the ten digits 0 to 9 were subjected to statistical significance tests, and no evidence of a pattern was found.[29] Any random sequence of digits contains arbitrarily long subsequences that appear non-random, by the infinite monkey theorem. Thus, because the sequence of 's digits passes statistical tests for randomness, it contains some sequences of digits that may appear non-random, such as a sequence of six consecutive 9s that begins at the 762nd decimal place of the decimal representation of .[30] This is also called the "Feynman point" in mathematical folklore, after Richard Feynman, although no connection to Feynman is known.

Transcendence

Squaring_the_circle.svg, squaring the circle is not possible in a finite number of steps using the classical tools of compass and straightedge.]] In addition to being irrational, more strongly is a transcendental number, which means that it is not the solution of any non-constant polynomial equation with rational coefficients, such as 0}}.[31][32]

The transcendence of has two important consequences: First, cannot be expressed using any finite combination of rational numbers and square roots or _n_-th roots such as or . Second, since no transcendental number can be constructed with compass and straightedge, it is not possible to "square the circle". In other words, it is impossible to construct, using compass and straightedge alone, a square whose area is exactly equal to the area of a given circle.[33] Squaring a circle was one of the important geometry problems of the classical antiquity.[34] Amateur mathematicians in modern times have sometimes attempted to square the circle and sometimes claim success despite the fact that it is mathematically impossible.[35]

Continued fractions

Matheon2.jpg outside the Mathematics Building at the Technical University of Berlin.]] Like all irrational numbers, cannot be represented as a common fraction (also known as a simple or vulgar fraction), by the very definition of "irrational number" (that is, "not a rational number"). But every irrational number, including , can be represented by an infinite series of nested fractions, called a continued fraction:

$$\pi=3+\textstyle \cfrac{1}{7+\textstyle \cfrac{1}{15+\textstyle \cfrac{1}{1+\textstyle \cfrac{1}{292+\textstyle \cfrac{1}{1+\textstyle \cfrac{1}{1+\textstyle \cfrac{1}{1+\ddots}}}}}}}$$

Truncating the continued fraction at any point yields a rational approximation for ; the first four of these are 3, 22/7, 333/106, and 355/113. These numbers are among the most well-known and widely used historical approximations of the constant. Each approximation generated in this way is a best rational approximation; that is, each is closer to than any other fraction with the same or a smaller denominator.[36] Because is known to be transcendental, it is by definition not algebraic and so cannot be a quadratic irrational. Therefore, cannot have a periodic continued fraction. Although the simple continued fraction for (shown above) also does not exhibit any other obvious pattern,[37] mathematicians have discovered several generalized continued fractions that do, such as:[38]



\begin{align} \pi & = \textstyle \cfrac{4}{1+\textstyle \cfrac{1^2}{2+\textstyle \cfrac{3^2}{2+\textstyle \cfrac{5^2}{2+\textstyle \cfrac{7^2}{2+\textstyle \cfrac{9^2}{2+\ddots}}}}}}



3+\TEXTSTYLE \CFRAC{1^2}{6+\TEXTSTYLE \CFRAC{3^2}{6+\TEXTSTYLE \CFRAC{5^2}{6+\TEXTSTYLE \CFRAC{7^2}{6+\TEXTSTYLE \CFRAC{9^2}{6+\DDOTS}}}}} \\[8PT] &


\textstyle \cfrac{4}{1+\textstyle \cfrac{1^2}{3+\textstyle \cfrac{2^2}{5+\textstyle \cfrac{3^2}{7+\textstyle \cfrac{4^2}{9+\ddots}}}}} \end{align}

Approximate value and digits

Some approximations of _pi_ include:

-   INTEGERS: 3
-   FRACTIONS: Approximate fractions include (in order of increasing accuracy) , , , , , , and .[39] (List is selected terms from and .)
-   DIGITS: The first 50 decimal digits are [40] (see )

DIGITS IN OTHER NUMBER SYSTEMS

-   The first 48 binary (base 2) digits (called bits) are (see )
-   The first 20 digits in hexadecimal (base 16) are [41] (see )
-   The first five sexagesimal (base 60) digits are 3;8,29,44,0,47[42] (see )

Complex numbers and Euler's identity

Euler's_formula.svg on the unit circle centered at the origin in the complex plane given by Euler's formula.]]

Any complex number, say , can be expressed using a pair of real numbers. In the polar coordinate system, one number (radius or _r_) is used to represent 's distance from the origin of the complex plane and the other (angle or ) to represent a counter-clockwise rotation from the positive real line as follows:[43]

_z_ = _r_ ⋅ (cos _φ_ + _i_sin _φ_),
where is the imaginary unit satisfying = −1. The frequent appearance of in complex analysis can be related to the behavior of the exponential function of a complex variable, described by Euler's formula:[44]

_e_^(_i__φ_) = cos _φ_ + _i_sin _φ_,

where [[E_(mathematical_constant)|the constant

Antiquity

The best-known approximations to dating before the Common Era were accurate to two decimal places; this was improved upon in Chinese mathematics in particular by the mid-first millennium, to an accuracy of seven decimal places. After this, no further progress was made until the late medieval period.

Based on the measurements of the Great Pyramid of Giza , some Egyptologists have claimed that the ancient Egyptians used an approximation of as from as early as the Old Kingdom.[45][46] This claim has met with skepticism.[47][48][49][50] The earliest written approximations of are found in Babylon and Egypt, both within one percent of the true value. In Babylon, a clay tablet dated 1900–1600 BC has a geometrical statement that, by implication, treats as  = 3.125.[51] In Egypt, the Rhind Papyrus, dated around 1650 BC but copied from a document dated to 1850 BC, has a formula for the area of a circle that treats as 3.16.[52]

Astronomical calculations in the _Shatapatha Brahmana_ (ca. 4th century BC) use a fractional approximation of  ≈ 3.139 (an accuracy of 9×10^(−4)).[53] Other Indian sources by about 150 BC treat as  ≈ 3.1622.[54]

Polygon approximation era

Archimedes_pi.svg The first recorded algorithm for rigorously calculating the value of was a geometrical approach using polygons, devised around 250 BC by the Greek mathematician Archimedes.[55] This polygonal algorithm dominated for over 1,000 years, and as a result is sometimes referred to as "Archimedes' constant".[56] Archimedes computed upper and lower bounds of by drawing a regular hexagon inside and outside a circle, and successively doubling the number of sides until he reached a 96-sided regular polygon. By calculating the perimeters of these polygons, he proved that (that is ).[57] Archimedes' upper bound of may have led to a widespread popular belief that is equal to .[58] Around 150 AD, Greek-Roman scientist Ptolemy, in his _Almagest_, gave a value for of 3.1416, which he may have obtained from Archimedes or from Apollonius of Perga.[59] Mathematicians using polygonal algorithms reached 39 digits of in 1630, a record only broken in 1699 when infinite series were used to reach 71 digits.[60] Archimedes_by_Giuseppe_Nogari.png developed the polygonal approach to approximating .]]

In ancient China, values for included 3.1547 (around 1 AD), (100 AD, approximately 3.1623), and (3rd century, approximately 3.1556).[61] Around 265 AD, the Wei Kingdom mathematician Liu Hui created a polygon-based iterative algorithm and used it with a 3,072-sided polygon to obtain a value of of 3.1416.[62][63] Liu later invented a faster method of calculating and obtained a value of 3.14 with a 96-sided polygon, by taking advantage of the fact that the differences in area of successive polygons form a geometric series with a factor of 4.[64] The Chinese mathematician Zu Chongzhi, around 480 AD, calculated that and suggested the approximations = 3.14159292035... and = 3.142857142857..., which he termed the _Milü_ (''close ratio") and _Yuelü_ ("approximate ratio"), respectively, using Liu Hui's algorithm applied to a 12,288-sided polygon. With a correct value for its seven first decimal digits, this value of remained the most accurate approximation of available for the next 800 years.[65]

The Indian astronomer Aryabhata used a value of 3.1416 in his _Āryabhaṭīya_ (499 AD).[66] Fibonacci in c. 1220 computed 3.1418 using a polygonal method, independent of Archimedes.[67] Italian author Dante apparently employed the value .[68]

The Persian astronomer Jamshīd al-Kāshī produced 9 sexagesimal digits, roughly the equivalent of 16 decimal digits, in 1424 using a polygon with 3×2²⁸ sides,[69][70] which stood as the world record for about 180 years.[71] French mathematician François Viète in 1579 achieved 9 digits with a polygon of 3×2¹⁷ sides.[72] Flemish mathematician Adriaan van Roomen arrived at 15 decimal places in 1593.[73] In 1596, Dutch mathematician Ludolph van Ceulen reached 20 digits, a record he later increased to 35 digits (as a result, was called the "Ludolphian number" in Germany until the early 20th century).[74] Dutch scientist Willebrord Snellius reached 34 digits in 1621,[75] and Austrian astronomer Christoph Grienberger arrived at 38 digits in 1630 using 10⁴⁰ sides,[76] which remains the most accurate approximation manually achieved using polygonal algorithms.[77]

Infinite series

The calculation of was revolutionized by the development of infinite series techniques in the 16th and 17th centuries. An infinite series is the sum of the terms of an infinite sequence.[78] Infinite series allowed mathematicians to compute with much greater precision than Archimedes and others who used geometrical techniques.[79] Although infinite series were exploited for most notably by European mathematicians such as James Gregory and Gottfried Wilhelm Leibniz, the approach was first discovered in India sometime between 1400 and 1500 AD.[80] The first written description of an infinite series that could be used to compute was laid out in Sanskrit verse by Indian astronomer Nilakantha Somayaji in his _Tantrasamgraha_, around 1500 AD.[81] The series are presented without proof, but proofs are presented in a later Indian work, _Yuktibhāṣā_, from around 1530 AD. Nilakantha attributes the series to an earlier Indian mathematician, Madhava of Sangamagrama, who lived c. 1350 – c. 1425.[82] Several infinite series are described, including series for sine, tangent, and cosine, which are now referred to as the Madhava series or Gregory–Leibniz series.[83] Madhava used infinite series to estimate to 11 digits around 1400, but that value was improved on around 1430 by the Persian mathematician Jamshīd al-Kāshī, using a polygonal algorithm.[84] GodfreyKneller-IsaacNewton-1689.jpg used infinite series to compute to 15 digits, later writing "I am ashamed to tell you to how many figures I carried these computations".[85]]]

The first infinite sequence discovered in Europe was an infinite product (rather than an infinite sum, which are more typically used in calculations) found by French mathematician François Viète in 1593:[86][87][88]

    $\frac2\pi = \frac{\sqrt2}2 \cdot \frac{\sqrt{2+\sqrt2}}2 \cdot \frac{\sqrt{2+\sqrt{2+\sqrt2}}}2 \cdots$

The second infinite sequence found in Europe, by John Wallis in 1655, was also an infinite product:[89]

$$\frac{\pi}{2} = \frac{2}{1} \cdot \frac{2}{3} \cdot \frac{4}{3} \cdot \frac{4}{5} \cdot \frac{6}{5} \cdot \frac{6}{7} \cdot \frac{8}{7} \cdot \frac{8}{9} \cdots$$
The discovery of calculus, by English scientist Isaac Newton and German mathematician Gottfried Wilhelm Leibniz in the 1660s, led to the development of many infinite series for approximating . Newton himself used an arcsin series to compute a 15 digit approximation of in 1665 or 1666, later writing "I am ashamed to tell you to how many figures I carried these computations, having no other business at the time."[90]

In Europe, Madhava's formula was rediscovered by Scottish mathematician James Gregory in 1671, and by Leibniz in 1674:[91][92]



\arctan z = z - \frac {z^3} {3} +\frac {z^5} {5} -\frac {z^7} {7} +\cdots

This formula, the Gregory–Leibniz series, equals when evaluated with  = 1.[93] In 1699, English mathematician Abraham Sharp used the Gregory–Leibniz series for $z=\frac{1}{\sqrt{3}}$ to compute to 71 digits, breaking the previous record of 39 digits, which was set with a polygonal algorithm.[94] The Gregory–Leibniz for z = 1 series is simple, but converges very slowly (that is, approaches the answer gradually), so it is not used in modern calculations.[95]

In 1706 John Machin used the Gregory–Leibniz series to produce an algorithm that converged much faster:[96]

$$\frac{\pi}{4} = 4 \arctan \frac{1}{5} - \arctan \frac{1}{239}.$$
Machin reached 100 digits of with this formula.[97] Other mathematicians created variants, now known as Machin-like formulae, that were used to set several successive records for calculating digits of .[98] Machin-like formulae remained the best-known method for calculating well into the age of computers, and were used to set records for 250 years, culminating in a 620-digit approximation in 1946 by Daniel Ferguson – the best approximation achieved without the aid of a calculating device.[99]

A record was set by the calculating prodigy Zacharias Dase, who in 1844 employed a Machin-like formula to calculate 200 decimals of in his head at the behest of German mathematician Carl Friedrich Gauss.[100] British mathematician William Shanks famously took 15 years to calculate to 707 digits, but made a mistake in the 528th digit, rendering all subsequent digits incorrect.[101]

Rate of convergence

Some infinite series for converge faster than others. Given the choice of two infinite series for , mathematicians will generally use the one that converges more rapidly because faster convergence reduces the amount of computation needed to calculate to any given accuracy.[102] A simple infinite series for is the Gregory–Leibniz series:[103]

$$\pi = \frac{4}{1} - \frac{4}{3} + \frac{4}{5} - \frac{4}{7} + \frac{4}{9} - \frac{4}{11} + \frac{4}{13} - \cdots$$
As individual terms of this infinite series are added to the sum, the total gradually gets closer to , and – with a sufficient number of terms – can get as close to as desired. It converges quite slowly, though – after 500,000 terms, it produces only five correct decimal digits of .[104]

An infinite series for (published by Nilakantha in the 15th century) that converges more rapidly than the Gregory–Leibniz series is:[105]

    $\pi = 3 + \frac{4}{2\times3\times4} - \frac{4}{4\times5\times6} + \frac{4}{6\times7\times8} - \frac{4}{8\times9\times10} + \cdots$

The following table compares the convergence rates of these two series:

+--------------------------------------------------------------------------------------------------------------------+----------------+----------------+----------------+----------------+----------------+---------------+
| Infinite series for                                                                                                | After 1st term | After 2nd term | After 3rd term | After 4th term | After 5th term | Converges to: |
+====================================================================================================================+================+================+================+================+================+===============+
| $\pi = \frac{4}{1} - \frac{4}{3} + \frac{4}{5} - \frac{4}{7} + \frac{4}{9} - \frac{4}{11} + \frac{4}{13} + \cdots$ | 4.0000         | 2.6666 ...     | 3.4666 ...     | 2.8952 ...     | 3.3396 ...     | = 3.1415 ...  |
+--------------------------------------------------------------------------------------------------------------------+----------------+----------------+----------------+----------------+----------------+---------------+
| $\pi = {{3}} + \frac{{4}}{2\times3\times4} - \frac{{4}}{4\times5\times6} + \frac{{4}}{6\times7\times8} + \cdots$   | 3.0000         | 3.1666 ...     | 3.1333 ...     | 3.1452 ...     | 3.1396 ...     |               |
+--------------------------------------------------------------------------------------------------------------------+----------------+----------------+----------------+----------------+----------------+---------------+

After five terms, the sum of the Gregory–Leibniz series is within 0.2 of the correct value of , whereas the sum of Nilakantha's series is within 0.002 of the correct value of . Nilakantha's series converges faster and is more useful for computing digits of . Series that converge even faster include Machin's series and Chudnovsky's series, the latter producing 14 correct decimal digits per term.[106]

Irrationality and transcendence

Proof that is irrational|Proof that π is transcendental{{!}}Proof that is transcendental}} Not all mathematical advances relating to were aimed at increasing the accuracy of approximations. When Euler solved the Basel problem in 1735, finding the exact value of the sum of the reciprocal squares, he established a connection between and the prime numbers that later contributed to the development and study of the Riemann zeta function:[107]

$$\frac{\pi^2}{6} = \frac{1}{1^2} + \frac{1}{2^2} + \frac{1}{3^2} + \frac{1}{4^2} + \cdots$$

Swiss scientist Johann Heinrich Lambert in 1761 proved that is irrational, meaning it is not equal to the quotient of any two whole numbers.[108] Lambert's proof exploited a continued-fraction representation of the tangent function.[109] French mathematician Adrien-Marie Legendre proved in 1794 that ² is also irrational. In 1882, German mathematician Ferdinand von Lindemann proved that is transcendental, confirming a conjecture made by both Legendre and Euler.[110][111] Hardy and Wright states that "the proofs were afterwards modified and simplified by Hilbert, Hurwitz, and other writers".[112]

Adoption of the symbol

Leonhard_Euler.jpg popularized the use of the Greek letter in works he published in 1736 and 1748.]] In the earliest usages, the Greek letter was an abbreviation of the Greek word for periphery (περιφέρεια),[113] and was combined in ratios with δ (for diameter) or ρ (for radius) to form circle constants.[114][115][116] (Before then, mathematicians sometimes used letters such as _c_ or _p_ instead.[117]) The first recorded use is Oughtred's "δ.π", to express the ratio of periphery and diameter in the 1647 and later editions of _Clavis Mathematicae_.[118][119] Barrow likewise used "$\frac \pi \delta$" to represent the constant 3.14...,[120] while Gregory instead used "$\frac \pi \rho$" to represent 6.28... .[121][122]

The earliest known use of the Greek letter alone to represent the ratio of a circle's circumference to its diameter was by Welsh mathematician William Jones in his 1706 work _Synopsis Palmariorum Matheseos; or, a New Introduction to the Mathematics_.[123][124] The Greek letter first appears there in the phrase "1/2 Periphery ()" in the discussion of a circle with radius one.[125] However, he writes that his equations for are from the "ready pen of the truly ingenious Mr. John Machin", leading to speculation that Machin may have employed the Greek letter before Jones.[126] Jones' notation was not immediately adopted by other mathematicians, with the fraction notation still being used as late as 1767.[127][128]

Euler started using the single-letter form beginning with his 1727 _Essay Explaining The Properties Of Air_, though he used , the ratio of radius to periphery, in this and some later writing.[129][130] Euler first used in his 1736 work _Mechanica_,[131] and continued in his widely-read 1748 work _Introductio in analysin infinitorum_ (he wrote: "for the sake of brevity we will write this number as ; thus is equal to half the circumference of a circle of radius 1").[132] Because Euler corresponded heavily with other mathematicians in Europe, the use of the Greek letter spread rapidly, and the practice was universally adopted thereafter in the Western world,[133] though the definition still varied between 3.14... and 6.28... as late as 1761.[134]


Modern quest for more digits

Computer era and iterative algorithms

JohnvonNeumann-LosAlamos.gif was part of the team that first used a digital computer, ENIAC, to compute .]]

The development of computers in the mid-20th century again revolutionized the hunt for digits of . Mathematicians John Wrench and Levi Smith reached 1,120 digits in 1949 using a desk calculator.[135] Using an inverse tangent (arctan) infinite series, a team led by George Reitwiesner and John von Neumann that same year achieved 2,037 digits with a calculation that took 70 hours of computer time on the ENIAC computer.[136] The record, always relying on an arctan series, was broken repeatedly (7,480 digits in 1957; 10,000 digits in 1958; 100,000 digits in 1961) until 1 million digits were reached in 1973.[137]

Two additional developments around 1980 once again accelerated the ability to compute . First, the discovery of new iterative algorithms for computing , which were much faster than the infinite series; and second, the invention of fast multiplication algorithms that could multiply large numbers very rapidly.[138] Such algorithms are particularly important in modern computations because most of the computer's time is devoted to multiplication.[139] They include the Karatsuba algorithm, Toom–Cook multiplication, and Fourier transform-based methods.[140]

The iterative algorithms were independently published in 1975–1976 by physicist Eugene Salamin and scientist Richard Brent.[141] These avoid reliance on infinite series. An iterative algorithm repeats a specific calculation, each iteration using the outputs from prior steps as its inputs, and produces a result in each step that converges to the desired value. The approach was actually invented over 160 years earlier by Carl Friedrich Gauss, in what is now termed the arithmetic–geometric mean method (AGM method) or Gauss–Legendre algorithm.[142] As modified by Salamin and Brent, it is also referred to as the Brent–Salamin algorithm.

The iterative algorithms were widely used after 1980 because they are faster than infinite series algorithms: whereas infinite series typically increase the number of correct digits additively in successive terms, iterative algorithms generally _multiply_ the number of correct digits at each step. For example, the Brent-Salamin algorithm doubles the number of digits in each iteration. In 1984, brothers John and Peter Borwein produced an iterative algorithm that quadruples the number of digits in each step; and in 1987, one that increases the number of digits five times in each step.[143] Iterative methods were used by Japanese mathematician Yasumasa Kanada to set several records for computing between 1995 and 2002.[144] This rapid convergence comes at a price: the iterative algorithms require significantly more memory than infinite series.[145]

Motives for computing

Record_pi_approximations.svgic.]] For most numerical calculations involving , a handful of digits provide sufficient precision. According to Jörg Arndt and Christoph Haenel, thirty-nine digits are sufficient to perform most cosmological calculations, because that is the accuracy necessary to calculate the circumference of the observable universe with a precision of one atom.[146] Accounting for additional digits needed to compensate for computational round-off errors, Arndt concludes that a few hundred digits would suffice for any scientific application. Despite this, people have worked strenuously to compute to thousands and millions of digits.[147] This effort may be partly ascribed to the human compulsion to break records, and such achievements with often make headlines around the world.[148][149] They also have practical benefits, such as testing supercomputers, testing numerical analysis algorithms (including high-precision multiplication algorithms); and within pure mathematics itself, providing data for evaluating the randomness of the digits of .[150]

Rapidly convergent series

Srinivasa_Ramanujan_-_OPC_-_1.jpg, working in isolation in India, produced many innovative series for computing .]] Modern calculators do not use iterative algorithms exclusively. New infinite series were discovered in the 1980s and 1990s that are as fast as iterative algorithms, yet are simpler and less memory intensive.[151] The fast iterative algorithms were anticipated in 1914, when the Indian mathematician Srinivasa Ramanujan published dozens of innovative new formulae for , remarkable for their elegance, mathematical depth, and rapid convergence.[152] One of his formulae, based on modular equations, is

$$\frac{1}{\pi} = \frac{2 \sqrt 2}{9801} \sum_{k=0}^\infty \frac{(4k)!(1103+26390k)}{k!^4\left(396^{4k}\right)}.$$
This series converges much more rapidly than most arctan series, including Machin's formula.[153] Bill Gosper was the first to use it for advances in the calculation of , setting a record of 17 million digits in 1985.[154] Ramanujan's formulae anticipated the modern algorithms developed by the Borwein brothers and the Chudnovsky brothers.[155] The Chudnovsky formula developed in 1987 is

$$\frac{1}{\pi} = \frac{12}{640320^{3/2}} \sum_{k=0}^\infty \frac{(6k)! (13591409 + 545140134k)}{(3k)!(k!)^3 (-640320)^{3k}}.$$
It produces about 14 digits of per term,[156] and has been used for several record-setting calculations, including the first to surpass 1 billion (10⁹) digits in 1989 by the Chudnovsky brothers, 2.7 trillion (2.7×10¹²) digits by Fabrice Bellard in 2009,[157] 10 trillion (10¹³) digits in 2011 by Alexander Yee and Shigeru Kondo,[158] and over 22 trillion digits in 2016 by Peter Trueb.[159][160] For similar formulas, see also the Ramanujan–Sato series.

In 2006, mathematician Simon Plouffe used the PSLQ integer relation algorithm[161] to generate several new formulas for , conforming to the following template:

$$\pi^k = \sum_{n=1}^\infty \frac{1}{n^k} \left(\frac{a}{q^n-1} + \frac{b}{q^{2n}-1} + \frac{c}{q^{4n}-1}\right),$$
where is is a consequence. The factorial function is the product of all of the positive integers through . The gamma function extends the concept of factorial (normally defined only for non-negative integers) to all complex numbers, except the negative real integers. When the gamma function is evaluated at half-integers, the result contains ; for example $\Gamma(1/2) = \sqrt{\pi}$ and $\Gamma(5/2) = \frac {3 \sqrt{\pi}} {4}$.[162]

The gamma function is defined by its Weierstrass product development:[163]

$$\Gamma(z) = \frac{e^{-\gamma z}}{z}\prod_{n=1}^\infty \frac{e^{z/n}}{1+z/n}$$
where is the Euler–Mascheroni constant. Evaluated at 1/2}} and squared, the equation π}} reduces to the Wallis product formula. The gamma function is also connected to the Riemann zeta function and identities for the functional determinant, in which the constant plays an important role.

The gamma function is used to calculate the volume of the _n_-dimensional ball of radius _r_ in Euclidean _n_-dimensional space, and the surface area of its boundary, the (_n_−1)-dimensional sphere:[164]

    $V_n(r) = \frac{\pi^{n/2}}{\Gamma\left(\frac{n}{2}+1\right)}r^n,$

    $S_{n-1}(r) = \frac{n\pi^{n/2}}{\Gamma\left(\frac{n}{2}+1\right)}r^{n-1}.$

Further, it follows from the functional equation that

$$2\pi r = \frac{S_{n+1}(r)}{V_n(r)}.$$

The gamma function can be used to create a simple approximation to the factorial function for large : $n! \sim \sqrt{2 \pi n} \left(\frac{n}{e}\right)^n$ which is known as Stirling's approximation.[165] Equivalently,

$$\pi = \lim_{n\to\infty} \frac{e^{2n}n!^2}{2 n^{2n+1}}.$$

As a geometrical application of Stirling's approximation, let denote the standard simplex in _n_-dimensional Euclidean space, and denote the simplex having all of its sides scaled up by a factor of . Then

    $\operatorname{Vol}((n+1)\Delta_n) = \frac{(n+1)^n}{n!} \sim \frac{e^{n+1}}{\sqrt{2\pi n}}.$

Ehrhart's volume conjecture is that this is the (optimal) upper bound on the volume of a convex body containing only one lattice point.[166]

Number theory and Riemann zeta function

Prüfer.png, which are arithmetic localizations of the circle. The L-functions of analytic number theory are also localized in each prime _p_.]] ModularGroup-FundamentalDomain.svg: the value of is the hyperbolic area of a fundamental domain of the modular group, times .]] The Riemann zeta function is used in many areas of mathematics. When evaluated at it can be written as

$$\zeta(2) = \frac{1}{1^2} + \frac{1}{2^2} + \frac{1}{3^2} + \cdots$$
Finding a simple solution for this infinite series was a famous problem in mathematics called the Basel problem. Leonhard Euler solved it in 1735 when he showed it was equal to .[167] Euler's result leads to the number theory result that the probability of two random numbers being relatively prime (that is, having no shared factors) is equal to .[168][169] This probability is based on the observation that the probability that any number is divisible by a prime is (for example, every 7th integer is divisible by 7.) Hence the probability that two numbers are both divisible by this prime is , and the probability that at least one of them is not is . For distinct primes, these divisibility events are mutually independent; so the probability that two numbers are relatively prime is given by a product over all primes:[170]

    \begin{align}

\prod_p^\infty \left(1-\frac{1}{p^2}\right) &= \left( \prod_p^\infty \frac{1}{1-p^{-2}} \right)^{-1}\\[4pt] &= \frac{1}{1 + \frac{1}{2^2} + \frac{1}{3^2} + \cdots }\\[4pt] &= \frac{1}{\zeta(2)} = \frac{6}{\pi^2} \approx 61\%. \end{align}

This probability can be used in conjunction with a random number generator to approximate using a Monte Carlo approach.[171]

The solution to the Basel problem implies that the geometrically derived quantity is connected in a deep way to the distribution of prime numbers. This is a special case of Weil's conjecture on Tamagawa numbers, which asserts the equality of similar such infinite products of _arithmetic_ quantities, localized at each prime _p_, and a _geometrical_ quantity: the reciprocal of the volume of a certain locally symmetric space. In the case of the Basel problem, it is the hyperbolic 3-manifold .[172]

The zeta function also satisfies Riemann's functional equation, which involves as well as the gamma function:

$$\zeta(s) = 2^s\pi^{s-1}\ \sin\left(\frac{\pi s}{2}\right)\ \Gamma(1-s)\ \zeta(1-s).$$

Furthermore, the derivative of the zeta function satisfies

$$\exp(-\zeta'(0)) = \sqrt{2\pi}.$$
A consequence is that can be obtained from the functional determinant of the harmonic oscillator. This functional determinant can be computed via a product expansion, and is equivalent to the Wallis product formula.[173] The calculation can be recast in quantum mechanics, specifically the variational approach to the spectrum of the hydrogen atom.[174]

Fourier series

2-adic_integers_with_dual_colorings.svg (shown), which are elements of a Prüfer group. Tate's thesis makes heavy use of this machinery.[175]]] The constant also appears naturally in Fourier series of periodic functions. Periodic functions are functions on the group R/Z}} of fractional parts of real numbers. The Fourier decomposition shows that a complex-valued function on can be written as an infinite linear superposition of unitary characters of . That is, continuous group homomorphisms from to the circle group of unit modulus complex numbers. It is a theorem that every character of is one of the complex exponentials e_(n)(x) = e^(2πinx).

There is a unique character on , up to complex conjugation, that is a group isomorphism. Using the Haar measure on the circle group, the constant is half the magnitude of the Radon–Nikodym derivative of this character. The other characters have derivatives whose magnitudes are positive integral multiples of 2.[176] As a result, the constant is the unique number such that the group T, equipped with its Haar measure, is Pontrjagin dual to the lattice of integral multiples of 2.[177] This is a version of the one-dimensional Poisson summation formula.

Modular forms and theta functions

Lattice_with_tau.svg of periods of an elliptic curve.]] The constant is connected in a deep way with the theory of modular forms and theta functions. For example, the Chudnovsky algorithm involves in an essential way the j-invariant of an elliptic curve.

Modular forms are holomorphic functions in the upper half plane characterized by their transformation properties under the modular group SL₂(ℤ) (or its various subgroups), a lattice in the group SL₂(ℝ). An example is the Jacobi theta function

$$\theta(z,\tau) = \sum_{n=-\infty}^\infty e^{2\pi i nz + i\pi n^2\tau}$$
which is a kind of modular form called a Jacobi form.[178] This is sometimes written in terms of the nome q = e^(πiτ).

The constant is the unique constant making the Jacobi theta function an automorphic form, which means that it transforms in a specific way. Certain identities hold for all automorphic forms. An example is

_θ_(_z_ + _τ_, _τ_) = _e_^( − _π__i__τ_ − 2_π__i__z_)_θ_(_z_, _τ_),
which implies that transforms as a representation under the discrete Heisenberg group. General modular forms and other theta functions also involve , once again because of the Stone–von Neumann theorem.[179]

Cauchy distribution and potential theory

Witch_of_Agnesi,_construction.svg, named for Maria Agnesi (1718–1799), is a geometrical construction of the graph of the Cauchy distribution.]] The Cauchy distribution

$$g(x)=\frac{1}{\pi}\cdot\frac{1}{x^2+1}$$

is a probability density function. The total probability is equal to one, owing to the integral:

$$\int_{-\infty }^{\infty } \frac{1}{x^2+1} \, dx = \pi.$$

The Shannon entropy of the Cauchy distribution is equal to , which also involves .

Brownianmotion_beads_in_water_spim_video.gif through a membrane.]] The Cauchy distribution plays an important role in potential theory because it is the simplest Furstenberg measure, the classical Poisson kernel associated with a Brownian motion in a half-plane.[180] Conjugate harmonic functions and so also the Hilbert transform are associated with the asymptotics of the Poisson kernel. The Hilbert transform _H_ is the integral transform given by the Cauchy principal value of the singular integral

$$Hf(t) = \frac{1}{\pi}\int_{-\infty}^\infty \frac{f(x)\,dx}{x-t}.$$

The constant is the unique (positive) normalizing factor such that _H_ defines a linear complex structure on the Hilbert space of square-integrable real-valued functions on the real line.[181] The Hilbert transform, like the Fourier transform, can be characterized purely in terms of its transformation properties on the Hilbert space : up to a normalization factor, it is the unique bounded linear operator that commutes with positive dilations and anti-commutes with all reflections of the real line.[182] The constant is the unique normalizing factor that makes this transformation unitary.

Complex dynamics

Mandel_zoom_00_mandelbrot_set.jpg, by counting the number of iterations required before point diverges.]] An occurrence of in the Mandelbrot set fractal was discovered by David Boll in 1991.[183] He examined the behavior of the Mandelbrot set near the "neck" at . If points with coordinates are considered, as ε tends to zero, the number of iterations until divergence for the point multiplied by _ε_ converges to . The point at the cusp of the large "valley" on the right side of the Mandelbrot set behaves similarly: the number of iterations until divergence multiplied by the square root of _ε_ tends to .[184][185]


Outside mathematics

Describing physical phenomena

Although not a physical constant, appears routinely in equations describing fundamental principles of the universe, often because of 's relationship to the circle and to spherical coordinate systems. A simple formula from the field of classical mechanics gives the approximate period of a simple pendulum of length , swinging with a small amplitude ( is the earth's gravitational acceleration):[186]

$$T \approx 2\pi \sqrt\frac{L}{g}.$$
One of the key formulae of quantum mechanics is Heisenberg's uncertainty principle, which shows that the uncertainty in the measurement of a particle's position (Δ) and momentum (Δ) cannot both be arbitrarily small at the same time (where is Planck's constant):[187]

$$\Delta x\, \Delta p \ge \frac{h}{4\pi}.$$

The fact that is approximately equal to 3 plays a role in the relatively long lifetime of orthopositronium. The inverse lifetime to lowest order in the fine-structure constant is[188]

$$\frac{1}{\tau} = 2\frac{\pi^2 - 9}{9\pi}m\alpha^{6},$$
where is the mass of the electron.

is present in some structural engineering formulae, such as the buckling formula derived by Euler, which gives the maximum axial load that a long, slender column of length , modulus of elasticity , and area moment of inertia can carry without buckling:[189]

$$F =\frac{\pi^2EI}{L^2}.$$

The field of fluid dynamics contains in Stokes' law, which approximates the frictional force exerted on small, spherical objects of radius , moving with velocity in a fluid with dynamic viscosity :[190]

_F_ = 6_π__η__R__v_.

In electromagnetics, the vacuum permeability constant _μ_₀ appears in Maxwell's equations, which describe the properties of electric and magnetic fields and electromagnetic radiation. It is defined as exactly

_μ_₀ = 4_π_ × 10^( − 7) H/m ≈ 1.2566370614… × 10^( − 6) N/A².
A relation for the speed of light in vacuum, can be derived from Maxwell's equations in the medium of classical vacuum using a relationship between _μ_₀ and the electric constant (vacuum permittivity), in SI units:

$$c={1\over\sqrt{\mu_0\varepsilon_0}}.$$

Under ideal conditions (uniform gentle slope on a homogeneously erodible substrate), the sinuosity of a meandering river approaches . The sinuosity is the ratio between the actual length and the straight-line distance from source to mouth. Faster currents along the outside edges of a river's bends cause more erosion than along the inside edges, thus pushing the bends even farther out, and increasing the overall loopiness of the river. However, that loopiness eventually causes the river to double back on itself in places and "short-circuit", creating an ox-bow lake in the process. The balance between these two opposing factors leads to an average ratio of between the actual length and the direct distance between source and mouth.[191][192]

Memorizing digits

Piphilology is the practice of memorizing large numbers of digits of ,[193] and world-records are kept by the _Guinness World Records_. The record for memorizing digits of , certified by Guinness World Records, is 70,000 digits, recited in India by Rajveer Meena in 9 hours and 27 minutes on 21 March 2015.[194] In 2006, Akira Haraguchi, a retired Japanese engineer, claimed to have recited 100,000 decimal places, but the claim was not verified by Guinness World Records.[195]

One common technique is to memorize a story or poem in which the word lengths represent the digits of : The first word has three letters, the second word has one, the third has four, the fourth has one, the fifth has five, and so on. An early example of a memorization aid, originally devised by English scientist James Jeans, is "How I want a drink, alcoholic of course, after the heavy lectures involving quantum mechanics."[196] When a poem is used, it is sometimes referred to as a _piem_. Poems for memorizing have been composed in several languages in addition to English.[197] Record-setting memorizers typically do not rely on poems, but instead use methods such as remembering number patterns and the method of loci.[198]

A few authors have used the digits of to establish a new form of constrained writing, where the word lengths are required to represent the digits of . The _Cadaeic Cadenza_ contains the first 3835 digits of in this manner,[199] and the full-length book _Not a Wake_ contains 10,000 words, each representing one digit of .[200]

In popular culture

Pi_pie2.jpg makes it a frequent subject of pi puns.|bottom]] Perhaps because of the simplicity of its definition and its ubiquitous presence in formulae, has been represented in popular culture more than other mathematical constructs.[201]

In the 2008 Open University and BBC documentary co-production, _The Story of Maths_, aired in October 2008 on BBC Four, British mathematician Marcus du Sautoy shows a visualization of the – historically first exact – formula for calculating when visiting India and exploring its contributions to trigonometry.[202]

In the Palais de la Découverte (a science museum in Paris) there is a circular room known as the _pi room_. On its wall are inscribed 707 digits of . The digits are large wooden characters attached to the dome-like ceiling. The digits were based on an 1853 calculation by English mathematician William Shanks, which included an error beginning at the 528th digit. The error was detected in 1946 and corrected in 1949.[203]

In Carl Sagan's novel _Contact_ it is suggested that the creator of the universe buried a message deep within the digits of .[204] The digits of have also been incorporated into the lyrics of the song "Pi" from the album _Aerial_ by Kate Bush.[205]

In the United States, Pi Day falls on 14 March (written 3/14 in the US style), and is popular among students.[206] and its digital representation are often used by self-described "math geeks" for inside jokes among mathematically and technologically minded groups. Several college cheers at the Massachusetts Institute of Technology include "3.14159".[207] Pi Day in 2015 was particularly significant because the date and time 3/14/15 9:26:53 reflected many more digits of pi.[208] In parts of the world where dates are commonly noted in day/month/year format, July 22 represents "Pi Approximation Day," as 22/7=3.142857.[209]

During the 2011 auction for Nortel's portfolio of valuable technology patents, Google made a series of unusually specific bids based on mathematical and scientific constants, including .[210]

In 1958 Albert Eagle proposed replacing by (tau), where , to simplify formulas.[211] However, no other authors are known to use in this way. Some people use a different value, ,[212] arguing that , as the number of radians in one turn, or as the ratio of a circle's circumference to its radius rather than its diameter, is more natural than and simplifies many formulas.[213][214] Celebrations of this number, because it approximately equals 6.28, by making 28 June "Tau Day" and eating "twice the pie",[215] have been reported in the media. However, this use of has not made its way into mainstream mathematics.[216]

In 1897, an amateur mathematician attempted to persuade the Indiana legislature to pass the Indiana Pi Bill, which described a method to square the circle and contained text that implied various incorrect values for , including 3.2. The bill is notorious as an attempt to establish a value of scientific constant by legislative fiat. The bill was passed by the Indiana House of Representatives, but rejected by the Senate, meaning it did not become a law.[217]

In computer culture

In contemporary internet culture, individuals and organizations frequently pay homage to the number . For instance, the computer scientist Donald Knuth let the version numbers of his program TeX approach . The versions are 3, 3.1, 3.14, and so forth.[218]


References

FOOTNOTES

CITATIONS

SOURCES

-   English translation by Catriona and David Lischka.

-   -   -   -   -   -   -   , English translation by Stephen Wilson.

-   .

-   -   -   -   -   . [ https://www.jstor.org/discover/10.2307/3029284?sid=21105295462031&uid=2&uid=4 issue 3 Jan/Feb], issue 4 Mar/Apr, issue 5 May/Jun

-


Further reading

-   -   -   -   Chudnovsky, David V. and Chudnovsky, Gregory V., "Approximations and Complex Multiplication According to Ramanujan", in _Ramanujan Revisited_ (G.E. Andrews et al. Eds), Academic Press, 1988, pp. 375–396, 468–472
-   Cox, David A., "The Arithmetic-Geometric Mean of Gauss", _L' Ensignement Mathematique_, 30(1984) 275–330
-   Delahaye, Jean-Paul, "Le Fascinant Nombre Pi", Paris: Bibliothèque Pour la Science (1997)
-   -   Euler, Leonhard, "On the Use of the Discovered Fractions to Sum Infinite Series", in _Introduction to Analysis of the Infinite. Book I_, translated from the Latin by J.D. Blanton, Springer-Verlag, 1964, pp. 137–153
-   Hardy, G.H. and Wright E.M., _An Introduction to the Theory of Numbers_ first published 1938, fifth Edition 1979 with additions 2000, Clarendon Press, Oxford U.K.
-   Heath, T.L., _The Works of Archimedes_, Cambridge, 1897; reprinted in _The Works of Archimedes with The Method of Archimedes_, Dover, 1953, pp. 91–98
-   Huygens, Christiaan, "De Circuli Magnitudine Inventa", _Christiani Hugenii Opera Varia I_, Leiden 1724, pp. 384–388
-   -   -   -   Niven, Ivan, "A Simple Proof that pi Is Irrational", _Bulletin of the American Mathematical Society_, 53:7 (July 1947), 507
-   Ramanujan, Srinivasa, "Modular Equations and Approximations to π", _Quarterly Journal of Pure and Applied Mathematics_, XLV, 1914, 350–372. Reprinted in G.H. Hardy, P.V. Seshu Aiyar, and B. M. Wilson (eds), _Srinivasa Ramanujan: Collected Papers_, 1927 (reprinted 2000), pp. 23–29
-   Shanks, William, _Contributions to Mathematics Chiefly of the Rectification of the Circle to 607 Places of Decimals_, 1853, pp. i–xvi, 10
-   -   Tropfke, Johannes, _Geschichte Der Elementar-Mathematik in Systematischer Darstellung_ (_The history of elementary mathematics_), BiblioBazaar, 2009 (reprint),
-   Viete, Francois, _Variorum de Rebus Mathematicis Reponsorum Liber VII. F. Viete, Opera Mathematica_ (reprint), Georg Olms Verlag, 1970, pp. 398–401, 436–446
-   Wagon, Stan, "Is Pi Normal?", _The Mathematical Intelligencer_, 7:3(1985) 65–67
-   Wallis, John, _Arithmetica Infinitorum, sive Nova Methodus Inquirendi in Curvilineorum Quadratum, aliaque difficiliora Matheseos Problemata_, Oxford 1655–6. Reprinted in vol. 1 (pp. 357–478) of _Opera Mathematica_, Oxford 1693
-   Zebrowski, Ernest, _A History of the Circle: Mathematical Reasoning and the Physical Universe_, Rutgers University Press, 1999,


External links

-   10 million decimal places
-   "Pi" at Wolfram Mathworld
-   Representations of Pi at Wolfram Alpha
-   Demonstration by Lambert (1761) of irrationality of , online and analyzed _BibNum_ (PDF).
-   Search Engine 2 billion searchable digits of , and

Pi Category:Complex analysis Category:Mathematical series Category:Real transcendental numbers

[1]

[2]

[3] π^(e) trillion digits of π

[4] Pi in the sky: Calculating a record-breaking 31.4 trillion digits of Archimedes’ constant on Google Cloud

[5]

[6]

[7]

[8]

[9]

[10]

[11] . p. 102: "From a logical point of view, this is unsatisfactory at the present stage because we have not yet discussed the concept of arc length." Arc length is introduced on p. 529.

[12]

[13] . The precise integral that Weierstrass used was $\pi=\int_{-\infty}^\infty\frac{dx}{1+x^2}.$

[14]

[15]

[16]

[17]

[18] , p. 183.

[19] , p. 2.

[20]

[21]

[22]

[23] , §VIII.2.

[24] , §II.3.

[25]

[26]

[27]

[28]

[29]

[30]

[31]

[32] The polynomial shown is the first few terms of the Taylor series expansion of the sine function.

[33]

[34]

[35]
, p. 185.

[36]

[37]  Retrieved 12 April 2012.

[38]

[39]

[40]

[41]

[42] . Ptolemy used a three-sexagesimal-digit approximation, and Jamshīd al-Kāshī expanded this to nine digits; see

[43]

[44]

[45] Petrie, W.M.F. _Wisdom of the Egyptians_ (1940)

[46] Verner, Miroslav. _The Pyramids: The Mystery, Culture, and Science of Egypt's Great Monuments._ Grove Press. 2001 (1997).

[47] Rossi, _Corinna Architecture and Mathematics in Ancient Egypt,_ Cambridge University Press. 2007. .

[48] Legon, J.A.R. _On Pyramid Dimensions and Proportions_ (1991) Discussions in Egyptology (20) 25–34

[49] "We can conclude that although the ancient Egyptians could not precisely define the value of , in practice they used it". , p. 70.
, p. 30.
See also .
See also

[50] Egyptologist: Rossi, Corinna, _Architecture and Mathematics in Ancient Egypt_, Cambridge University Press, 2004, pp. 60–70, 200, .
Skeptics: Shermer, Michael, _The Skeptic Encyclopedia of Pseudoscience_, ABC-CLIO, 2002, pp. 407–408, .
See also Fagan, Garrett G., _Archaeological Fantasies: How Pseudoarchaeology Misrepresents The Past and Misleads the Public_, Routledge, 2006, .
For a list of explanations for the shape that do not involve , see

[51]

[52]

[53] Chaitanya, Krishna. A profile of Indian culture. Indian Book Company (1975). p. 133.

[54]

[55]

[56]

[57]

[58]

[59]

[60] . Grienberger achieved 39 digits in 1630; Sharp 71 digits in 1699.

[61]

[62]

[63]

[64]

[65]

[66]

[67]

[68]

[69]

[70]

[71]

[72]

[73]

[74]

[75]

[76]  His evaluation was 3.14159 26535 89793 23846 26433 83279 50288 4196 < < 3.14159 26535 89793 23846 26433 83279 50288 4199.

[77]

[78]

[79]

[80]

[81]

[82]

[83]

[84]

[85]

[86]

[87]

[88] Variorum de rebus mathematicis responsorum liber VIII.

[89]

[90] . Newton quoted by Arndt.

[91]

[92]

[93]

[94]

[95]

[96]

[97]

[98]

[99]

[100]

[101]

[102]

[103]

[104]

[105] , (formula 16.10). Note that (_n_ − 1)_n_(_n_ + 1) = _n_³ − _n_.

[106]

[107]

[108]

[109] Lambert, Johann, "Mémoire sur quelques propriétés remarquables des quantités transcendantes circulaires et logarithmiques", reprinted in

[110] .

[111] Hardy and Wright 1938 and 2000: 177 footnote §11.13–14 references Lindemann's proof as appearing at _Math. Ann_. 20 (1882), 213–225.

[112] cf Hardy and Wright 1938 and 2000:177 footnote §11.13–14. The proofs that e and π are transcendental can be found on pp. 170–176. They cite two sources of the proofs at Landau 1927 or Perron 1910; see the "List of Books" at pp. 417–419 for full citations.

[113]

[114]

[115]

[116]

[117]

[118] See, for example, (English translation: )

[119]

[120]

[121]

[122]

[123]

[124] . A facsimile of Jones' text is in

[125] See : William Oughtred used the letter to represent the periphery (that is, the circumference) of a circle.

[126]

[127]

[128]

[129]  English translation by Ian Bruce: "π is taken for the ratio of the radius to the periphery [note that in this work, Euler's π is double our π.]"

[130]  English translation in

[131]  English translation by Ian Bruce : "Let 1 : π denote the ratio of the diameter to the circumference"

[132]

[133]

[134]

[135]

[136] . See also .

[137]

[138]

[139]

[140]

[141]

[142]

[143] .
See for details of algorithms.

[144]

[145]

[146]

[147]

[148]

[149]

[150]

[151]

[152]

[153]

[154]

[155]

[156]

[157]
Bellard, Fabrice, "Computation of 2700 billion decimal digits of Pi using a Desktop Computer" , 11 Feb 2010.

[158] "Round 2... 10 Trillion Digits of Pi" , NumberWorld.org, 17 Oct 2011. Retrieved 30 May 2012.

[159]

[160]

[161] PSLQ means Partial Sum of Least Squares.

[162]

[163]

[164] .

[165]

[166]

[167]

[168]

[169] This theorem was proved by Ernesto Cesàro in 1881. For a more rigorous proof than the intuitive and informal one given here, see Hardy, G.H., _An Introduction to the Theory of Numbers_, Oxford University Press, 2008, , theorem 332.

[170] Ogilvy, C.S.; Anderson, J.T., _Excursions in Number Theory_, Dover Publications Inc., 1988, pp. 29–35, .

[171]

[172]

[173]

[174]

[175]

[176]

[177] ; Chapter 4

[178]

[179]

[180]

[181] * .

[182] ; Chapter II.

[183]

[184]

[185] Peitgen, Heinz-Otto, _Chaos and fractals: new frontiers of science_, Springer, 2004, pp. 801–803, .

[186] Halliday, David; Resnick, Robert; Walker, Jearl, _Fundamentals of Physics, 5th Ed._, John Wiley & Sons, 1997, p. 381, .

[187]

[188]

[189] Low, Peter, _Classical Theory of Structures Based on the Differential Equation_, CUP Archive, 1971, pp. 116–118, .

[190] Batchelor, G.K., _An Introduction to Fluid Dynamics_, Cambridge University Press, 1967, p. 233, .

[191]

[192]

[193]

[194] "Most Pi Places Memorized" , Guinness World Records.

[195]

[196]

[197]

[198]

[199]

[200]

[201] For instance, Pickover calls π "the most famous mathematical constant of all time", and Peterson writes, "Of all known mathematical constants, however, pi continues to attract the most attention", citing the Givenchy π perfume, Pi (film), and Pi Day as examples. See ;

[202] BBC documentary "The Story of Maths", second part , showing a visualization of the historically first exact formula, starting at 35 min and 20 sec into the second part of the documentary.

[203]

[204] . This part of the story was omitted from the film adaptation of the novel.

[205]

[206] Pi Day activities.

[207] MIT cheers . Retrieved 12 April 2012.

[208]

[209]

[210]

[211]

[212] Sequence ,

[213]

[214]

[215] Tau Day: Why you should eat twice the pie – Light Years – CNN.com Blogs

[216]

[217]

[218]