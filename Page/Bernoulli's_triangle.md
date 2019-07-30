BERNOULLI'S TRIANGLE is an array of partial sums of the binomial coefficients. For any non-negative integer _n_ and for any integer _k_ included between 0 and _n_, the component in row _n_ and column _k_ is given by:

$$\sum_{p=0}^k {n \choose p},$$

i.e., the sum of the first _k_ _n_th-order binomial coefficients.[1] The first rows of Bernoulli's triangle are:



\begin{array}{cc|cccccc} & k & 0 & 1 & 2 & 3 & 4 & 5\\ n & & \\ \hline 0 & & 1 \\ 1 & & 1 & 2 \\ 2 & & 1 & 3 & 4 \\ 3 & & 1 & 4 & 7 & 8 \\ 4 & & 1 & 5 & 11 & 15 & 16 \\ 5 & & 1 & 6 & 16 & 26 & 31 & 32 \end{array}

Similarly to Pascal's triangle, each component of Bernoulli's triangle is the sum of two components of the previous row, except for the last number of each row, which is double the last number of the previous row. For example, if B_(n, k) denotes the component in row _n_ and column _k_, then:

$$\begin{align}
B_{n,k}=&B_{n-1,k}+B_{n-1,k-1} &\mbox{  if }&k<n\\
B_{n,k}=&         2B_{n-1,k-1} &\mbox{  if }&k=n
\end{align}$$

As in Pascal's triangle and other similarly constructed triangles,[2] sums of components along diagonal paths in Bernoulli's triangle result in the Fibonacci numbers.[3]


References


External links

-   The sequence of numbers formed by Bernoulli's triangle on the On-Line Encyclopedia of Integer Sequences: https://oeis.org/A008949.


Bernoulli's triangle

Category:Factorial and binomial topics Category:Triangles of numbers

[1] On-Line Encyclopedia of Integer Sequences

[2] Hoggatt, Jr, V. E., A new angle on Pascal's triangle, _Fibonacci Quarterly_ 6(4) (1968) 221–234; Hoggatt, Jr, V. E., Convolution triangles for generalized Fibonacci numbers, _Fibonacci Quarterly_ 8(2) (1970) 158–171

[3] Neiter, D. & Proag, A., Links Between Sums Over Paths in Bernoulli's Triangles and the Fibonacci Numbers, _Journal of Integer Sequences_, 19 (2016) 16.8.3.