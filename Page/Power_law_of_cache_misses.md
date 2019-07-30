A POWER LAW is a mathematical relationship between two quantities in which one is directly proportional to some power of the other. The POWER LAW FOR CACHE MISSES was first established by C. K. Chow in his 1974 paper,[1] supported by experimental data on hit ratios for stack processing by Richard Mattson in 1971.[2] The power law of cache misses can be used to narrow down the cache sizes to practical ranges, given a tolerable miss rate, as one of the early steps while designing the cache hierarchy for a uniprocessor system.[3]

The power law for cache misses can be stated as

    M = M₀C^( − α)

where _M_ is the miss rate for a cache of size _C_ and _M_₀ is the miss rate of a baseline cache. The exponent _α_ is workload-specific and typically ranges from 0.3 to 0.7.[4]


Caveats

The power law can only give an estimate of the miss rate only up to a certain value of cache size. A large enough cache eliminates capacity misses and increasing the cache size further will not reduce the miss rate any further, contrary to the power law's prediction.[5]

The validity of the power law of cache misses also depends on the size of working memory set in a given process and also on the temporal re-reference pattern of cache blocks in a process. If a process has a small working memory set relative to the cache size, capacity misses are unlikely and the power law does not hold.

Although conflict misses reduce as associativity increases, Hartstein et al.[6] showed that the power law holds irrespective of set associativity.

Hartstein et al. plotted the number of cache block re-accesses versus their re-reference times for a large number of workloads and found that most also follow an exponential relationship.[7]

    R(t) = R₀t^( − β)

where _R_(_t_) is the rate of re-referencing. It was found that the exponent _β_ ranged between 1.7 and 1.3. Theoretically, it was proved that the power laws of cache re-reference and cache miss rate are related by the equation α = 1 − β. This means that for workloads that do not follow the re-reference power law, the power law of cache misses does not hold true.


Multilevel cache hierarchy

In a multilevel cache hierarchy, the miss pattern of the higher level cache becomes the re-reference pattern of the immediate lower level cache. Hartstein et al.[8] found that whereas the cache misses for lower levels do not follow a strict power law, as long as the lower level cache is considerably larger than the higher level cache, the miss rate function can be approximated to the power law.


See also

-   Cache hierarchy


References

Category:Mathematical concepts

[1]

[2]

[3]

[4]

[5]

[6]

[7]

[8]