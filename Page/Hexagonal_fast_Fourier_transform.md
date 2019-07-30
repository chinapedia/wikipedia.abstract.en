The HEXAGONAL FAST FOURIER TRANSFORM (HFFT) is a variant of the fast Fourier transform (FFT) that is developed to utilize the advantages of hexagonal sampling.


Background

It has been proven that the hexagonal grid serves as an optimal sampling lattice for isotropically band-limited two-dimensional signals and has a sampling efficiency which is 13.4% more when compared to the sampling efficiency obtained from rectangular sampling.[1][2] Several other advantages of hexagonal sampling include consistent connectivity, higher symmetry, greater angular resolution, and equidistant neighbouring pixels.[3][4] Sometimes, more than one of these advantages compound together, thereby increasing the efficiency by 50% in terms of computation and storage when compared to rectangular sampling. Despite of all these advantages of hexagonal sampling over the rectangular sampling, its application has been limited because of its inability to result in the orthogonal rows and columns that can be transformed independently as is done with rectangular samples. For this reason, an efficient FFT with a separable Fourier kernel has been developed by utilizing the so-called array set addressing (ASA) scheme and is termed hexagonal fast Fourier transform.[5]


Preliminaries

Array set addressing

Hex2RecASA.jpg The array set addressing (ASA) coordinate system has been proposed based on a simple fact that a hexagonal grid can be considered as a combination of two interleaved rectangular arrays.[6] From this, it is easy to address each individual array using familiar integer-valued row and column indices. Now, to select one among these two rectangular arrays, a single binary coordinate is used. From this, a full address for any point in the hexagonal grid can be uniquely represented by three coordinates.

(_a_, _r_, _c_) ∈ {0, 1} * _n_₁ * _n_₂
where the coordinates _a_, _r_ and _c_ represent the array, row and column respectively. The hexagonal lattice can be separated into rectangular arrays by considering alternate rows as one array and the remaining rows as the other. Figure 1 can be used to illustrate the process of array set addressing, where alternate rows of the hexagonally sampled data are mapped to 0-array and 1-array rectangular arrays.

Hexagonal discrete Fourier transform

The hexagonal discrete Fourier transform (HDFT) has been developed by Mersereau[7] and it has been converted to an ASA representation by Rummelt.[8] Let x(a, r, c) be a two-dimensional hexagonally sampled signal and let both arrays be of size nXm. Let, X(b, s, d) be the Fourier transform of _x._ The HDFT equation for the forward transform as shown in [9] is given by

_X_(_b_, _s_, _d_) = ∑_(_a_)∑_(_r_)∑_(_c_)_x_(_a_, _r_, _c_)_E_(.)
where

$$E(.) = exp[-j\pi(\frac{(a+2c)(b+2d)}{2m} + \frac{(a+2r)(b+2s)}{n})]$$
Note that the above equation is separable and hence can be expressed as

_X_(_b_, _s_, _d_) = _f_₀(_b_, _s_, _d_) + _W_(.)_f_₁(_b_, _s_, _d_)
where

$$W(.) = exp[-j\pi(\frac{b+2d}{2m} + \frac{b+2s}{n})]$$
and

$$g_{a}(b, r, d) = \sum_{c} x(a, r, c) exp(-j2\pi \frac{(c)(b+2d)}{2m} )$$

$$f_{a}(b, s, d) = \sum_{r} g_{a}(b, r, d) exp(-j2\pi\frac{(r)(b+2s)}{n})$$


Existing approaches

The linear transforms g_(a) and f_(a) are similar to the rectangular Fourier kernel where a linear transform is applied along each dimension of the 2-D rectangular data.[10] Note that each of these equations, discussed above, is a combination of four rectangular arrays that serve as precursors to the HDFT. Two, out of those four rectangular g_(a) terms contribute to the sub-array of HFFT. Now, by switching the binary coordinate, we have four different forms of equations. In [11], the three out of those four expressions have been evaluated using while one expression is computed using any correct and applicable FFT algorithm.

