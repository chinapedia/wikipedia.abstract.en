The MANDELBROT SET is the set of complex numbers c for which the function f_(c)(z) = z² + c does not diverge when iterated from z = 0, i.e., for which the sequence f_(c)(0), f_(c)(f_(c)(0)), etc., remains bounded in absolute value.

Its definition and name are due to Adrien Douady, in tribute to the mathematician Benoit Mandelbrot.[1] The set is connected to a Julia set, and related Julia sets produce similarly complex fractal shapes.

Mandelbrot set images may be created by sampling the complex numbers and testing, for each sample point c, whether the sequence $f_c(0), f_c(f_c(0)),\dotsc$ goes to infinity (in practice — whether it leaves some predetermined bounded neighborhood of 0 after a predetermined number of iterations). Treating the real and imaginary parts of c as image coordinates on the complex plane, pixels may then be coloured according to how soon the sequence $|f_c(0)|, |f_c(f_c(0))|,\dotsc$ crosses an arbitrarily chosen threshold, with a special color (usually black) used for the values of c for which the sequence has not crossed the threshold after the predetermined number of iterations (this is necessary to clearly distinguish the Mandelbrot set image from the image of its complement). If c is held constant and the initial value of z—denoted by z₀—is variable instead, one obtains the corresponding Julia set for each point c in the parameter space of the simple function.

Images of the Mandelbrot set exhibit an elaborate and infinitely complicated boundary that reveals progressively ever-finer recursive detail at increasing magnifications. The "style" of this repeating detail depends on the region of the set being examined. The set's boundary also incorporates smaller versions of the main shape, so the fractal property of self-similarity applies to the entire set, and not just to its parts.

The Mandelbrot set has become popular outside mathematics both for its aesthetic appeal and as an example of a complex structure arising from the application of simple rules. It is one of the best-known examples of mathematical visualization and mathematical beauty.


History

and Peter Matelski in 1978]] The Mandelbrot set has its place in complex dynamics, a field first investigated by the French mathematicians Pierre Fatou and Gaston Julia at the beginning of the 20th century. This fractal was first defined and drawn in 1978 by Robert W. Brooks and Peter Matelski as part of a study of Kleinian groups.[2] On 1 March 1980, at IBM's Thomas J. Watson Research Center in Yorktown Heights, New York, Benoit Mandelbrot first saw a visualization of the set.[3]

Mandelbrot studied the parameter space of quadratic polynomials in an article that appeared in 1980.[4] The mathematical study of the Mandelbrot set really began with work by the mathematicians Adrien Douady and John H. Hubbard,[5] who established many of its fundamental properties and named the set in honor of Mandelbrot for his influential work in fractal geometry.

The mathematicians Heinz-Otto Peitgen and Peter Richter became well known for promoting the set with photographs, books,[6] and an internationally touring exhibit of the German Goethe-Institut.[7][8]

The cover article of the August 1985 _Scientific American_ introduced a wide audience to the algorithm for computing the Mandelbrot set. The cover featured an image located at [https://mandelbrot-svelte.netlify.com/#%7B%22pos%22:{%22x%22:-0.909,%22y%22:-0.275},%22zoom%22:10000} -0.909 + -0.275] and was created by Peitgen, et al.[9][10] The Mandelbrot set became prominent in the mid-1980s as a computer graphics demo, when personal computers became powerful enough to plot and display the set in high resolution.[11]

The work of Douady and Hubbard coincided with a huge increase in interest in complex dynamics and abstract mathematics, and the study of the Mandelbrot set has been a centerpiece of this field ever since. An exhaustive list of all who have contributed to the understanding of this set since then is long but would include Mikhail Lyubich,[12][13] Curt McMullen, John Milnor, Mitsuhiro Shishikura and Jean-Christophe Yoccoz.


Formal definition

The Mandelbrot set is the set of values of _c_ in the complex plane for which the orbit of 0 under iteration of the quadratic map

_z__(_n_ + 1) = _z__(_n_)² + _c_

remains bounded.[14] That is, a complex number _c_ is part of the Mandelbrot set if, when starting with _z_₀ = 0 and applying the iteration repeatedly, the absolute value of _z__(_n_) remains bounded however large _n_ gets. This can also be represented as[15]

_z__(_n_ + 1) = _z__(_n_)² + _c_,

_c_ ∈ _M_ ⇔ limsup_(_n_ → ∞)|_z__(_n_ + 1)| ≤ 2.

For example, letting _c_ = 1 gives the sequence 0, 1, 2, 5, 26, ..., which tends to infinity. As this sequence is unbounded, 1 is not an element of the Mandelbrot set. On the other hand, _c_ = −1 gives the sequence 0, −1, 0, −1, 0, ..., which is bounded, and so −1 belongs to the Mandelbrot set.

The Mandelbrot set M is defined by a family of complex quadratic polynomials

_P__(_c_) : ℂ → ℂ

given by

_P__(_c_) : _z_ ↦ _z_² + _c_,

where c is a complex parameter. For each c, one considers the behavior of the sequence

(0, _P__(_c_)(0), _P__(_c_)(_P__(_c_)(0)), _P__(_c_)(_P__(_c_)(_P__(_c_)(0))), …)

obtained by iterating P_(c)(z) starting at critical point z = 0, which either escapes to infinity or stays within a disk of some finite radius. The Mandelbrot set is defined as the set of all points c such that the above sequence does _not_ escape to infinity.

More formally, if P_(c)^(n)(z) denotes the _n_th iterate of P_(c)(z) (i.e. P_(c)(z) composed with itself _n_ times), the Mandelbrot set is the subset of the complex plane given by

_M_ = {_c_∈ℂ∣(∃_s_∈ℝ⁺)(∀_n_∈ℕ)(|_P__(_c_)^(_n_)(0)|≤_s_)}.

As explained below, it is in fact possible to simplify this definition by taking s = 2.

Mathematically, the Mandelbrot set is just a set of complex numbers. A given complex number _c_ either belongs to _M_ or it does not. A picture of the Mandelbrot set can be made by coloring all the points c that belong to _M_ black, and all other points white. The more colorful pictures usually seen are generated by coloring points not in the set according to which term in the sequence |P_(c)^(n)(0)| is the first term with an absolute value greater than a certain cutoff value, usually 2. The list of colors used is always predefined by the program used or created by the user, the next color in the list is chosen when the iteration count rises. See the section on computer drawings below for more details.

The Mandelbrot set can also be defined as the connectedness locus of the family of polynomials P_(c)(z). That is, it is the subset of the complex plane consisting of those parameters c for which the Julia set of P_(c) is connected.

P_(c)^(n)(0) is a polynomial in c and its leading terms settle down as n grows large enough. These terms are given by the Catalan numbers. The polynomials P_(c)^(n)(0) are bounded by the generating function for the Catalan numbers and tend to it as n goes to infinity.


Basic properties

The Mandelbrot set is a compact set, since it is closed and contained in the closed disk of radius 2 around the origin. More specifically, a point c belongs to the Mandelbrot set if and only if

|_P__(_c_)^(_n_)(0)| ≤ 2
for all n ≥ 0.

In other words, if the absolute value of P_(c)^(n)(0) ever becomes larger than 2, the sequence will escape to infinity.

of the logistic map]] The intersection of M with the real axis is precisely the interval [−2, 1/4]. The parameters along this interval can be put in one-to-one correspondence with those of the real logistic family,

