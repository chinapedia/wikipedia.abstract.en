The VECTOR-RADIX FFT ALGORITHM, is a multidimensional fast Fourier transform (FFT) algorithm, which is a generalization of the ordinary Cooley–Tukey FFT algorithm that divides the transform dimensions by arbitrary radices. It breaks a multidimensional (MD) discrete Fourier transform (DFT) down into successively smaller MD DFTs until, ultimately, only trivial MD DFTs need to be evaluated.[1]

The most common multidimensional FFT algorithm is the row-column algorithm, which means transforming the array first in one index and then in the other, see more in FFT. Then a radix-2 direct 2-D FFT has been developed,[2] and it can eliminate 25% of the multiplies as compared to the conventional row-column approach. And this algorithm has been extended to rectangular arrays and arbitrary radices,[3] which is the general vector-radix algorithm.

Vector-radix FFT algorithm can reduce the number of complex multiplications significantly, compared to row-vector algorithm. For example, for a N^(M) element matrix (M dimensions, and size N on each dimension), the number of complex multiples of vector-radix FFT algorithm for radix-2 is $\frac{2^M -1}{2^M} N^M \log_2 N$, meanwhile, for row-column algorithm, it is $\frac{M N^M} 2 \log_2 N$. And generally, even larger savings in multiplies are obtained when this algorithm is operated on larger radices and on higher dimensional arrays.[4]

Overall, the vector-radix algorithm significantly reduces the structural complexity of the traditional DFT having a better indexing scheme, at the expense of a slight increase in arithmetic operations. So this algorithm is widely used for many applications in engineering, science, and mathematics, for example, implementations in image processing,[5] and high speed FFT processor designing.[6]


2-D DIT case

As with Cooley–Tukey FFT algorithm, two dimensional vector-radix FFT is derived by decomposing the regular 2-D DFT into sums of smaller DFT's multiplied by "twiddle" factor.

A decimation-in-time (DIT) algorithm means the decomposition is based on time domain x, see more in Cooley–Tukey FFT algorithm.

We suppose the 2-D DFT

$$X(k_1,k_2) = \sum_{n_1=0}^{N_1-1} \sum_{n_2=0}^{N_2-1}  x[n_1, n_2] \cdot W_{N_1}^{k_1 n_1} W_{N_2}^{k_2 n_2},$$
where k₁ = 0, …, N₁ − 1,and k₂ = 0, …, N₂ − 1, and x[n₁, n₂] is a N₁ × N₂ matrix, and W_(N) = exp ( − j2π/N).

For simplicity, let us assume that N₁ = N₂ = N, and radix-(r × r)(N/r are integers).

Using the change of variables:

-   n_(i) = rp_(i) + q_(i), where p_(i) = 0, …, (N/r) − 1; q_(i) = 0, …, r − 1;
-   k_(i) = u_(i) + v_(i)N/r, where u_(i) = 0, …, (N/r) − 1; v_(i) = 0, …, r − 1;

where i = 1 or 2, then the two dimensional DFT can be written as:[7]

$$X(u_1+v_1 N/r,u_2+v_2 N/r)=\sum_{q_1=0}^{r-1} \sum_{q_2=0}^{r-1} \left[ \sum_{p_1=0}^{N/r-1} \sum_{p_2=0}^{N/r-1} x[rp_1+q_1, rp_1+q_1] W_{N/r}^{p_1 u_1} W_{N/r}^{p_2 u_2} \right] \cdot W_N^{q_1 u_1+q_2 u_2} W_r^{q_1 v_1} W_r^{q_2 v_2},$$

2-D_DIT-FFT-butterfly.png

The equation above defines the basic structure of the 2-D DIT radix-(r × r) "butterfly". (See 1-D "butterfly" in Cooley–Tukey FFT algorithm)

When r = 2, the equation can be broken into four summations: one over those samples of x for which both n₁ and n₂ are even, one for which n₁ is even and n₂ is odd, one of which n₁ is odd and n₂ is even, and one for which both n₁ and n₂ are odd,[8] and this leads to:

