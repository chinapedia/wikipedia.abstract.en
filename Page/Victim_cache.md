A VICTIM CACHE is a small, usually fully associative cache placed in the refill path of CPU cache, and it stores all the blocks evicted from that level of cache. 


Overview

Victim caching is a hardware technique to improve performance of caches proposed by Norman P. Jouppi. As mentioned in his paper:[1] 

A victim cache is a hardware cache designed to decrease conflict misses and improve hit latency for direct-mapped caches. It is employed at the refill path of a Level 1 cache, such that any cache-line which gets evicted from the cache is cached in the victim cache. Thus, the victim cache gets populated only when data is thrown out of Level 1 cache. In case of a miss in Level 1, victim cache is looked up. If the resulting access is a hit, the contents of the Level 1 cache-line and the matching victim cache line are swapped.

Though initially proposed by Jouppi to improve cache performance of a direct-mapped cache Level 1, modern day microprocessors with multi-level cache hierarchy employ Level 3/ Level 4 cache to act as victim cache for the cache lying above it in the memory hierarchy. Intel's Crystal Well[2] of its Haswell processors introduced an on-package Level 4 cache which serves as a victim cache to processor's Level 3 cache.[3] A 4–12 MB Level 3 cache is used as a victim cache in POWER5 (IBM) microprocessors. 


Background

Processor performance and frequency has grown rapidly over the past three decades. Post mid-1980's it has grown by 52% annually largely driven by organisational and architectural ideas. 64-bit Intel Xeon processor (2004) can clock at 3.6 GHz thus having a cycle time of 0.27 ns. Memory cycle time however has not grown at this fast rate. This has resulted in processor cycle times being currently much faster than memory cycle times, and the trend has been for this gap to increase over time. The problem of increasing memory latency, relative to processor speed, has been dealt with by adding high speed cache memory.

Direct-mapped caches have faster access time than set-associative caches. However, for a direct-mapped cache if multiple cache blocks in the memory map to same cache-line they end up evicting each other when anyone of them is accessed. This is known as the cache conflict problem. This problem is resolved by increasing the associativity of the cache. But there is a limit to which associativity can be increased owing to the complexity in its implementation. Thus, for solving the cache conflict problem for a cache with limited associativity victim cache is employed. 


Implementation

The behavior of a victim cache in its respective interaction with the corresponding level cache is given below:

_Cache Hit:_ No action

_Cache Miss, Victim Hit:_ The block is in the victim cache and the one in the cache are replaced with each other. This new entry in victim cache becomes the most recently used block.Victim_Cache_Implementation_Example.svg

_Cache Miss, Victim Miss:_ The block is brought to cache from next level. The block evicted from the cache gets stored in Victim cache.

EXAMPLE:

Suppose a direct-mapped L1 cache with blocks A, B pointing to the same set. It is linked to a 2 entry fully associative victim cache with blocks C, D in it.

The trace to be followed: A, B, A, B…

From the diagram, we can see that, in case of victim cache (VC) hit, blocks A and B are swapped. The least recently used block of VC remains as it is. Hence, it gives an illusion of associativity to the direct-mapped L1 cache, in turn reducing the conflict misses.

In case of two caches, L1 and L2 with exclusive policy (L2 does not cache same the memory locations as L1), L2 acts as the victim cache for L1.


Performance implication

While measuring performance improvement by using victim cache, Joupii[4] assumed a Level-1 direct-mapped cache augmented with a fully associative cache. For the test suite used by him, on an average 39% of the Level-1 data cache misses are found to be conflict misses, while on an average 29% of the Level-1 instruction misses are found to be conflict misses.[5] Since conflict misses amount to large percentage of total misses, therefore providing additional associativity by augmenting the Level 1 cache with a victim cache is bound to improve total miss rate significantly.

[6] Experimental results are deduced by considering a 32-Kb Direct-Mapped, 2-way and fully associative cache augmented with a 256 block (8 KB) victim cache and running on it 8 randomly selected SPEC95 Benchmarks. While the results cannot be generalized for all benchmarks, adding a victim cache provides a miss rate reduction ranging from 10% to 100% for all the cache configuration. The returns although seem to level off beyond victim cache size of 50 blocks, thus proving Joupii's[7] observation that victim cache benefits reach a plateau after the first few victim blocks.

Miss rate reduction for a 64 KB cache size are found to be significantly lower, proving that victim caching is not indefinitely scalable.[8]

While comparing various cache configuration it was found that in certain cases adding a small victim cache can give performance benefit equivalent to that observed by multiplying the cache size by 2.[9]


References

Category:Cache (computing)

[1]

[2]

[3]

[4]

[5]

[6]

[7]

[8]

[9]