_x__(_n_ + 1) = _r__x__(_n_)(1 − _x__(_n_)), _r_ ∈ [1, 4].
The correspondence is given by

$$z = r\left(\frac12 - x\right),
\quad
c = \frac{r}{2}\left(1-\frac{r}{2}\right).$$

In fact, this gives a correspondence between the entire parameter space of the logistic family and that of the Mandelbrot set.

Douady and Hubbard have shown that the Mandelbrot set is connected. In fact, they constructed an explicit conformal isomorphism between the complement of the Mandelbrot set and the complement of the closed unit disk. Mandelbrot had originally conjectured that the Mandelbrot set is disconnected. This conjecture was based on computer pictures generated by programs that are unable to detect the thin filaments connecting different parts of M. Upon further experiments, he revised his conjecture, deciding that M should be connected. There also exists a topological proof to the connectedness that was discovered in 2001 by Jeremy Kahn.[16] The dynamical formula for the uniformisation of the complement of the Mandelbrot set, arising from Douady and Hubbard's proof of the connectedness of M, gives rise to external rays of the Mandelbrot set. These rays can be used to study the Mandelbrot set in combinatorial terms and form the backbone of the Yoccoz parapuzzle.[17]

The boundary of the Mandelbrot set is exactly the bifurcation locus of the quadratic family; that is, the set of parameters c for which the dynamics changes abruptly under small changes of c. It can be constructed as the limit set of a sequence of plane algebraic curves, the _Mandelbrot curves_, of the general type known as polynomial lemniscates. The Mandelbrot curves are defined by setting _p_₀ = _z_, _p__(_n_+1) = _p__(_n_)² + _z_, and then interpreting the set of points |_p__(_n_)(_z_)| = 2 in the complex plane as a curve in the real Cartesian plane of degree 2^(_n_+1) in _x_ and _y_. These algebraic curves appear in images of the Mandelbrot set computed using the "escape time algorithm" mentioned below.


Other properties

Main cardioid and period bulbs

Upon looking at a picture of the Mandelbrot set, one immediately notices the large cardioid-shaped region in the center. This _main cardioid_ is the region of parameters c for which P_(c) has an attracting fixed point. It consists of all parameters of the form

$$c = \frac\mu2\left(1-\frac\mu2\right)$$
for some μ in the open unit disk.

To the left of the main cardioid, attached to it at the point c =  − 3/4, a circular-shaped BULB is visible. This bulb consists of those parameters c for which P_(c) has an attracting cycle of period 2. This set of parameters is an actual circle, namely that of radius 1/4 around −1.

There are infinitely many other bulbs tangent to the main cardioid: for every rational number $\tfrac{p}{q}$, with _p_ and _q_ coprime, there is such a bulb that is tangent at the parameter

$$c_{\frac{p}{q}} = \frac{e^{2\pi i\frac pq}}2\left(1-\frac{e^{2\pi i\frac pq}}2\right).$$

(animation)]]This bulb is called the _$\tfrac{p}{q}$-bulb_ of the Mandelbrot set. It consists of parameters that have an attracting cycle of period q and combinatorial rotation number $\tfrac{p}{q}$. More precisely, the q periodic Fatou components containing the attracting cycle all touch at a common point (commonly called the _α-fixed point_). If we label these components U₀, …, U_(q − 1) in counterclockwise orientation, then P_(c) maps the component U_(j) to the component U_(j + p (mod q)).

s for parameters in the 1/2, 3/7, 2/5, 1/3, 1/4, and 1/5 bulbs]]

The change of behavior occurring at $c_{\frac{p}{q}}$ is known as a bifurcation: the attracting fixed point "collides" with a repelling period _q_-cycle. As we pass through the bifurcation parameter into the $\tfrac{p}{q}$-bulb, the attracting fixed point turns into a repelling fixed point (the α-fixed point), and the period _q_-cycle becomes attracting.

Hyperbolic components

All the bulbs we encountered in the previous section were interior components of the Mandelbrot set in which the maps P_(c) have an attracting periodic cycle. Such components are called _hyperbolic components_.

It is conjectured that these are the _only_ interior regions of M. This problem, known as _density of hyperbolicity_, may be the most important open problem in the field of complex dynamics. Hypothetical non-hyperbolic components of the Mandelbrot set are often referred to as "queer" or ghost components.[18][19] For _real_ quadratic polynomials, this question was answered positively in the 1990s independently by Lyubich and by Graczyk and Świątek. (Note that hyperbolic components intersecting the real axis correspond exactly to periodic windows in the Feigenbaum diagram. So this result states that such windows exist near every parameter in the diagram.)

Not every hyperbolic component can be reached by a sequence of direct bifurcations from the main cardioid of the Mandelbrot set. However, such a component _can_ be reached by a sequence of direct bifurcations from the main cardioid of a little Mandelbrot copy (see below).

Each of the hyperbolic components has a _center_, which is a point _c_ such that the inner Fatou domain for P_(c)(z) has a super-attracting cycle – that is, that the attraction is infinite (see the image here). This means that the cycle contains the critical point 0, so that 0 is iterated back to itself after some iterations. We therefore have that P_(c)^(n)(0) = 0 for some _n_. If we call this polynomial Q^(n)(c) (letting it depend on _c_ instead of _z_), we have that Q^(n + 1)(c) = Q^(n)(c)² + c and that the degree of Q^(n)(c) is 2^(n − 1). We can therefore construct the centers of the hyperbolic components by successively solving the equations Q^(n)(c) = 0, n = 1, 2, 3, .... The number of new centers produced in each step is given by Sloane's .

Local connectivity

