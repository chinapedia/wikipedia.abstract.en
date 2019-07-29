ALGORITHMS FOR CALCULATING VARIANCE play a major role in computational statistics. A key difficulty in the design of good algorithms for this problem is that formulas for the variance may involve sums of squares, which can lead to numerical instability as well as to arithmetic overflow when dealing with large values.


Naïve algorithm

A formula for calculating the variance of an entire population of size _N_ is:

$$\sigma^2 = \overline{(x^2)} - \bar x^2 = \displaystyle\frac {\sum_{i=1}^N x_i^2 - (\sum_{i=1}^N x_i)^2/N}{N}. \!$$

Using Bessel's correction to calculate an unbiased estimate of the population variance from a finite sample of _n_ observations, the formula is:

$$s^2 = \left(\frac {\sum_{i=1}^n x_i^2} n - \left( \frac {\sum_{i=1}^n x_i} n \right)^2\right) \cdot \frac {n}{n-1}. \!$$

Therefore, a naive algorithm to calculate the estimated variance is given by the following:

-   Let
-   For each datum :
    -   -   -

-   (SumSq − (Sum × Sum) / n) / (n − 1)}}

This algorithm can easily be adapted to compute the variance of a finite population: simply divide by _N_ instead of _n_ − 1 on the last line.

Because and can be very similar numbers, cancellation can lead to the precision of the result to be much less than the inherent precision of the floating-point arithmetic used to perform the computation. Thus this algorithm should not be used in practice,[1][2] and several alternate, numerically stable, algorithms have been proposed.[3] This is particularly bad if the standard deviation is small relative to the mean. However, the algorithm can be improved by adopting the method of the assumed mean.

Computing shifted data

We can use a property of the variance to avoid the catastrophic cancellation in this formula, namely the variance is invariant with respect to changes in a location parameter

Var (_X_ − _K_) = Var (_X_).

with K any constant, which leads to the new formula

$$s^2 = \displaystyle\frac {\sum_{i=1}^n (x_i-K)^2 - (\sum_{i=1}^n (x_i-K))^2/n}{n-1}. \!$$

the closer K is to the mean value the more accurate the result will be, but just choosing a value inside the samples range will guarantee the desired stability. If the values (x_(i) − K) are small then there are no problems with the sum of its squares, on the contrary, if they are large it necessarily means that the variance is large as well. In any case the second term in the formula is always smaller than the first one therefore no cancellation may occur.[4]

If we take just the first sample as K the algorithm can be written in Python programming language as

    def shifted_data_variance(data):
       if len(data) < 2:
          return 0.0
       K = data[0]
       n = Ex = Ex2 = 0.0
       for x in data:
          n = n + 1
          Ex += x - K
          Ex2 += (x - K) * (x - K)
       variance = (Ex2 - (Ex * Ex)/n)/(n - 1)
       # use n instead of (n-1) if want to compute the exact variance of the given data
       # use (n-1) if data are samples of a larger population
       return variance

this formula facilitates as well the incremental computation, that can be expressed as

    K = n = Ex = Ex2 = 0.0

    def add_variable(x):
        if (n == 0):
          K = x
        n = n + 1
        Ex += x - K
        Ex2 += (x - K) * (x - K)

    def remove_variable(x):
        n = n - 1
        Ex -= (x - K)
        Ex2 -= (x - K) * (x - K)

    def get_meanvalue():
        return K + Ex / n

    def get_variance():
        return (Ex2 - (Ex*Ex)/n) / (n-1)


Two-pass algorithm

An alternative approach, using a different formula for the variance, first computes the sample mean,

$$\bar x = \frac {\sum_{j=1}^n x_j} n,$$
and then computes the sum of the squares of the differences from the mean,

$$\text{sample variance} = s^2 = \displaystyle\frac {\sum_{i=1}^n (x_i - \bar x)^2}{n-1}, \!$$
where _s_ is the standard deviation. This is given by the following pseudocode:

    def two_pass_variance(data):
        n = sum1 = sum2 = 0

        for x in data:
            n += 1
            sum1 += x

        mean = sum1 / n

        for x in data:
            sum2 += (x - mean)*(x - mean)

        variance = sum2 / (n - 1)
        return variance