_X_(_k_₁, _k_₂) = _S_₀₀(_k_₁, _k_₂) + _S_₀₁(_k_₁, _k_₂)_W__(_N_)^(_k_₂) + _S_₁₀(_k_₁, _k_₂)_W__(_N_)^(_k_₁) + _S_₁₁(_k_₁, _k_₂)_W__(_N_)^(_k_₁ + _k_₂),

where $S_{ij}(k_1,k_2)=\sum_{n_1=0}^{N/2-1} \sum_{n_2=0}^{N/2-1} x[2 n_1 + i, 2 n_2 + j] \cdot W_{N/2}^{n_1 k_1} W_{N/2}^{n_2 k_2}.$


2-D DIF case

Similarly, a decimation-in-frequency (DIF, also called the Sande–Tukey algorithm) algorithm means the decomposition is based on frequency domain X, see more in Cooley–Tukey FFT algorithm.

Using the change of variables:

-   n_(i) = p_(i) + q_(i)N/r, where p_(i) = 0, …, (N/r) − 1; q_(i) = 0, …, r − 1;
-   k_(i) = ru_(i) + v_(i), where u_(i) = 0, …, (N/r) − 1; v_(i) = 0, …, r − 1;

where i = 1 or 2, and the DFT equation can be written as:[9]

$$X(r u_1+v_1,r u_2+v_2)=\sum_{p_1=0}^{N/r-1} \sum_{p_2=0}^{N/r-1} \left[ \sum_{q_1=0}^{r-1} \sum_{q_2=0}^{r-1} x[p_1+q_1 N/r, p_1+q_1 N/r] W_{r}^{q_1 v_1} W_{r}^{q_2 v_2} \right] \cdot W_{N}^{p_1 v_1+p_2 v_2} W_{N/r}^{p_1 u_1} W_{N/r}^{p_2 u_2},$$


Other approaches

The split-radix FFT algorithm has been proved to be a useful method for 1-D DFT. And this method has been applied to the vector-radix FFT to obtain a split vector-radix FFT.[10][11]

In conventional 2-D vector-radix algorithm, we decompose the indices k₁, k₂ into 4 groups:



\begin{array}{lcl} X(2 k_1, 2 k_2) & : & \text{even-even} \\ X(2 k_1, 2 k_2 +1) & : & \text{even-odd} \\ X(2 k_1 +1, 2 k_2) & : & \text{odd-even} \\ X(2 k_1+1, 2 k_2+1) & : & \text{odd-odd} \end{array}

By the split vector-radix algorithm, the first three groups remain unchanged, the fourth odd-odd group is further decomposed into another four sub-groups, and seven groups in total:



\begin{array}{lcl} X(2 k_1, 2 k_2) & : & \text{even-even} \\ X(2 k_1, 2 k_2 +1) & : & \text{even-odd} \\ X(2 k_1 +1, 2 k_2) & : & \text{odd-even} \\ X(4 k_1+1, 4 k_2+1) & : & \text{odd-odd} \\ X(4 k_1+1, 4 k_2+3) & : & \text{odd-odd} \\ X(4 k_1+3, 4 k_2+1) & : & \text{odd-odd} \\ X(4 k_1+3, 4 k_2+3) & : & \text{odd-odd} \end{array}

That means the fourth term in 2-D DIT radix-(2 × 2) equation, S₁₁(k₁, k₂)W_(N)^(k₁ + k₂) becomes:[12]

    A₁₁(k₁, k₂)W_(N)^(k₁ + k₂) + A₁₃(k₁, k₂)W_(N)^(k₁ + 3k₂) + A₃₁(k₁, k₂)W_(N)^(3k₁ + k₂) + A₃₃(k₁, k₂)W_(N)^(3(k₁ + k₂)),

where $A_{ij}(k_1,k_2)=\sum_{n_1=0}^{N/4-1} \sum_{n_2=0}^{N/4-1} x[4 n_1 + i, 4 n_2 + j] \cdot W_{N/4}^{n_1 k_1} W_{N/4}^{n_2 k_2}$

The 2-D N by N DFT is then obtained by successive use of the above decomposition, up to the last stage.

It has been shown that the split vector radix algorithm has saved about 30% of the complex multiplications and about the same number of the complex additions for typical 1024 × 1024 array, compared with the vector-radix algorithm.[13]


References

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