It is conjectured that the Mandelbrot set is locally connected. This famous conjecture is known as _MLC_ (for _Mandelbrot locally connected_). By the work of Adrien Douady and John H. Hubbard, this conjecture would result in a simple abstract "pinched disk" model of the Mandelbrot set. In particular, it would imply the important _hyperbolicity conjecture_ mentioned above.

The work of Jean-Christophe Yoccoz established local connectivity of the Mandelbrot set at all finitely renormalizable parameters; that is, roughly speaking those contained only in finitely many small Mandelbrot copies.[20] Since then, local connectivity has been proved at many other points of M, but the full conjecture is still open.

Self-similarity

in the Mandelbrot set shown by zooming in on a round feature while panning in the negative-_x_ direction. The display center pans from (−1, 0) to (−1.31, 0) while the view magnifies from 0.5 × 0.5 to 0.12 × 0.12 to approximate the Feigenbaum ratio δ.]] The Mandelbrot set is self-similar under magnification in the neighborhoods of the Misiurewicz points. It is also conjectured to be self-similar around generalized Feigenbaum points (e.g., −1.401155 or −0.1528 + 1.0397_i_), in the sense of converging to a limit set.[21][22] The Mandelbrot set in general is not strictly self-similar but it is quasi-self-similar, as small slightly different versions of itself can be found at arbitrarily small scales.

The little copies of the Mandelbrot set are all slightly different, mostly because of the thin threads connecting them to the main body of the set.

Further results

The Hausdorff dimension of the boundary of the Mandelbrot set equals 2 as determined by a result of Mitsuhiro Shishikura.[23] It is not known whether the boundary of the Mandelbrot set has positive planar Lebesgue measure.

In the Blum-Shub-Smale model of real computation, the Mandelbrot set is not computable, but its complement is computably enumerable. However, many simple objects (_e.g._, the graph of exponentiation) are also not computable in the BSS model. At present, it is unknown whether the Mandelbrot set is computable in models of real computation based on computable analysis, which correspond more closely to the intuitive notion of "plotting the set by a computer". Hertling has shown that the Mandelbrot set is computable in this model if the hyperbolicity conjecture is true.

Relationship with Julia sets

As a consequence of the definition of the Mandelbrot set, there is a close correspondence between the geometry of the Mandelbrot set at a given point and the structure of the corresponding Julia set. For instance, a point is in the Mandelbrot set exactly when the corresponding Julia set is connected.

This principle is exploited in virtually all deep results on the Mandelbrot set. For example, Shishikura proved that, for a dense set of parameters in the boundary of the Mandelbrot set, the Julia set has Hausdorff dimension two, and then transfers this information to the parameter plane.[24] Similarly, Yoccoz first proved the local connectivity of Julia sets, before establishing it for the Mandelbrot set at the corresponding parameters.[25] Adrien Douady phrases this principle as:




Geometry

For every rational number $\tfrac{p}{q}$, where _p_ and _q_ are relatively prime, a hyperbolic component of period _q_ bifurcates from the main cardioid. The part of the Mandelbrot set connected to the main cardioid at this bifurcation point is called the _P_/_Q_-LIMB. Computer experiments suggest that the diameter of the limb tends to zero like $\tfrac{1}{q^2}$. The best current estimate known is the _Yoccoz-inequality_, which states that the size tends to zero like $\tfrac{1}{q}$.

A period-_q_ limb will have _q_ − 1 "antennae" at the top of its limb. We can thus determine the period of a given bulb by counting these antennas.

Pi in the Mandelbrot set

In an attempt to demonstrate that the thickness of the _p_/_q_-limb is zero, David Boll carried out a computer experiment in 1991, where he computed the number of iterations required for the series to diverge for z = $-\tfrac{3}{4} + i\epsilon$ ($-\tfrac{3}{4}$ being the location thereof). As the series doesn't diverge for the exact value of z = $-\tfrac{3}{4}$, the number of iterations required increases with a small ε. It turns out that multiplying the value of ε with the number of iterations required yields an approximation of π that becomes better for smaller ε. For example, for ε = 0.0000001 the number of iterations is 31415928 and the product is 3.1415928.[26]

Fibonacci sequence in the Mandelbrot set

It can be shown that the Fibonacci sequence is located within the Mandelbrot Set and that a relation exists between the main cardioid and the Farey Diagram. Upon mapping the main cardioid to a disk, one can notice that the amount of antennae that extends from the next largest Hyperbolic component, and that is located between the two previously selected components, follows suit with the Fibonacci sequence. The amount of antennae also correlates with the Farey Diagram and the denominator amounts within the corresponding fractional values, of which relate to the distance around the disk. Both portions of these fractional values themselves can be summed together after $\frac{1}{3}$to produce the location of the next Hyperbolic component within the sequence. Thus, the Fibonacci sequence of 1, 2, 3, 5, 8, 13, and 21 can be found within the Mandelbrot set.

Image gallery of a zoom sequence

The Mandelbrot set shows more intricate detail the closer one looks or magnifies the image, usually called "zooming in". The following example of an image sequence zooming to a selected _c_ value gives an impression of the infinite richness of different geometrical structures and explains some of their typical rules.

The magnification of the last image relative to the first one is about 10¹⁰ to 1. Relating to an ordinary monitor, it represents a section of a Mandelbrot set with a diameter of 4 million kilometers. Its border would show an astronomical number of different fractal structures.

File:Mandel zoom 00 mandelbrot set.jpg|Start. Mandelbrot set with continuously colored environment. File:Mandel zoom 01 head and shoulder.jpg|Gap between the "head" and the "body", also called the "seahorse valley" File:Mandel zoom 02 seehorse valley.jpg|Double-spirals on the left, "seahorses" on the right File:Mandel zoom 03 seehorse.jpg|"Seahorse" upside down

The seahorse "body" is composed by 25 "spokes" consisting of two groups of 12 "spokes" each and one "spoke" connecting to the main cardioid. These two groups can be attributed by some kind of metamorphosis to the two "fingers" of the "upper hand" of the Mandelbrot set; therefore, the number of "spokes" increases from one "seahorse" to the next by 2; the "hub" is a so-called Misiurewicz point. Between the "upper part of the body" and the "tail" a distorted small copy of the Mandelbrot set called satellite may be recognized.