This algorithm is numerically stable if _n_ is small.[5][6] However, the results of both of these simple algorithms ("naïve" and "two-pass") can depend inordinately on the ordering of the data and can give poor results for very large data sets due to repeated roundoff error in the accumulation of the sums. Techniques such as compensated summation can be used to combat this error to a degree.


Welford's online algorithm

It is often useful to be able to compute the variance in a single pass, inspecting each value x_(i) only once; for example, when the data are being collected without enough storage to keep all the values, or when costs of memory access dominate those of computation. For such an online algorithm, a recurrence relation is required between quantities from which the required statistics can be calculated in a numerically stable fashion.

The following formulas can be used to update the mean and (estimated) variance of the sequence, for an additional element _x__(_n_). Here, _(_n_) denotes the sample mean of the first _n_ samples (_x_₁, ..., _x_(n)_), _s_ their sample variance, and _σ_ their population variance.

$$\bar x_n = \frac{(n-1) \, \bar x_{n-1} + x_n}{n} = \bar x_{n-1} + \frac{x_n - \bar x_{n-1}}{n} \!$$

$$s^2_n = \frac{n-2}{n-1} \, s^2_{n-1} + \frac{(x_n - \bar x_{n-1})^2}{n} = s^2_{n-1} + \frac{(x_n - \bar x_{n-1})^2}{n} - \frac{s^2_{n-1}}{n-1}, \quad n>1$$

$$\sigma^2_n = \frac{(n-1) \, \sigma^2_{n-1} + (x_n - \bar x_{n-1})(x_n - \bar x_n)}{n} = \sigma^2_{n-1} + \frac{(x_n - \bar x_{n-1})(x_n - \bar x_n) - \sigma^2_{n-1}}{n}.$$

These formulas suffer from numerical instability, as they repeatedly subtract a small number from a big number which scales with _n_. A better quantity for updating is the sum of squares of differences from the current mean, $\textstyle\sum_{i=1}^n (x_i - \bar x_n)^2$, here denoted M_(2, n):



\begin{align} M_{2,n} & = M_{2,n-1} + (x_n - \bar x_{n-1})(x_n - \bar x_n) \\[4pt] s^2_n & = \frac{M_{2,n}}{n-1} \\[4pt] \sigma^2_n & = \frac{M_{2,n}}{n} \end{align}

This algorithm was found by Welford,[7][8] and it has been thoroughly analyzed.[9][10] It is also common to denote M_(k) = x̄_(k) and S_(k) = M_(2, k).[11]

An example Python implementation for Welford's algorithm is given below.

    # for a new value newValue, compute the new count, new mean, the new M2.
    # mean accumulates the mean of the entire dataset
    # M2 aggregates the squared distance from the mean
    # count aggregates the number of samples seen so far
    def update(existingAggregate, newValue):
        (count, mean, M2) = existingAggregate
        count += 1
        delta = newValue - mean
        mean += delta / count
        delta2 = newValue - mean
        M2 += delta * delta2

        return (count, mean, M2)

    # retrieve the mean, variance and sample variance from an aggregate
    def finalize(existingAggregate):
        (count, mean, M2) = existingAggregate
        (mean, variance, sampleVariance) = (mean, M2/count, M2/(count - 1))
        if count < 2:
            return float('nan')
        else:
            return (mean, variance, sampleVariance)

This algorithm is much less prone to loss of precision due to catastrophic cancellation, but might not be as efficient because of the division operation inside the loop. For a particularly robust two-pass algorithm for computing the variance, one can first compute and subtract an estimate of the mean, and then use this algorithm on the residuals.

The parallel algorithm below illustrates how to merge multiple sets of statistics calculated online.


Weighted incremental algorithm

The algorithm can be extended to handle unequal sample weights, replacing the simple counter _n_ with the sum of weights seen so far. West (1979)[12] suggests this incremental algorithm:

    def weighted_incremental_variance(dataWeightPairs):
        wSum = wSum2 = mean = S = 0

        for x, w in dataWeightPairs:  # Alternatively "for x, w in zip(data, weights):"
            wSum = wSum + w
            wSum2 = wSum2 + w*w
            meanOld = mean
            mean = meanOld + (w / wSum) * (x - meanOld)
            S = S + w * (x - meanOld) * (x - mean)

        population_variance = S / wSum
        # Bessel's correction for weighted samples
        # Frequency weights
        sample_frequency_variance = S / (wSum - 1)
        # Reliability weights
        sample_reliability_variance = S / (wSum - wSum2/wSum)