$$g_{a}(0, r, d) = \sum_{c} x(a, r, c) exp(-j2\pi \frac{(c)(d)}{m})$$

$$g_{a}(1, r, d) = \sum_{c} x(a, r, c) exp(-j2\pi \frac{(c)(2d+1)}{2m})$$

$$f_{a}(0, s, d) = \sum_{r} g_{a}(a, r, d) exp(-j2\pi \frac{(r)(2s)}{n})$$

$$f_{a}(1, s, d) = \sum_{r} g_{a}(a, r, d) exp(-j2\pi \frac{(r)(2s+1)}{n})$$

Looking at the second expression, g_(a)(1, r, d), we see that it is nothing more than a standard discrete Fourier transform (DFT) with a constant offset along the rows of rectangular sub-arrays of a hexagonally-sampled image x(a, r, c).[12] This expression is nothing more than a circular rotation of the DFT. Note that the shift must happen in integer number of samples for the property to hold. This way, the function g_(a) can be computed using the standard DFT, in same number of operations, without introducing an NST.

If we have a look at 0-array f_(a), the expression will always be symmetric about half its spatial period. Because of this, it is enough to compute only half of it. We find that this expression is the standard DFT of the columns of g_(a), which is decimated by a factor of 2 and then is duplicated to span the space of _r_ for the identical second period of the complex exponential.[13] Mathematically,

$$X_{even}[k] = \sum_{n=0}^{N-1} x[n]e^{-\tfrac{2j\pi}{N}2kn}$$

$$= \sum_{n=0}^{\tfrac{N}{2}-1} x[n]e^{-\tfrac{2j\pi}{N/2}kn} + \sum_{n=\tfrac{N}{2}}^{N-1} x[n]e^{-\tfrac{2j\pi}{N/2}kn}$$

$$= \sum_{n=0}^{\tfrac{N}{2}-1} x[n]e^{-\tfrac{2j\pi}{N/2}kn} + \sum_{n=0}^{\tfrac{N}{2}-1} x[n+\frac{N}{2}]e^{-\tfrac{2j\pi}{N/2}kn}$$

$$= \sum_{n=0}^{\tfrac{N}{2}-1} (x[n]+x[n+\tfrac{N}{2}])e^{-\tfrac{2j\pi}{N/2}kn}$$

The expression for the 1-array f_(a) is equivalent to the 0-array expression with a shift of one sample. Hence, the 1-array expression can be expressed as columns of the DFT of g_(a) decimated by a factor of two, starting with second sample providing a constant offset needed by 1-array, and then doubled in space to span the range of _s_. Thus, the method developed by James B. Birdsong and Nicholas I. Rummelt in [14] is able to successfully compute the HFFT using the standard FFT routines unlike the previous work in [15].


References

Category:Multidimensional signal processing

[1] D. P. Petersen and D. Middleton, Dec. 1962, "Sampling and reconstruction of wave-number-limited functions in n-dimensional Euclidean spaces", Inf. Control, vol. 5, no. 4, pp. 279–323

[2] R. M. Mersereau, June 1979, "The Processing of Hexagonally Sampled Two-Dimensional Signals", Proceedings of the IEEE, vol. 67, no. 6, pp. 930–949

[3] X. He and W. Jia, 2005, "Hexagonal structure for intelligent vision", in Proc. 1st Int. Conf. Information and Communication Technologies, pp. 52–64

[4] W. E. Snyder, 1999, H. Qi, and W. Sander, "A coordinate system for hexagonal pixels", in Proc. SPIE Medical Imaging: Image Processing, vol. 3661, pp. 716–727

[5]

[6] Nicholas I. Rummelt, 2010, Array Set Addressing: Enabling Efficient Hexagonally Sampled Image Processing, Ph.D. thesis, University of Florida

[7]

[8]

[9]

[10] James B. Birdsong, Nicholas I. Rummelt, 2016 IEEE International Conference on Image Processing (ICIP), pp. 1809–1812, doi: 10.1109/ICIP.2016.7532670

[11]

[12]

[13]

[14]

[15]