File:Mandel zoom 04 seehorse tail.jpg|The central endpoint of the "seahorse tail" is also a Misiurewicz point. File:Mandel zoom 05 tail part.jpg|Part of the "tail" — there is only one path consisting of the thin structures that lead through the whole "tail". This zigzag path passes the "hubs" of the large objects with 25 "spokes" at the inner and outer border of the "tail"; thus the Mandelbrot set is a simply connected set, which means there are no islands and no loop roads around a hole. File:Mandel zoom 06 double hook.jpg|Satellite. The two "seahorse tails" are the beginning of a series of concentric crowns with the satellite in the center. [https://mandelbrot-svelte.netlify.com/#%7B%22pos%22:{%22x%22:-0.743904874255535,%22y%22:-0.1317119067802009},%22zoom%22:7502494.442311305} Open this location in an interactive viewer.] File:Mandel zoom 07 satellite.jpg|Each of these crowns consists of similar "seahorse tails"; their number increases with powers of 2, a typical phenomenon in the environment of satellites. The unique path to the spiral center passes the satellite from the groove of the cardioid to the top of the "antenna" on the "head". File:Mandel zoom 08 satellite antenna.jpg|"Antenna" of the satellite. Several satellites of second order may be recognized. File:Mandel zoom 09 satellite head and shoulder.jpg|The "seahorse valley" of the satellite. All the structures from the start of the zoom reappear. File:Mandel zoom 10 satellite seehorse valley.jpg|Double-spirals and "seahorses" – unlike the 2nd image from the start, they have appendices consisting of structures like "seahorse tails"; this demonstrates the typical linking of _n_ + 1 different structures in the environment of satellites of the order _n_, here for the simplest case _n_ = 1. File:Mandel zoom 11 satellite double spiral.jpg|Double-spirals with satellites of second order – analogously to the "seahorses", the double-spirals may be interpreted as a metamorphosis of the "antenna" File:Mandel zoom 12 satellite spirally wheel with julia islands.jpg|In the outer part of the appendices, islands of structures may be recognized; they have a shape like Julia sets _J_(c)_; the largest of them may be found in the center of the "double-hook" on the right side File:Mandel zoom 13 satellite seehorse tail with julia island.jpg|Part of the "double-hook" File:Mandel zoom 14 satellite julia island.jpg|Islands File:Mandel zoom 15 one island.jpg|Detail of one island File:Mandel zoom 16 spiral island.jpg|Detail of the spiral. Open this location in an interactive viewer.

The islands above seem to consist of infinitely many parts like Cantor sets, as is actually the case for the corresponding Julia set _J_(c)_. However, they are connected by tiny structures, so that the whole represents a simply connected set. The tiny structures meet each other at a satellite in the center that is too small to be recognized at this magnification. The value of _c_ for the corresponding _J_(c)_ is not that of the image center but, relative to the main body of the Mandelbrot set, has the same position as the center of this image relative to the satellite shown in the 6th zoom step.


Generalizations

Multibrot sets

Multibrot sets are bounded sets found in the complex plane for members of the general monic univariate polynomial family of recursions

$$z \mapsto z^d + c.\$$

For an integer d, these sets are connectedness loci for the Julia sets built from the same formula. The full cubic connectedness locus has also been studied; here one considers the two-parameter recursion z ↦ z³ + 3kz + c, whose two critical points are the complex square roots of the parameter _k_. A parameter is in the cubic connectedness locus if both critical points are stable.[27] For general families of holomorphic functions, the _boundary_ of the Mandelbrot set generalizes to the bifurcation locus, which is a natural object to study even when the connectedness locus is not useful.

The Multibrot set is obtained by varying the value of the exponent _d_. The article has a video that shows the development from _d_ = 0 to 7, at which point there are 6 i.e. (_d_ − 1) lobes around the perimeter. A similar development with negative exponents results in (1 − _d_) clefts on the inside of a ring.

Higher dimensions

There is no perfect extension of the Mandelbrot set into 3D. This is because there is no 3D analogue of the complex numbers for it to iterate on. However, there is an extension of the complex numbers into 4 dimensions, called the quaternions, that creates a perfect extension of the Mandelbrot set and the Julia sets into 4 dimensions.[28] These can then be either cross-sectioned or projected into a 3D structure.


Other, non-analytic, mappings

Of particular interest is the tricorn fractal, the connectedness locus of the anti-holomorphic family

_z_ ↦ _z̄_² + _c_.

The tricorn (also sometimes called the _Mandelbar_) was encountered by Milnor in his study of parameter slices of real cubic polynomials. It is _not_ locally connected. This property is inherited by the connectedness locus of real cubic polynomials.

Another non-analytic generalization is the Burning Ship fractal, which is obtained by iterating the following :

_z_ ↦ (|ℜ(_z_)| + _i_|ℑ(_z_)|)² + _c_.


Computer drawings

] There are many programs used to generate the Mandelbrot set and other fractals, some of which are described in fractal-generating software. These programs use a variety of algorithms to determine the color of individual pixels and achieve efficient computation.

Escape time algorithm

The simplest algorithm for generating a representation of the Mandelbrot set is known as the "escape time" algorithm. A repeating calculation is performed for each _x_, _y_ point in the plot area and based on the behavior of that calculation, a color is chosen for that pixel.

The _x_ and _y_ locations of each point are used as starting values in a repeating, or iterating calculation (described in detail below). The result of each iteration is used as the starting values for the next. The values are checked during each iteration to see whether they have reached a critical "escape" condition, or "bailout". If that condition is reached, the calculation is stopped, the pixel is drawn, and the next _x_, _y_ point is examined. For some starting values, escape occurs quickly, after only a small number of iterations. For starting values very close to but not in the set, it may take hundreds or thousands of iterations to escape. For values within the Mandelbrot set, escape will never occur. The programmer or user must choose how much iteration, or "depth", they wish to examine. The higher the maximal number of iterations, the more detail and subtlety emerge in the final image, but the longer time it will take to calculate the fractal image.

Escape conditions can be simple or complex. Because no complex number with a real or imaginary part greater than 2 can be part of the set, a common bailout is to escape when either coefficient exceeds 2. A more computationally complex method that detects escapes sooner, is to compute distance from the origin using the Pythagorean theorem, i.e., to determine the absolute value, or _modulus_, of the complex number. If this value exceeds 2, or equivalently, when the sum of the squares of the real and imaginary parts exceed 4, the point has reached escape. More computationally intensive rendering variations include the Buddhabrot method, which finds escaping points and plots their iterated coordinates.

The color of each point represents how quickly the values reached the escape point. Often black is used to show values that fail to escape before the iteration limit, and gradually brighter colors are used for points that escape. This gives a visual representation of how many cycles were required before reaching the escape condition.

To render such an image, the region of the complex plane we are considering is subdivided into a certain number of pixels. To color any such pixel, let c be the midpoint of that pixel. We now iterate the critical point 0 under P_(c), checking at each step whether the orbit point has modulus larger than 2. When this is the case, we know that c does not belong to the Mandelbrot set, and we color our pixel according to the number of iterations used to find out. Otherwise, we keep iterating up to a fixed number of steps, after which we decide that our parameter is "probably" in the Mandelbrot set, or at least very close to it, and color the pixel black.