Parallel algorithm

Chan et al.[13] note that Welford's online algorithm detailed above is a special case of an algorithm that works for any partition of the sample X into sets X_(A), X_(B):

_δ_​ = _x̄__(_B_) − _x̄__(_A_)

$$\bar x_X = \bar x_A + \delta\cdot\frac{n_B}{n_X}$$

$$M_{2,X} = M_{2,A} + M_{2,B} + \delta^2\cdot\frac{n_A n_B}{n_X}$$
. This may be useful when, for example, multiple processing units may be assigned to discrete parts of the input.

Chan's method for estimating the mean is numerically unstable when n_(A) ≈ n_(B) and both are large, because the numerical error in x̄_(B) − x̄_(A) is not scaled down in the way that it is in the n_(B) = 1 case. In such cases, prefer $\bar x_X = \frac{n_A \bar x_A + n_B \bar x_B}{n_A + n_B}$.

    def parallel_variance(avg_a, count_a, var_a, avg_b, count_b, var_b):
        delta = avg_b - avg_a
        m_a = var_a * (count_a - 1)
        m_b = var_b * (count_b - 1)
        M2 = m_a + m_b + delta ** 2 * count_a * count_b / (count_a + count_b)
        return M2 / (count_a + count_b - 1)

This can be generalized to allow parallelization with AVX, with GPUs, and computer clusters, and to covariance.[14]


Example

Assume that all floating point operations use standard IEEE 754 double-precision arithmetic. Consider the sample (4, 7, 13, 16) from an infinite population. Based on this sample, the estimated population mean is 10, and the unbiased estimate of population variance is 30. Both the naïve algorithm and two-pass algorithm compute these values correctly.

Next consider the sample (, , , ), which gives rise to the same estimated variance as the first sample. The two-pass algorithm computes this variance estimate correctly, but the naïve algorithm returns 29.333333333333332 instead of 30.

While this loss of precision may be tolerable and viewed as a minor flaw of the naïve algorithm, further increasing the offset makes the error catastrophic. Consider the sample (, , , ). Again the estimated population variance of 30 is computed correctly by the two-pass algorithm, but the naïve algorithm now computes it as −170.66666666666666. This is a serious problem with naïve algorithm and is due to catastrophic cancellation in the subtraction of two similar numbers at the final stage of the algorithm.


Higher-order statistics

Terriberry[15] extends Chan's formulae to calculating the third and fourth central moments, needed for example when estimating skewness and kurtosis:

$$\begin{align}
M_{3,X} = M_{3,A} + M_{3,B} & {} + \delta^3\frac{n_A n_B (n_A - n_B)}{n_X^2} + 3\delta\frac{n_AM_{2,B} - n_BM_{2,A}}{n_X} \\[6pt]
M_{4,X} = M_{4,A} + M_{4,B} & {} + \delta^4\frac{n_A n_B \left(n_A^2 - n_A n_B + n_B^2\right)}{n_X^3} \\[6pt]
                    & {} + 6\delta^2\frac{n_A^2 M_{2,B} + n_B^2 M_{2,A}}{n_X^2} + 4\delta\frac{n_AM_{3,B} - n_BM_{3,A}}{n_X}
\end{align}$$

Here the M_(k) are again the sums of powers of differences from the mean $\sum(x - \overline{x})^k$, giving



\begin{align} & \text{skewness} = g_1 = \frac{\sqrt{n} M_3}{M_2^{3/2}}, \\[4pt] & \text{kurtosis} = g_2 = \frac{n M_4}{M_2^2}-3. \end{align}

For the incremental case (i.e., B = {x}), this simplifies to:



\begin{align} \delta & = x - m \\[5pt] m' & = m + \frac{\delta}{n} \\[5pt] M_2' & = M_2 + \delta^2 \frac{n-1}{n} \\[5pt] M_3' & = M_3 + \delta^3 \frac{ (n - 1) (n - 2)}{n^2} - \frac{3\delta M_2}{n} \\[5pt] M_4' & = M_4 + \frac{\delta^4 (n - 1) (n^2 - 3n + 3)}{n^3} + \frac{6\delta^2 M_2}{n^2} - \frac{4\delta M_3}{n} \end{align}

By preserving the value δ/n, only one division operation is needed and the higher-order statistics can thus be calculated for little incremental cost.

