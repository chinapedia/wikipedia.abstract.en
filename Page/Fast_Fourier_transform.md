DIT-FFT-butterfly.png FFT_of_Cosine_Summation_Function.png

A FAST FOURIER TRANSFORM (FFT) is an algorithm that computes the discrete Fourier transform (DFT) of a sequence, or its inverse (IDFT). Fourier analysis converts a signal from its original domain (often time or space) to a representation in the frequency domain and vice versa. The DFT is obtained by decomposing a sequence of values into components of different frequencies.[1] This operation is useful in many fields, but computing it directly from the definition is often too slow to be practical. An FFT rapidly computes such transformations by factorizing the DFT matrix into a product of sparse (mostly zero) factors.[2] As a result, it manages to reduce the complexity of computing the DFT from O(N²), which arises if one simply applies the definition of DFT, to O(Nlog N), where N is the data size. The difference in speed can be enormous, especially for long data sets where _N_ may be in the thousands or millions. In the presence of round-off error, many FFT algorithms are much more accurate than evaluating the DFT definition directly. There are many different FFT algorithms based on a wide range of published theories, from simple complex-number arithmetic to group theory and number theory.

Fast Fourier transforms are widely used for applications in engineering, music, science, and mathematics. The basic ideas were popularized in 1965, but some algorithms had been derived as early as 1805.[3] In 1994, Gilbert Strang described the FFT as "the most important numerical algorithm of our lifetime",[4][5] and it was included in Top 10 Algorithms of 20th Century by the IEEE magazine _Computing in Science & Engineering_.[6]

The best-known FFT algorithms depend upon the factorization of _N_, but there are FFTs with O(_N_ log _N_) complexity for all _N_, even for prime _N_. Many FFT algorithms only depend on the fact that e^( − 2πi/N) is an _N_-th primitive root of unity, and thus can be applied to analogous transforms over any finite field, such as number-theoretic transforms. Since the inverse DFT is the same as the DFT, but with the opposite sign in the exponent and a 1/_N_ factor, any FFT algorithm can easily be adapted for it.


History

The development of fast algorithms for DFT can be traced to Gauss's unpublished work in 1805 when he needed it to interpolate the orbit of asteroids Pallas and Juno from sample observations.[7][8] His method was very similar to the one published in 1965 by Cooley and Tukey, who are generally credited for the invention of the modern generic FFT algorithm. While Gauss's work predated even Fourier's results in 1822, he did not analyze the computation time and eventually used other methods to achieve his goal.

Between 1805 and 1965, some versions of FFT were published by other authors. Frank Yates in 1932 published his version called _interaction algorithm_, which provided efficient computation of Hadamard and Walsh transforms.[9] Yates' algorithm is still used in the field of statistical design and analysis of experiments. In 1942, G. C. Danielson and Cornelius Lanczos published their version to compute DFT for x-ray crystallography, a field where calculation of Fourier transforms presented a formidable bottleneck.[10][11] While many methods in the past had focused on reducing the constant factor for O(N²) computation by taking advantage of "symmetries", Danielson and Lanczos realized that one could use the "periodicity" and apply a "doubling trick" to get O(Nlog N) runtime.[12]