In pseudocode, this algorithm would look as follows. The algorithm does not use complex numbers and manually simulates complex-number operations using two real numbers, for those who do not have a complex data type. The program may be simplified if the programming language includes complex-data-type operations.

    For each pixel (Px, Py) on the screen, do:
    {
      x0 = scaled x coordinate of pixel (scaled to lie in the Mandelbrot X scale (-2.5, 1))
      y0 = scaled y coordinate of pixel (scaled to lie in the Mandelbrot Y scale (-1, 1))
      x = 0.0
      y = 0.0
      iteration = 0
      max_iteration = 1000
      while (x*x + y*y <= 2*2  AND  iteration < max_iteration) {
        xtemp = x*x - y*y + x0
        y = 2*x*y + y0
        x = xtemp
        iteration = iteration + 1
      }
      color = palette[iteration]
      plot(Px, Py, color)
    }

Here, relating the pseudocode to c, z and P_(c):

-   $z = x + iy\$
-   $z^2 = x^2 +i2xy - y^2\$
-   $c = x_0 + i y_0\$

and so, as can be seen in the pseudocode in the computation of _x_ and _y_:

-   x = Re (z² + c) = x² − y² + x₀ and $y = \mathop{\mathrm{Im}}(z^2+c) = 2xy + y_0.\$

The above code uses an unoptimized inner while loop for clarity. In the unoptimized version, one must perform five multiplications per iteration. To reduce the number of multiplications the following code for the inner while loop may be used instead :

    rsquare = 0
    isquare = 0
    zsquare = 0

    while (rsquare + isquare <= 4  AND  iteration < max_iteration) {
      x = rsquare - isquare + x0
      y = zsquare - rsquare - isquare + y0
      rsquare = x*x
      isquare = y*y
      zsquare = (x + y)*(x + y)
      iteration = iteration + 1
    }

The above code works via some algebraic simplification of the complex muliplication :

-   $(iy + x)^2 = -y^2 + 2iyx + x^2\$
-   $= x^2 - y^2 + 2iyx\$

Using the above indentity, the number of multiplications can be reduced to three instead of five.

To get colorful images of the set, the assignment of a color to each value of the number of executed iterations can be made using one of a variety of functions (linear, exponential, etc.). One practical way, without slowing down calculations, is to use the number of executed iterations as an entry to a look-up color palette table initialized at startup. If the color table has, for instance, 500 entries, then the color selection is _n_ mod 500, where _n_ is the number of iterations.

Histogram coloring

A more complex coloring method involves using a histogram which pairs each pixel with said pixel's maximum iteration count before escape / bailout . This method will equally distribute colors to the same overall area, and, importantly, is independent of the maximum number of iterations chosen.[29]

This algorithm has four passes. The first pass involves calculating the iteration counts associated with each pixel (but without any pixels being plotted). These are stored in an array which we'll call IterationCounts[x][y], where x and y are the x and y coordinates of said pixel on the screen respectively.

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -- --


  The top row is a series of plots using the escape time algorithm for 10000, 1000 and 100 maximum iterations per pixel respectively. The bottom row uses the same maximum iteration values but utilizes the histogram coloring method. Notice how little the coloring changes per different maximum iteration counts for the histogram coloring method plots.
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -- --

The first step of the second pass is to create an array of size _n_, which is the maximum iteration count. We'll call that array NumIterationsPerPixel . Next, one must iterate over the array of pixel-iteration count pairs, IterationCounts[][], and retrieve each pixel's saved iteration count, _i_, via eg. _i_ = IterationCounts[x][y]. After each pixel's iteration count _i_ is retrieved, it is necessary to index the NumIterationsPerPixel by _i_ and increment the indexed value (which is initially zero) -- eg. NumIterationsPerPixel[_i_] = NumIterationsPerPixel[_i_] + 1 .

    for (x = 0; x < width; x++) {
        for (y = 0; y < height; y++) {
            i = IterationCounts[x][y];
            NumIterationsPerPixel[i]++;
        }
    }

The third pass iterates through the NumIterationsPerPixel array and adds up all the stored values, saving them in _total_. The array index represents the number of pixels that reached that iteration count before bailout.

    total = 0;
    for (i = 0; i < max_iterations; i++) {
       total += NumIterationsPerPixel[i];
    }

After this, the fourth pass begins and all the values in the IterationCounts array are indexed, and, for each iteration count _i_, associated with each pixel, the count is added to a global sum of all the iteration counts from 1 to _i_ in the NumIterationsPerPixel array. . This value is then normalized by dividing the sum by the _total_ value computed earlier.

    hue[][] = 0.0;
    for (x = 0; x < width; x++) {
        for (y = 0; y < height; y++) {
            iteration = IterationCounts[x][y];
            for (i = 0; i <= iteration; i++) {
                hue[x][y] += NumIterationsPerPixel[i]; / total; /* Must be floating-point division. */
            }
        }
    }

    ...

    color = palette[hue[m,n]]

    ...

Finally, the computed value is used, eg. as an index to a color palette.

If one has a continuous color palette ranging from 0 to 1 for each color component, then the normalized color of each pixel can be computed as follows, using the variables from above.

This method may be combined with the smooth coloring method below for more aesthetically pleasing images.

Continuous (smooth) coloring

The escape time algorithm is popular for its simplicity. However, it creates bands of color, which, as a type of aliasing, can detract from an image's aesthetic value. This can be improved using an algorithm known as "normalized iteration count",[30][31] which provides a smooth transition of colors between iterations. The algorithm associates a real number ν with each value of _z_ by using the connection of the iteration number with the potential function. This function is given by

    ϕ(z) = lim_(n → ∞)(log |z_(n)|/P^(n)),

where _z__(_n_) is the value after _n_ iterations and _P_ is the power for which _z_ is raised to in the Mandelbrot set equation (_z__(_n_+1) = _z__(_n_)^(_P_) + _c_, _P_ is generally 2).

If we choose a large bailout radius _N_ (e.g., 10¹⁰⁰), we have that

    log |z_(n)|/P^(n) = log (N)/P^(ν(z))

for some real number ν(z), and this is

    ν(z) = n − log_(P)(log |z_(n)|/log (N)),

and as _n_ is the first iteration number such that |_z__(_n_)| > _N_, the number we subtract from _n_ is in the interval [0, 1).