An example of the online algorithm for kurtosis implemented as described is:

    def online_kurtosis(data):
        n = mean = M2 = M3 = M4 = 0

        for x in data:
            n1 = n
            n = n + 1
            delta = x - mean
            delta_n = delta / n
            delta_n2 = delta_n * delta_n
            term1 = delta * delta_n * n1
            mean = mean + delta_n
            M4 = M4 + term1 * delta_n2 * (n*n - 3*n + 3) + 6 * delta_n2 * M2 - 4 * delta_n * M3
            M3 = M3 + term1 * delta_n * (n - 2) - 3 * delta_n * M2
            M2 = M2 + term1

        # Note, you may also calculate variance using M2, and skewness using M3
        kurtosis = (n*M4) / (M2*M2) - 3
        return kurtosis

Pébaÿ[16] further extends these results to arbitrary-order central moments, for the incremental and the pairwise cases, and subsequently Pébaÿ et al.[17] for weighted and compound moments. One can also find there similar formulas for covariance.

Choi and Sweetman[18] offer two alternative methods to compute the skewness and kurtosis, each of which can save substantial computer memory requirements and CPU time in certain applications. The first approach is to compute the statistical moments by separating the data into bins and then computing the moments from the geometry of the resulting histogram, which effectively becomes a one-pass algorithm for higher moments. One benefit is that the statistical moment calculations can be carried out to arbitrary accuracy such that the computations can be tuned to the precision of, e.g., the data storage format or the original measurement hardware. A relative histogram of a random variable can be constructed in the conventional way: the range of potential values is divided into bins and the number of occurrences within each bin are counted and plotted such that the area of each rectangle equals the portion of the sample values within that bin:

    $H(x_k)=\frac{h(x_k)}{A}$

where h(x_(k)) and H(x_(k)) represent the frequency and the relative frequency at bin x_(k) and $A= \sum_{k=1}^K h(x_k) \,\Delta x_k$ is the total area of the histogram. After this normalization, the n raw moments and central moments of x(t) can be calculated from the relative histogram:



m_n^{(h)} = \sum_{k=1}^{K}  x_k^n H(x_k) \, \Delta x_k
           = \frac{1}{A} \sum_{k=1}^K x_k^n h(x_k) \, \Delta x_k



\theta_n^{(h)}= \sum_{k=1}^{K} \Big(x_k-m_1^{(h)}\Big)^n \, H(x_k) \, \Delta x_k
              = \frac{1}{A} \sum_{k=1}^{K} \Big(x_k-m_1^{(h)}\Big)^n h(x_k) \, \Delta x_k

where the superscript ^((h)) indicates the moments are calculated from the histogram. For constant bin width Δx_(k) = Δx these two expressions can be simplified using I = A/Δx:



m_n^{(h)}= \frac{1}{I} \sum_{k=1}^K x_k^n \, h(x_k)



\theta_n^{(h)}= \frac{1}{I} \sum_{k=1}^K \Big(x_k-m_1^{(h)}\Big)^n h(x_k)

The second approach from Choi and Sweetman[19] is an analytical methodology to combine statistical moments from individual segments of a time-history such that the resulting overall moments are those of the complete time-history. This methodology could be used for parallel computation of statistical moments with subsequent combination of those moments, or for combination of statistical moments computed at sequential times.

If Q sets of statistical moments are known: (γ_(0, q), μ_(q), σ_(q)², α_(3, q), α_(4, q))  for q = 1, 2, …, Q, then each γ_(n) can be expressed in terms of the equivalent n raw moments:



\gamma_{n,q}= m_{n,q} \gamma_{0,q} \qquad \quad \textrm{for} \quad n=1,2,3,4 \quad \text{ and } \quad q = 1,2, \dots ,Q

where γ_(0, q) is generally taken to be the duration of the q^(th) time-history, or the number of points if Δt is constant.

The benefit of expressing the statistical moments in terms of γ is that the Q sets can be combined by addition, and there is no upper limit on the value of Q.



\gamma_{n,c}= \sum_{q=1}^Q \gamma_{n,q} \quad \quad \text{for } n=0,1,2,3,4

where the subscript _(c) represents the concatenated time-history or combined γ. These combined values of γ can then be inversely transformed into raw moments representing the complete concatenated time-history