James Cooley and John Tukey published a more general version of FFT in 1965 that is applicable when _N_ is composite and not necessarily a power of 2.[13] Tukey came up with the idea during a meeting of President Kennedy's Science Advisory Committee where a discussion topic involved detecting nuclear tests by the Soviet Union by setting up sensors to surround the country from outside. To analyze the output of these sensors, a fast Fourier transform algorithm would be needed. In discussion with Tukey, Richard Garwin recognized the general applicability of the algorithm not just to national security problems, but also to a wide range of problems including one of immediate interest to him, determining the periodicities of the spin orientations in a 3-D crystal of Helium-3.[14] Garwin gave Tukey's idea to Cooley (both worked at IBM's Watson labs) for implementation.[15] Cooley and Tukey published the paper in a relatively short time of six months.[16] As Tukey did not work at IBM, the patentability of the idea was doubted and the algorithm went into the public domain, which, through the computing revolution of the next decade, made FFT one of the indispensable algorithms in digital signal processing.


Definition

Let _x_₀, ...., _x__(_N_−1) be complex numbers. The DFT is defined by the formula

$$X_k = \sum_{n=0}^{N-1} x_n e^{-i2\pi k n/N} \qquad k = 0,\ldots,N-1,$$

where e^(i2π/N) is a primitive th root of 1.

Evaluating this definition directly requires O(N²) operations: there are _N_ outputs _X__(_k_), and each output requires a sum of _N_ terms. An FFT is any method to compute the same results in O(Nlog N) operations. All known FFT algorithms require Θ(Nlog N) operations, although there is no known proof that a lower complexity score is impossible.[17]

To illustrate the savings of an FFT, consider the count of complex multiplications and additions for N=4096 data points. Evaluating the DFT's sums directly involves _N_² complex multiplications and _N_(_N_−1) complex additions, of which O(N) operations can be saved by eliminating trivial operations such as multiplications by 1, leaving about 30 million operations. On the other hand, the radix-2 Cooley–Tukey algorithm, for _N_ a power of 2, can compute the same result with only (_N_/2)log₂(_N_) complex multiplications (again, ignoring simplifications of multiplications by 1 and similar) and _N_ log₂(_N_) complex additions, in total about 30,000 operations - a thousand times less than with direct evaluation. In practice, actual performance on modern computers is usually dominated by factors other than the speed of arithmetic operations and the analysis is a complicated subject (see, e.g., Frigo & Johnson, 2005),[18] but the overall improvement from O(N²) to O(Nlog N) remains.


Algorithms

Cooley–Tukey algorithm

By far the most commonly used FFT is the Cooley–Tukey algorithm. This is a divide and conquer algorithm that recursively breaks down a DFT of any composite size _N_ = _N_₁_N_₂ into many smaller DFTs of sizes _N_₁ and _N_₂, along with O(_N_) multiplications by complex roots of unity traditionally called twiddle factors (after Gentleman and Sande, 1966[19]).

This method (and the general idea of an FFT) was popularized by a publication of Cooley and Tukey in 1965,[20] but it was later discovered[21] that those two authors had independently re-invented an algorithm known to Carl Friedrich Gauss around 1805[22] (and subsequently rediscovered several times in limited forms).

The best known use of the Cooley–Tukey algorithm is to divide the transform into two pieces of size _N_/2 at each step, and is therefore limited to power-of-two sizes, but any factorization can be used in general (as was known to both Gauss and Cooley/Tukey[23]). These are called the _radix-2_ and _mixed-radix_ cases, respectively (and other variants such as the split-radix FFT have their own names as well). Although the basic idea is recursive, most traditional implementations rearrange the algorithm to avoid explicit recursion. Also, because the Cooley–Tukey algorithm breaks the DFT into smaller DFTs, it can be combined arbitrarily with any other algorithm for the DFT, such as those described below.

Other FFT algorithms

There are other FFT algorithms distinct from Cooley–Tukey.

Cornelius Lanczos did pioneering work on the FFT and FFS (fast Fourier sampling method) with G. C. Danielson (1940).

For _N_ = _N_₁_N_₂ with coprime _N_₁ and _N_₂, one can use the prime-factor (Good–Thomas) algorithm (PFA), based on the Chinese remainder theorem, to factorize the DFT similarly to Cooley–Tukey but without the twiddle factors. The Rader–Brenner algorithm (1976)[24] is a Cooley–Tukey-like factorization but with purely imaginary twiddle factors, reducing multiplications at the cost of increased additions and reduced numerical stability; it was later superseded by the split-radix variant of Cooley–Tukey (which achieves the same multiplication count but with fewer additions and without sacrificing accuracy). Algorithms that recursively factorize the DFT into smaller operations other than DFTs include the Bruun and QFT algorithms. (The Rader–Brenner[25] and QFT algorithms were proposed for power-of-two sizes, but it is possible that they could be adapted to general composite _N_. Bruun's algorithm applies to arbitrary even composite sizes.) Bruun's algorithm, in particular, is based on interpreting the FFT as a recursive factorization of the polynomial _z_^(_N_) − 1, here into real-coefficient polynomials of the form _z_^(_M_) − 1 and _z_^(2_M_) + _az_^(_M_) + 1.

Another polynomial viewpoint is exploited by the Winograd FFT algorithm,[26][27] which factorizes _z_^(_N_) − 1 into cyclotomic polynomials—these often have coefficients of 1, 0, or −1, and therefore require few (if any) multiplications, so Winograd can be used to obtain minimal-multiplication FFTs and is often used to find efficient algorithms for small factors. Indeed, Winograd showed that the DFT can be computed with only O(_N_) irrational multiplications, leading to a proven achievable lower bound on the number of multiplications for power-of-two sizes; unfortunately, this comes at the cost of many more additions, a tradeoff no longer favorable on modern processors with hardware multipliers. In particular, Winograd also makes use of the PFA as well as an algorithm by Rader for FFTs of _prime_ sizes.

Rader's algorithm, exploiting the existence of a generator for the multiplicative group modulo prime _N_, expresses a DFT of prime size _N_ as a cyclic convolution of (composite) size _N_−1, which can then be computed by a pair of ordinary FFTs via the convolution theorem (although Winograd uses other convolution methods). Another prime-size FFT is due to L. I. Bluestein, and is sometimes called the chirp-z algorithm; it also re-expresses a DFT as a convolution, but this time of the _same_ size (which can be zero-padded to a power of two and evaluated by radix-2 Cooley–Tukey FFTs, for example), via the identity

    $nk = -\frac{(k-n)^2} 2 + \frac{n^2} 2 + \frac{k^2} 2.$

Hexagonal Fast Fourier Transform aims at computing an efficient FFT for the hexagonally sampled data by using a new addressing scheme for hexagonal grids, called Array Set Addressing (ASA).


FFT algorithms specialized for real and/or symmetric data

In many applications, the input data for the DFT are purely real, in which case the outputs satisfy the symmetry

_X__(_N_ − _k_) = _X__(_k_)^(*)

and efficient FFT algorithms have been designed for this situation (see e.g. Sorensen, 1987).[28][29] One approach consists of taking an ordinary algorithm (e.g. Cooley–Tukey) and removing the redundant parts of the computation, saving roughly a factor of two in time and memory. Alternatively, it is possible to express an _even_-length real-input DFT as a complex DFT of half the length (whose real and imaginary parts are the even/odd elements of the original real data), followed by O(_N_) post-processing operations.

It was once believed that real-input DFTs could be more efficiently computed by means of the discrete Hartley transform (DHT), but it was subsequently argued that a specialized real-input DFT algorithm (FFT) can typically be found that requires fewer operations than the corresponding DHT algorithm (FHT) for the same number of inputs.[30] Bruun's algorithm (above) is another method that was initially proposed to take advantage of real inputs, but it has not proved popular.

There are further FFT specializations for the cases of real data that have even/odd symmetry, in which case one can gain another factor of (roughly) two in time and memory and the DFT becomes the discrete cosine/sine transform(s) (DCT/DST). Instead of directly modifying an FFT algorithm for these cases, DCTs/DSTs can also be computed via FFTs of real data combined with O(_N_) pre/post processing.


Computational issues

Bounds on complexity and operation counts

A fundamental question of longstanding theoretical interest is to prove lower bounds on the complexity and exact operation counts of fast Fourier transforms, and many open problems remain. It is not even rigorously proved whether DFTs truly require Ω(_N_ log _N_) (i.e., order _N_ log _N_ or greater) operations, even for the simple case of power of two sizes, although no algorithms with lower complexity are known. In particular, the count of arithmetic operations is usually the focus of such questions, although actual performance on modern-day computers is determined by many other factors such as cache or CPU pipeline optimization.

Following pioneering work by Winograd (1978),[31] a tight Θ(_N_) lower bound _is_ known for the number of real multiplications required by an FFT. It can be shown that only 4N − 2log₂²N − 2log₂N − 4 irrational real multiplications are required to compute a DFT of power-of-two length N = 2^(m). Moreover, explicit algorithms that achieve this count are known (Heideman & Burrus, 1986;[32] Duhamel, 1990[33]). Unfortunately, these algorithms require too many additions to be practical, at least on modern computers with hardware multipliers (Duhamel, 1990;[34] Frigo & Johnson, 2005).[35]

A tight lower bound is _not_ known on the number of required additions, although lower bounds have been proved under some restrictive assumptions on the algorithms. In 1973, Morgenstern[36] proved an Ω(_N_ log _N_) lower bound on the addition count for algorithms where the multiplicative constants have bounded magnitudes (which is true for most but not all FFT algorithms). This result, however, applies only to the unnormalized Fourier transform (which is a scaling of a unitary matrix by a factor of $\sqrt N$), and does not explain why the Fourier matrix is harder to compute than any other unitary matrix (including the identity matrix) under the same scaling. Pan (1986)[37] proved an Ω(_N_ log _N_) lower bound assuming a bound on a measure of the FFT algorithm's "asynchronicity", but the generality of this assumption is unclear. For the case of power-of-two _N_, Papadimitriou (1979)[38] argued that the number Nlog₂N of complex-number additions achieved by Cooley–Tukey algorithms is _optimal_ under certain assumptions on the graph of the algorithm (his assumptions imply, among other things, that no additive identities in the roots of unity are exploited). (This argument would imply that at least 2Nlog₂N real additions are required, although this is not a tight bound because extra additions are required as part of complex-number multiplications.) Thus far, no published FFT algorithm has achieved fewer than Nlog₂N complex-number additions (or their equivalent) for power-of-two _N_.

A third problem is to minimize the _total_ number of real multiplications and additions, sometimes called the "arithmetic complexity" (although in this context it is the exact count and not the asymptotic complexity that is being considered). Again, no tight lower bound has been proven. Since 1968, however, the lowest published count for power-of-two _N_ was long achieved by the split-radix FFT algorithm, which requires 4Nlog₂N − 6N + 8 real multiplications and additions for _N_ > 1. This was recently reduced to $\sim \frac{34}{9} N \log_2 N$ (Johnson and Frigo, 2007;[39] Lundy and Van Buskirk, 2007[40]). A slightly larger count (but still better than split radix for _N_≥256) was shown to be provably optimal for _N_≤512 under additional restrictions on the possible algorithms (split-radix-like flowgraphs with unit-modulus multiplicative factors), by reduction to a satisfiability modulo theories problem solvable by brute force (Haynal & Haynal, 2011).[41]

Most of the attempts to lower or prove the complexity of FFT algorithms have focused on the ordinary complex-data case, because it is the simplest. However, complex-data FFTs are so closely related to algorithms for related problems such as real-data FFTs, discrete cosine transforms, discrete Hartley transforms, and so on, that any improvement in one of these would immediately lead to improvements in the others (Duhamel & Vetterli, 1990).[42]

Approximations

All of the FFT algorithms discussed above compute the DFT exactly (i.e. neglecting floating-point errors). A few "FFT" algorithms have been proposed, however, that compute the DFT _approximately_, with an error that can be made arbitrarily small at the expense of increased computations. Such algorithms trade the approximation error for increased speed or other properties. For example, an approximate FFT algorithm by Edelman et al. (1999)[43] achieves lower communication requirements for parallel computing with the help of a fast multipole method. A wavelet-based approximate FFT by Guo and Burrus (1996)[44] takes sparse inputs/outputs (time/frequency localization) into account more efficiently than is possible with an exact FFT. Another algorithm for approximate computation of a subset of the DFT outputs is due to Shentov et al. (1995).[45] The Edelman algorithm works equally well for sparse and non-sparse data, since it is based on the compressibility (rank deficiency) of the Fourier matrix itself rather than the compressibility (sparsity) of the data. Conversely, if the data are sparse—that is, if only _K_ out of _N_ Fourier coefficients are nonzero—then the complexity can be reduced to O(_K_ log(_N_)log(_N_/_K_)), and this has been demonstrated to lead to practical speedups compared to an ordinary FFT for _N_/_K_ > 32 in a large-_N_ example (_N_ = 2²²) using a probabilistic approximate algorithm (which estimates the largest _K_ coefficients to several decimal places).[46]

Accuracy

Even the "exact" FFT algorithms have errors when finite-precision floating-point arithmetic is used, but these errors are typically quite small; most FFT algorithms, e.g. Cooley–Tukey, have excellent numerical properties as a consequence of the pairwise summation structure of the algorithms. The upper bound on the relative error for the Cooley–Tukey algorithm is O(_ε_ log _N_), compared to O(_εN_^(3/2)) for the naïve DFT formula,[47] where ε is the machine floating-point relative precision. In fact, the root mean square (rms) errors are much better than these upper bounds, being only O(_ε_ ) for Cooley–Tukey and O(_ε_ ) for the naïve DFT (Schatzman, 1996).[48] These results, however, are very sensitive to the accuracy of the twiddle factors used in the FFT (i.e. the trigonometric function values), and it is not unusual for incautious FFT implementations to have much worse accuracy, e.g. if they use inaccurate trigonometric recurrence formulas. Some FFTs other than Cooley–Tukey, such as the Rader–Brenner algorithm, are intrinsically less stable.

In fixed-point arithmetic, the finite-precision errors accumulated by FFT algorithms are worse, with rms errors growing as O() for the Cooley–Tukey algorithm (Welch, 1969).[49] Moreover, even achieving this accuracy requires careful attention to scaling to minimize loss of precision, and fixed-point FFT algorithms involve rescaling at each intermediate stage of decompositions like Cooley–Tukey.

To verify the correctness of an FFT implementation, rigorous guarantees can be obtained in O(_N_ log _N_) time by a simple procedure checking the linearity, impulse-response, and time-shift properties of the transform on random inputs (Ergün, 1995).[50]


Multidimensional FFTs

As defined in the multidimensional DFT article, the multidimensional DFT

$$X_\mathbf{k} = \sum_{\mathbf{n}=0}^{\mathbf{N}-1} e^{-2\pi i \mathbf{k} \cdot (\mathbf{n} / \mathbf{N})} x_\mathbf{n}$$

transforms an array _x__(N) with a _d_-dimensional vector of indices N = (n₁, …, n_(d)) by a set of _d_ nested summations (over n_(j) = 0…N_(j) − 1 for each _j_), where the division N/N, defined as N/N = (n₁/N₁, …, n_(d)/N_(d)), is performed element-wise. Equivalently, it is the composition of a sequence of _d_ sets of one-dimensional DFTs, performed along one dimension at a time (in any order).

This compositional viewpoint immediately provides the simplest and most common multidimensional DFT algorithm, known as the ROW-COLUMN algorithm (after the two-dimensional case, below). That is, one simply performs a sequence of _d_ one-dimensional FFTs (by any of the above algorithms): first you transform along the _n_₁ dimension, then along the _n_₂ dimension, and so on (or actually, any ordering works). This method is easily shown to have the usual O(_N_ log _N_) complexity, where N = N₁ ⋅ N₂ ⋅ … ⋅ N_(d) is the total number of data points transformed. In particular, there are _N_/_N_₁ transforms of size _N_₁, etcetera, so the complexity of the sequence of FFTs is:

$$\begin{align}
& \frac{N}{N_1} O(N_1 \log N_1) + \cdots + \frac{N}{N_d} O(N_d \log N_d) \\[6pt]
= {} & O\left(N \left[\log N_1 + \cdots + \log N_d\right]\right) = O(N \log N).
\end{align}$$

In two dimensions, the _x__(K) can be viewed as an n₁ × n₂ matrix, and this algorithm corresponds to first performing the FFT of all the rows (resp. columns), grouping the resulting transformed rows (resp. columns) together as another n₁ × n₂ matrix, and then performing the FFT on each of the columns (resp. rows) of this second matrix, and similarly grouping the results into the final result matrix.

In more than two dimensions, it is often advantageous for cache locality to group the dimensions recursively. For example, a three-dimensional FFT might first perform two-dimensional FFTs of each planar "slice" for each fixed _n_₁, and then perform the one-dimensional FFTs along the _n_₁ direction. More generally, an asymptotically optimal cache-oblivious algorithm consists of recursively dividing the dimensions into two groups (n₁, …, n_(d/2)) and (n_(d/2 + 1), …, n_(d)) that are transformed recursively (rounding if _d_ is not even) (see Frigo and Johnson, 2005).[51] Still, this remains a straightforward variation of the row-column algorithm that ultimately requires only a one-dimensional FFT algorithm as the base case, and still has O(_N_ log _N_) complexity. Yet another variation is to perform matrix transpositions in between transforming subsequent dimensions, so that the transforms operate on contiguous data; this is especially important for out-of-core and distributed memory situations where accessing non-contiguous data is extremely time-consuming.

There are other multidimensional FFT algorithms that are distinct from the row-column algorithm, although all of them have O(_N_ log _N_) complexity. Perhaps the simplest non-row-column FFT is the vector-radix FFT algorithm, which is a generalization of the ordinary Cooley–Tukey algorithm where one divides the transform dimensions by a vector R = (r₁, r₂, …, r_(d)) of radices at each step. (This may also have cache benefits.) The simplest case of vector-radix is where all of the radices are equal (e.g. vector-radix-2 divides _all_ of the dimensions by two), but this is not necessary. Vector radix with only a single non-unit radix at a time, i.e. R = (1, …, 1, r, 1, …, 1), is essentially a row-column algorithm. Other, more complicated, methods include polynomial transform algorithms due to Nussbaumer (1977),[52] which view the transform in terms of convolutions and polynomial products. See Duhamel and Vetterli (1990)[53] for more information and references.


Other generalizations

An O(_N_^(5/2)log _N_) generalization to spherical harmonics on the sphere _S_² with _N_² nodes was described by Mohlenkamp,[54] along with an algorithm conjectured (but not proven) to have O(_N_² log²(_N_)) complexity; Mohlenkamp also provides an implementation in the libftsh library.[55] A spherical-harmonic algorithm with O(_N_²log _N_) complexity is described by Rokhlin and Tygert.[56]

The fast folding algorithm is analogous to the FFT, except that it operates on a series of binned waveforms rather than a series of real or complex scalar values. Rotation (which in the FFT is multiplication by a complex phasor) is a circular shift of the component waveform.

Various groups have also published "FFT" algorithms for non-equispaced data, as reviewed in Potts _et al._ (2001).[57] Such algorithms do not strictly compute the DFT (which is only defined for equispaced data), but rather some approximation thereof (a non-uniform discrete Fourier transform, or NDFT, which itself is often computed only approximately). More generally there are various other methods of spectral estimation.


Applications

FFT's importance derives from the fact that in signal processing and image processing it has made working in frequency domain equally computationally feasible as working in temporal or spatial domain. Some of the important applications of FFT includes,[58][59]

-   Fast large integer and polynomial multiplication
-   Efficient matrix-vector multiplication for Toeplitz, circulant and other structured matrices
-   Filtering algorithms (see overlap-add and overlap-save methods)
-   Fast algorithms for discrete cosine or sine transforms (example, Fast DCT used for JPEG, MP3/MPEG encoding)
-   Fast Chebyshev approximation
-   Fast discrete Hartley transform
-   Solving difference equations
-   Computation of isotopic distributions.[60]


Research areas

-   BIG FFTS: With the explosion of big data in fields such as astronomy, the need for 512k FFTs has arisen for certain interferometry calculations. The data collected by projects such as WMAP and LIGO require FFTs of tens of billions of points. As this size does not fit into main memory, so called out-of-core FFTs are an active area of research.[61]
-   APPROXIMATE FFTS: For applications such as MRI, it is necessary to compute DFTs for nonuniformly spaced grid points and/or frequencies. Multipole based approaches can compute approximate quantities with factor of runtime increase.[62]
-   GROUP FFTS: The FFT may also be explained and interpreted using group representation theory that allows for further generalization. A function on any compact group, including non cyclic, has an expansion in terms of a basis of irreducible matrix elements. It remains active area of research to find efficient algorithm for performing this change of basis. Applications including efficient spherical harmonic expansion, analyzing certain Markov processes, robotics etc.[63]
-   QUANTUM FFTS: Shor's fast algorithm for integer factorization on a quantum computer has a subroutine to compute DFT of a binary vector. This is implemented as sequence of 1- or 2-bit quantum gates now known as quantum FFT, which is effectively the Cooley–Tukey FFT realized as a particular factorization of the Fourier matrix. Extension to these ideas is currently being explored.


Language reference

  Language        Command/Method   Pre-requisites
  --------------- ---------------- ----------------
  R               stats::fft(x)    None
  Octave/MATLAB   fft(x)           None
  Python          fft.fft(x)       numpy
  Mathematica     Fourier[x]       None
  Julia           fft(A [,dims])   FFTW


See also

FFT-related algorithms:

-   Cooley–Tukey FFT algorithm
-   Prime-factor FFT algorithm
-   Bruun's FFT algorithm
-   Rader's FFT algorithm
-   Bluestein's FFT algorithm
-   Goertzel algorithm – Computes individual terms of discrete Fourier transform

FFT implementations:

-   ALGLIB – C++ and C# library with real/complex FFT implementation.
-   FFTW "Fastest Fourier Transform in the West" – C library for the discrete Fourier transform (DFT) in one or more dimensions.
-   FFTS – The Fastest Fourier Transform in the South.
-   FFTPACK – another Fortran FFT library (public domain)
-   Math Kernel Library
-   cuFFT - FFT for GPU accelerated CUDA

Other links:

-   Overlap add/Overlap save – efficient convolution methods using FFT for long signals
-   Odlyzko–Schönhage algorithm applies the FFT to finite Dirichlet series.
-   Schönhage–Strassen algorithm - asymptotically fast multiplication algorithm for large integers
-   Butterfly diagram – a diagram used to describe FFTs.
-   Spectral music (involves application of FFT analysis to musical composition)
-   Spectrum analyzer – any of several devices that perform an FFT
-   Time series
-   Fast Walsh–Hadamard transform
-   Generalized distributive law
-   Multidimensional transform
-   Multidimensional discrete convolution
-   DFT matrix


References


Further reading

-   -   -   -   -   -   -   (NB. Contains extensive bibliography.)


External links

-   Fast Fourier Algorithm
-   _Fast Fourier Transforms_, Connexions online book edited by Charles Sidney Burrus, with chapters by Charles Sidney Burrus, Ivan Selesnick, Markus Pueschel, Matteo Frigo, and Steven G. Johnson (2008).
-   Links to FFT code and information online.
-   National Taiwan University – FFT
-   FFT programming in C++ — Cooley–Tukey algorithm.
-   Online documentation, links, book, and code.
-   Using FFT to construct aggregate probability distributions
-   Sri Welaratna, "Thirty years of FFT analyzers", _Sound and Vibration_ (January 1997, 30th anniversary issue). A historical review of hardware FFT devices.
-   FFT Basics and Case Study Using Multi-Instrument
-   FFT Textbook notes, PPTs, Videos at Holistic Numerical Methods Institute.
-   ALGLIB FFT Code GPL Licensed multilanguage (VBA, C++, Pascal, etc.) numerical analysis and data processing library.
-   MIT's sFFT MIT Sparse FFT algorithm and implementation.
-   VB6 FFT VB6 optimized library implementation with source code.
-   Fast Fourier transform illustrated Demo examples and FFT calculator.
-   Discrete Fourier Transform (Forward) A JavaScript implementation of FFTPACK code by Swarztrauber.
-   Fourier Transforms of Discrete Signals (Microlink IT College)
-   Interactive FFT Tutorial A visual interactive intro to Fourier transforms and FFT methods.

Category:FFT algorithms Category:Digital signal processing Category:Discrete transforms

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

[37]

[38]

[39]

[40]

[41]

[42]

[43]

[44]

[45]

[46]

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

[63]