For the coloring we must have a cyclic scale of colors (constructed mathematically, for instance) and containing _H_ colors numbered from 0 to _H_ − 1 (_H_ = 500, for instance). We multiply the real number ν(z) by a fixed real number determining the density of the colors in the picture, take the integral part of this number modulo _H_, and use it to look up the corresponding color in the color table.

For example, modifying the above pseudocode and also using the concept of linear interpolation would yield

    For each pixel (Px, Py) on the screen, do:
    {
      x0 = scaled x coordinate of pixel (scaled to lie in the Mandelbrot X scale (-2.5, 1))
      y0 = scaled y coordinate of pixel (scaled to lie in the Mandelbrot Y scale (-1, 1))
      x = 0.0
      y = 0.0
      iteration = 0
      max_iteration = 1000
      // Here N=2^8 is chosen as a reasonable bailout radius.
      while ( x*x + y*y <= (1 << 16)  AND  iteration < max_iteration ) {
        xtemp = x*x - y*y + x0
        y = 2*x*y + y0
        x = xtemp
        iteration = iteration + 1
      }
      // Used to avoid floating point issues with points inside the set.
      if ( iteration < max_iteration ) {
        // sqrt of inner term removed using log simplification rules.
        log_zn = log( x*x + y*y ) / 2
        nu = log( log_zn / log(2) ) / log(2)
        // Rearranging the potential function.
        // Dividing log_zn by log(2) instead of log(N = 1<<8)
        // because we want the entire palette to range from the
        // center to radius 2, NOT our bailout radius.
        iteration = iteration + 1 - nu
      }
      color1 = palette[floor(iteration)]
      color2 = palette[floor(iteration) + 1]
      // iteration % 1 = fractional part of iteration.
      color = linear_interpolate(color1, color2, iteration % 1)
      plot(Px, Py, color)
    }

Distance estimates

One can compute the distance from point _c_ (in exterior or interior) to nearest point on the boundary of the Mandelbrot set.[32]

Exterior distance estimation

The proof of the connectedness of the Mandelbrot set in fact gives a formula for the uniformizing map of the complement of M (and the derivative of this map). By the Koebe quarter theorem, one can then estimate the distance between the midpoint of our pixel and the Mandelbrot set up to a factor of 4.

In other words, provided that the maximal number of iterations is sufficiently high, one obtains a picture of the Mandelbrot set with the following properties:

1.  Every pixel that contains a point of the Mandelbrot set is colored black.
2.  Every pixel that is colored black is close to the Mandelbrot set.

The distance estimate _b_ of a pixel _c_ (a complex number) from the Mandelbrot set is given by

    $b=\lim_{n \to \infty} 2 \cdot \frac{|{P_c^n(c)| \cdot \ln|{P_c^n(c)}}|}{|\frac{\partial}{\partial{c}} P_c^n(c)|},$

where

-   P_(c)(z)  stands for complex quadratic polynomial
-   P_(c)^(n)(c) stands for _n_ iterations of P_(c)(z) → z or z² + c → z, starting with z = c:<!--

--> P_(c)⁰(c) = c,  P_(c)^(n + 1)(c) = P_(c)^(n)(c)² + c;

-   $\frac{\partial}{\partial{c}} P_c^n(c)$ is the derivative of<!--

--> P_(c)^(n)(c) with respect to c. This derivative can be found by starting with  $\frac{\partial}{\partial{c}} P_c^{ 0}(c) = 1$  and then $\frac{\partial}{\partial{c}} P_c^{ n+1}(c) = 2\cdot{}P_c^n(c)\cdot\frac{\partial}{\partial{c}} P_c^n(c) + 1$.  This can easily be verified by using the chain rule for the derivative.

The idea behind this formula is simple: When the equipotential lines for the potential function ϕ(z) lie close, the number |ϕ′(z)| is large, and conversely, therefore the equipotential lines for the function ϕ(z)/|ϕ′(z)| should lie approximately regularly.

From a mathematician's point of view, this formula only works in limit where _n_ goes to infinity, but very reasonable estimates can be found with just a few additional iterations after the main loop exits.

Once _b_ is found, by the Koebe 1/4-theorem, we know that there is no point of the Mandelbrot set with distance from _c_ smaller than _b/4_.

The distance estimation can be used for drawing of the boundary of the Mandelbrot set, see the article Julia set.

Interior distance estimation

It is also possible to estimate the distance of a limitly periodic (i.e., inner) point to the boundary of the Mandelbrot set. The estimate is given by

    b=\frac{1-\left|{\frac{\partial}{\partial{z}}P_c^p(z_0)}\right|^2}

 {\left|{\frac{\partial}{\partial{c}}\frac{\partial}{\partial{z}}P_c^p(z_0) +
       \frac{\partial}{\partial{z}}\frac{\partial}{\partial{z}}P_c^p(z_0)
       \frac{\frac{\partial}{\partial{c}}P_c^p(z_0)}
            {1-\frac{\partial}{\partial{z}}P_c^p(z_0)}} \right|},

where

-   p is the period,
-   c is the point to be estimated,
-   P_(c)(z) is the complex quadratic polynomial P_(c)(z) = z² + c
-   P_(c)^(p)(z₀) is the p-fold iteration of P_(c)(z) → z, starting with P_(c)⁰(z) = z₀
-   z₀ is any of the p points that make the attractor of the iterations of P_(c)(z) → z starting with<!--

--> P_(c)⁰(z) = c; z₀ satisfies z₀ = P_(c)^(p)(z₀),

-   $\frac{\partial}{\partial{c}}\frac{\partial}{\partial{z}}P_c^p(z_0)$,<!--

--> $\frac{\partial}{\partial{z}}\frac{\partial}{\partial{z}}P_c^p(z_0)$,  $\frac{\partial}{\partial{c}}P_c^p(z_0)$ and  $\frac{\partial}{\partial{z}}P_c^p(z_0)$ are various derivatives of  P_(c)^(p)(z), evaluated at z₀.

Analogous to the exterior case, once _b_ is found, we know that all points within the distance of _b_/4 from _c_ are inside the Mandelbrot set.

There are two practical problems with the interior distance estimate: first, we need to find z₀ precisely, and second, we need to find p precisely. The problem with z₀ is that the convergence to z₀ by iterating P_(c)(z) requires, theoretically, an infinite number of operations. The problem with any given p is that, sometimes, due to rounding errors, a period is falsely identified to be an integer multiple of the real period (e.g., a period of 86 is detected, while the real period is only 43=86/2). In such case, the distance is overestimated, i.e., the reported radius could contain points outside the Mandelbrot set.

Optimizations