m_{n,c}=\frac{\gamma_{n,c}}{\gamma_{0,c}} \quad \text{for } n=1,2,3,4

Known relationships between the raw moments (m_(n)) and the central moments (θ_(n) = E [(x − μ)^(n)])) are then used to compute the central moments of the concatenated time-history. Finally, the statistical moments of the concatenated history are computed from the central moments:



\mu_c=m_{1,c}
\qquad \sigma^2_c=\theta_{2,c}
\qquad \alpha_{3,c}=\frac{\theta_{3,c}}{\sigma_c^3}
\qquad \alpha_{4,c}={\frac{\theta_{4,c}}{\sigma_c^4}}-3


Covariance

Very similar algorithms can be used to compute the covariance.

Naïve algorithm

The naïve algorithm is:

$$\operatorname{Cov}(X,Y) = \displaystyle\frac {\sum_{i=1}^n x_i y_i - (\sum_{i=1}^n x_i)(\sum_{i=1}^n y_i)/n}{n}. \!$$

For the algorithm above, one could use the following Python code:

    def naive_covariance(data1, data2):
        n = len(data1)
        sum12 = 0
        sum1 = sum(data1)
        sum2 = sum(data2)

        for i1, i2 in zip(data1, data2):
            sum12 += i1*i2

        covariance = (sum12 - sum1*sum2 / n) / n
        return covariance

With estimate of the mean

As for the variance, the covariance of two random variables is also shift-invariant, so given any two constant values k_(x) and k_(y), it can be written:

$$\operatorname{Cov}(X,Y) = \operatorname{Cov}(X-k_x,Y-k_y) = \displaystyle\frac {\sum_{i=1}^n (x_i-k_x) (y_i-k_y) - (\sum_{i=1}^n (x_i-k_x))(\sum_{i=1}^n (y_i-k_y))/n}{n}. \!$$

and again choosing a value inside the range of values will stabilize the formula against catastrophic cancellation as well as make it more robust against big sums. Taking the first value of each data set, the algorithm can be written as:

    def shifted_data_covariance(dataX, dataY):
       n = len(dataX)
       if (n < 2):
         return 0
       kx = dataX[0]
       ky = dataY[0]
       Ex = Ey = Exy = 0
       for ix, iy in zip(dataX, dataY):
          Ex += ix - kx
          Ey += iy - ky
          Exy += (ix - kx) * (iy - ky)
       return (Exy - Ex * Ey / n) / n

Two-pass

The two-pass algorithm first computes the sample means, and then the covariance:

$$\bar x = \displaystyle \sum_{i=1}^n x_i/n$$

$$\bar y = \displaystyle \sum_{i=1}^n y_i/n$$

$$\operatorname{Cov}(X,Y) = \displaystyle\frac {\sum_{i=1}^n (x_i - \bar x)(y_i - \bar y)}{n}. \!$$

The two-pass algorithm may be written as:

    def two_pass_covariance(data1, data2):
        n = len(data1)

        mean1 = sum(data1) / n
        mean2 = sum(data2) / n

        covariance = 0

        for i1, i2 in zip(data1, data2):
            a = i1 - mean1
            b = i2 - mean2
            covariance += a*b / n
        return covariance

A slightly more accurate compensated version performs the full naive algorithm on the residuals. The final sums $\textstyle\sum x_i$ and $\textstyle\sum y_i$ _should_ be zero, but the second pass compensates for any small error.

Online

A stable one-pass algorithm exists, similar to the online algorithm for computing the variance, that computes co-moment $\textstyle C_n = \sum_{i=1}^n (x_i - \bar x_n)(y_i - \bar y_n)$:

$$\begin{alignat}{2}
\bar x_n &= \bar x_{n-1} &\,+\,& \frac{x_n - \bar x_{n-1}}{n} \\[5pt]
\bar y_n &= \bar y_{n-1} &\,+\,& \frac{y_n - \bar y_{n-1}}{n} \\[5pt]
C_n      &= C_{n-1}      &\,+\,& (x_n - \bar x_n)(y_n - \bar y_{n-1}) \\[5pt]
         &= C_{n-1}      &\,+\,& (x_n - \bar x_{n-1})(y_n - \bar y_n)