Cardioid / bulb checking

One way to improve calculations is to find out beforehand whether the given point lies within the cardioid or in the period-2 bulb. Before passing the complex value through the escape time algorithm, first check that:

$$p = \sqrt{  \left(x - \frac{1}{4}\right)^2 + y^2}$$
,

$$x \leq p - 2p^2 + \frac{1}{4}$$
,

$$(x+1)^2 + y^2 \leq \frac{1}{16}$$
,

where _x_ represents the real value of the point and _y_ the imaginary value. The first two equations determine that the point is within the cardioid, the last the period-2 bulb.

The cardioid test can equivalently be performed without the square root:

$$q = \left(x - \frac{1}{4}\right)^2 + y^2,$$

$$q \left(q + \left(x - \frac{1}{4}\right)\right) \leq \frac{1}{4}y^2.$$

3rd- and higher-order buds do not have equivalent tests, because they are not perfectly circular.[33] However, it is possible to find whether the points are within circles inscribed within these higher-order bulbs, preventing many, though not all, of the points in the bulb from being iterated.

Periodicity checking

To prevent having to do huge numbers of iterations for points in the set, one can perform periodicity checking. Check whether a point reached in iterating a pixel has been reached before. If so, the pixel cannot diverge and must be in the set.

Periodicity checking is, of course, a trade-off. The need to remember points costs memory and _data management_ instructions, whereas it saves _computational_ instructions.

However, checking against only one previous iteration can detect many periods with little performance overhead. For example, within the while loop of the pseudocode above, make the following modifications.

      while (x*x + y*y <= 2*2  AND  iteration < max_iteration) {
        xtemp = x*x - y*y + x0
        ytemp = 2*x*y + y0
        if (x == xtemp  AND  y == ytemp) {  // do not work, because 1) only the body has a cycle period of 1, 2) end cycles will be reached after millions or billions of iterations, 3) rounding errors end up in longer final cycles
          iteration = max_iteration
          break
        }
        x = xtemp
        y = ytemp
        iteration = iteration + 1
      }

Border tracing / edge checking

It can be shown that if a solid shape can be drawn on the Mandelbrot set, with all the border colors being the same, then the shape can be filled in with that color. This is a result of the Mandelbrot set being simply connected. Boundary tracing works by following the lemniscates of the various iteration levels (colored bands) all around the set, and then filling the entire band at once. This can be a good speed increase, because it means that large numbers of points can be skipped.[34]

A similar method operating on the same principle uses rectangles instead of arbitrary border shapes. It is usually faster than boundary tracing because it requires fewer calculations to work out the rectangle. It is inefficient, however, because boundaries are not rectangular, and so some areas can be missed. This issue can be minimized by creating a recursive algorithm that, if a rectangle border fails, will subdivide it into four smaller rectangles and test those, and either fill each or subdivide again and repeat the process.

However, this only works using discrete colors in the escape time algorithm. It will not work for smooth/continuous coloring.

Symmetry utilization

The horizontal symmetry of the Mandelbrot set allows for portions of the rendering process to be skipped upon the presence of the real axis in the final image. However, regardless of the portion that gets mirrored, the same number of points will be rendered.

Advanced bailout method

Simple programs and scripts generally tend to set the escape value to two. This process can be improved by utilizing the distance from the origin and the point being rendered with the Pythagorean theorem by summing the squares of the real and imaginary portions of z and then escaping if the value is larger or equal to four. The result of this optimization is a faster rendering of the image.

Perturbation theory and series approximation

Very highly magnified images require more than the standard 64–128 or so bits of precision that most hardware floating-point units provide, requiring renderers to use slow "BigNum" or "arbitrary-precision" math libraries to calculate. However, this can be sped up by the exploitation of perturbation theory. Given

_z__(_n_ + 1) = _z__(_n_)² + _c_

as the iteration, and a small epsilon and delta, it is the case that

(_z__(_n_) + _ϵ_)² + (_c_ + _δ_) = _z__(_n_)² + 2_z__(_n_)_ϵ_ + _ϵ_² + _c_ + _δ_,

or

_z__(_n_ + 1) + 2_z__(_n_)_ϵ_ + _ϵ_² + _δ_,

so if one defines

_ϵ__(_n_ + 1) = 2_z__(_n_)_ϵ__(_n_) + _ϵ__(_n_)² + _δ_,

one can calculate a single point (e.g. the center of an image) using high-precision arithmetic (_z_), giving a _reference orbit_, and then compute many points around it in terms of various initial offsets delta plus the above iteration for epsilon, where epsilon-zero is set to 0. For most iterations, epsilon does not need more than 16 significant figures, and consequently hardware floating-point may be used to get a mostly accurate image.[35] There will often be some areas where the orbits of points diverge enough from the reference orbit that extra precision is needed on those points, or else additional local high-precision-calculated reference orbits are needed. By measuring the orbit distance between the reference point and the point calculated with low precision, it can be detected that it is not possible to calculate the point correctly, and the calculation can be stopped. These incorrect points can later be re-calculated e.g. from another closer reference point.

Further, it is possible to approximate the starting values for the low-precision points with a truncated Taylor series, which often enables a significant amount of iterations to be skipped.[36] Renderers implementing these techniques are publicly available and offer speedups for highly magnified images by around two orders of magnitude.[37]

An alternate explanation of the above:

For the central point in the disc c and its iterations z_(n), and an arbitrary point in the disc c + δ and its iterations z′_(n), it is possible to define the following iterative relationship:

_z_′_(_n_) = _z__(_n_) + _ϵ__(_n_)

With ϵ₁ = δ. Successive iterations of ϵ_(n) can be found using the following:

_z_′_(_n_ + 1) = _z_′_(_n_)² + (_c_ + _δ_)

_z_′_(_n_ + 1) = (_z__(_n_) + _ϵ__(_n_))² + _c_ + _δ_

_z_′_(_n_ + 1) = _z__(_n_)² + _c_ + 2_z__(_n_)_ϵ__(_n_) + _ϵ__(_n_)² + _δ_

_z_′_(_n_ + 1) = _z__(_n_ + 1) + 2_z__(_n_)_ϵ__(_n_) + _ϵ__(_n_)² + _δ_

Now from the original definition:

_z_′_(_n_ + 1) = _z__(_n_ + 1) + _ϵ__(_n_ + 1)
,

It follows that:

_ϵ__(_n_ + 1) = 2_z__(_n_)_ϵ__(_n_) + _ϵ__(_n_)² + _δ_

As the iterative relationship relates an arbitrary point to the central point by a very small change δ, then most of the iterations of ϵ_(n) are also small and can be calculated using floating point hardware.

However, for every arbitrary point in the disc it is possible to calculate a value for a given ϵ_(n) without having to iterate through the sequence from ϵ₀, by expressing ϵ_(n) as a power series of δ.

$$\epsilon_n = A_{n}\delta + B_{n}\delta^2 + C_{n}\delta^3 + \dotsc$$

With $A_{1} = 1, B_{1} = 0, C_{1} = 0, \dotsc$.

Now given the iteration equation of ϵ, it is possible to calculate the coefficients of the power series for each ϵ_(n):

_ϵ__(_n_ + 1) = 2_z__(_n_)_ϵ__(_n_) + _ϵ__(_n_)² + _δ_

$$\epsilon_{n+1} = 2z_n(A_n\delta + B_n\delta^2 + C_n\delta^3 + \dotsc) + (A_n\delta + B_n\delta^2 + C_n\delta^3 + \dotsc)^2 + \delta$$

$$\epsilon_{n+1} = (2z_nA_n+1)\delta + (2z_nB_n + {A_n}^2)\delta^2 + (2z_nC_n + 2A_nB_n)\delta^3  + \dotsc$$

Therefore it follows that:

_A__(_n_ + 1) = 2_z__(_n_)_A__(_n_) + 1

_B__(_n_ + 1) = 2_z__(_n_)_B__(_n_) + _A__(_n_)²

_C__(_n_ + 1) = 2_z__(_n_)_C__(_n_) + 2_A__(_n_)_B__(_n_)

⋮

The coefficients in the power series can be calculated as iterative series using only values from the central point's iterations z, and do not change for any arbitrary point in the disc. If δ is very small, ϵ_(n) should be calculable to sufficient accuracy using only a few terms of the power series. As the Mandelbrot Escape Contours are 'continuous' over the complex plane, if a points escape time has been calculated, then the escape time of that points neighbours should be similar. Interpolation of the neighbouring points should provide a good estimation of where to start in the ϵ_(n) series.

Further, separate interpolation of both real axis points and imaginary axis points should provide both an upper and lower bound for the point being calculated. If both results are the same (i.e. both escape or dot not escape) then the difference Δn can be used to recuse until both an upper and lower bound can be established. If floating point hardware can be used to iterate the ϵ series, then there exists a relation between how many iterations can be achieved in the time it takes to use BigNum software to compute a given ϵ_(n). If the difference between the bounds is greater than the number of iterations, it is possible to perform binomial search using BigNum software, successively halving the gap until it becomes more time efficient to find the escape value using floating point hardware.


References in popular culture

The Mandelbrot set is considered by many the most popular fractal,[38][39] and has been referenced several times in popular culture.

-   The Jonathan Coulton song "Mandelbrot Set" is a tribute to both the fractal itself and to its discoverer Benoit Mandelbrot.[40]
-   The second book of the _Mode series_ by Piers Anthony, _Fractal Mode_, describes a world that is a perfect 3D model of the set.[41]
-   The Arthur C. Clarke novel _The Ghost from the Grand Banks_ features an artificial lake made to replicate the shape of the Mandelbrot set.[42]


See also

-   Collatz fractal
-   Fractint
-   Gilbreath permutation
-   Mandelbox
-   Mandelbulb
-   Newton fractal
-   Orbit portrait
-   Orbit trap
-   Pickover stalk


References


Further reading

-   John W. Milnor, _Dynamics in One Complex Variable_ (Third Edition), Annals of Mathematics Studies 160, (Princeton University Press, 2006),
    (First appeared in 1990 as a Stony Brook IMS Preprint, available as arXiV:math.DS/9201272 )
-   Nigel Lesmoir-Gordon, _The Colours of Infinity: The Beauty, The Power and the Sense of Fractals_,
    (includes a DVD featuring Arthur C. Clarke and David Gilmour)
-   Heinz-Otto Peitgen, Hartmut Jürgens, Dietmar Saupe, _Chaos and Fractals: New Frontiers of Science_ (Springer, New York, 1992, 2004),


External links

-   -   The Mandelbrot Set and Julia Sets by Michael Frame, Benoit Mandelbrot, and Nial Neger
-   Video: Mandelbrot fractal zoom to 6.066 e228
-   Relatively simple explanation of the mathematical process, by Dr Holly Krieger, MIT
-   Mandelbrot set images online rendering
-   Fractal calculator written in Lua by Deyan Dobromiroiv, Sofia, Bulgaria

Category:Fractals Category:Articles containing video clips Category:Articles with example pseudocode Category:Complex dynamics

[1] Adrien Douady and John H. Hubbard, _Etude dynamique des polynômes complexes_, Prépublications mathémathiques d'Orsay 2/4 (1984 / 1985)

[2] Robert Brooks and Peter Matelski, _The dynamics of 2-generator subgroups of PSL(2,C)_, in

[3]

[4] Benoit Mandelbrot, _Fractal aspects of the iteration of z ↦ λz(1 − z) for complex λ, z_, _Annals of the New York Academy of Sciences_ 357, 249/259

[5]

[6]

[7] Frontiers of Chaos, Exhibition of the Goethe-Institut by H.O. Peitgen, P. Richter, H. Jürgens, M. Prüfer, D.Saupe. since 1985 shown in over 40 countries.

[8]

[9]

[10]

[11]

[12]

[13]

[14]

[15]

[16]

[17] _The Mandelbrot set, theme and variations_. Tan, Lei. Cambridge University Press, 2000. . Section 2.1, "Yoccoz para-puzzles", p. 121

[18] _Exploring the Mandelbrot set. The Orsay Notes_ by Adrien Douady and John H. Hubbard. page 12

[19] Wolf Jung, March 2002, Homeomorphisms on Edges of the Mandelbrot Set by Wolf Jung

[20] . Hubbard cites as his source a 1989 unpublished manuscript of Yoccoz.

[21]

[22] )

[23]

[24] .

[25]

[26] Gary William Flake, _The Computational Beauty of Nature_, 1998. p. 125. .

[27] Rudy Rucker's discussion of the CCM: CS.sjsu.edu

[28] http://archive.bridgesmathart.org/2010/bridges2010-247.pdf retrieved August 19, 2018

[29]

[30]

[31]

[32]

[33]

[34]

[35]

[36]

[37]

[38] Mandelbaum, Ryan F. (2018). "This Trippy Music Video Is Made of 3D Fractals." Retrieved 17 January 2019

[39] Moeller, Olga de. (2018)."what are Fratals?" Retrieved 17 January 2019.

[40]

[41]

[42]