\end{alignat}$$
The apparent asymmetry in that last equation is due to the fact that $\textstyle (x_n - \bar x_n) = \frac{n-1}{n}(x_n - \bar x_{n-1})$, so both update terms are equal to $\textstyle \frac{n-1}{n}(x_n - \bar x_{n-1})(y_n - \bar y_{n-1})$. Even greater accuracy can be achieved by first computing the means, then using the stable one-pass algorithm on the residuals.

Thus we can compute the covariance as

$$\begin{align}
\operatorname{Cov}_N(X,Y) = \frac{C_N}{N} &= \frac{\operatorname{Cov}_{N-1}(X,Y)\cdot(N-1) + (x_n - \bar x_n)(y_n - \bar y_{n-1})}{N}\\
   &= \frac{\operatorname{Cov}_{N-1}(X,Y)\cdot(N-1) + (x_n - \bar x_{n-1})(y_n - \bar y_n)}{N}\\
   &= \frac{\operatorname{Cov}_{N-1}(X,Y)\cdot(N-1) + \frac{N-1}{N}(x_n - \bar x_{n-1})(y_n - \bar y_{n-1})}{N}\\
   &= \frac{\operatorname{Cov}_{N-1}(X,Y)\cdot(N-1) + \frac{N}{N-1}(x_n - \bar x_{n})(y_n - \bar y_{n})}{N}.
\end{align}$$

    def online_covariance(data1, data2):
        meanx = meany = C = n = 0
        for x, y in zip(data1, data2):
            n += 1
            dx = x - meanx
            meanx += dx / n
            meany += (y - meany) / n
            C += dx * (y - meany)

        population_covar = C / n
        # Bessel's correction for sample variance
        sample_covar = C / (n - 1)

We can also make a small modification to compute the weighted covariance:

    def online_weighted_covariance(data1, data2, data3):
        meanx = meany = 0
        wsum = wsum2 = 0
        C = 0
        for x, y, w in zip(data1, data2, data3):
            wsum += w
            wsum2 += w*w
            dx = x - meanx
            meanx += (w / wsum) * dx
            meany += (w / wsum) * (y - meany)
            C += w * dx * (y - meany)

        population_covar = C / wsum
        # Bessel's correction for sample variance
        # Frequency weights
        sample_frequency_covar = C / (wsum - 1)
        # Reliability weights
        sample_reliability_covar = C / (wsum - wsum2 / wsum)

Likewise, there is a formula for combining the covariances of two sets that can be used to parallelize the computation:[20]

$$C_X = C_A + C_B + (\bar x_A - \bar x_B)(\bar y_A - \bar y_B)\cdot\frac{n_A n_B}{n_X}.$$

Weighted batched version

A version of the weighted online algorithm that does batched updated also exists : let w₁, …w_(N) denote the weights, we can write

$$\begin{alignat}{2}
\bar x_{n+k} &= \bar x_n &\,+\,& \frac{\sum_{i=n+1}^{n+k} w_i (x_i - \bar x_n)}{\sum_{i=1}^{n+k} w_i} \\
\bar y_{n+k} &= \bar y_n &\,+\,& \frac{\sum_{i=n+1}^{n+k} w_i (y_i - \bar y_n)}{\sum_{i=1}^{n+k} w_i} \\
C_{n+k}      &= C_n      &\,+\,& \sum_{i=n+1}^{n+k} w_i (x_i - \bar x_{n+k})(y_i - \bar y_n) \\
             &= C_n      &\,+\,& \sum_{i=n+1}^{n+k} w_i (x_i - \bar x_n)(y_i - \bar y_{n+k}) \\
\end{alignat}$$

The covariance can then be computed as

$$\operatorname{Cov}_N(X,Y) = \frac{C_N}{\sum_{i=1}^{N} w_i}$$


See also

-   Algebraic formula for the variance
-   Kahan summation algorithm
-   Squared deviations from the mean


References


External links

-

Category:Statistical algorithms Category:Statistical deviation and dispersion Category:Articles with example pseudocode Category:Articles with example Python code

[1]

[2]

[3]

[4]

[5]

[6]

[7]

[8] Donald E. Knuth (1998). _The Art of Computer Programming_, volume 2: _Seminumerical Algorithms_, 3rd edn., p. 232. Boston: Addison-Wesley.

[9]

[10]

[11] http://www.johndcook.com/standard_deviation.html

[12]

[13] .

[14]

[15]

[16]

[17]

[18]

[19]

[20]