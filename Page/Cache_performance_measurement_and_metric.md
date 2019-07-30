The CPU cache is a piece of hardware which reduces the access time to the data in the memory by keeping some part of the frequently used data of the main memory in itself. It is smaller and faster than the main memory.

The performance of a computer system depends on the performance of all its individual units which include different execution units like integer, branch and floating point, I/O units, bus, caches and memory systems. The gap between the speed of the processor and the speed of the main memory is growing exponentially. Up until 2001–05, CPU speed as measured in its clock frequency grew annually by 55%, whereas the memory speed only grew by 7% annually.[1] This problem is known as the memory wall. The motivation behind creating a structure like cache and its hierarchy was to bridge this speed gap and overcome the memory wall.

The critical component in most of the high-performance computers is the cache. Since the cache was created to bridge the speed gap, its performance measurement and metrics play an important role in designing and choosing various parameters like cache size, associativity, replacement policy, etc. The performance of the cache depends on the cache hits and the cache misses, which are the factors that create constraints to the performance of the system. Cache hits are the number of accesses to the cache that actually find that data in the cache, whereas cache misses are those that do not find the block in the cache. These cache hits and misses contribute to the term AVERAGE ACCESS TIME (AAT) also known as AMAT (Average Memory Access Time), which, as the name suggests, is the average time it takes to access the memory. This is one major metric for cache performance measurement because this number becomes highly significant and critical as the speed of the processor is increased.

Another useful metric to test the performance is POWER LAW OF CACHE MISSES. It gives you the number of misses when you change the size of the cache, given that the number of misses for one of the cache sizes is known. Similarly, when you want to test the performance of the cache in terms of misses across different associativities, STACK DISTANCE PROFILING is used.


Introduction to types of cache misses

The performance of the processor due to the cache hierarchy depends on the number of accesses to the cache that find the blocks in the cache (cache hits) versus those which do not find the blocks in the cache. When an attempt to read or write data from the cache is unsuccessful, it results in lower level or main memory access and results in a longer latency and this phenomenon is known as a cache miss. There are three basic types of cache misses known as the 3CS [2] and some other less popular cache misses.

Compulsory misses

Each memory block when first referenced causes a compulsory miss. This implies that the number of compulsory misses is the number of distinct memory blocks ever referenced. They are sometimes called COLD MISSES too. Cold misses cannot be avoided unless the block is prefetched.

It has been observed that an increase in block size to a certain extent to exploit spatial locality leads to a decrease in cold misses. Increasing block size leads to prefetching of nearby words in a block and preventing future cold misses. Increasing the block size too much can lead to prefetching of useless data, thus increasing the number of cold misses.

Conflict misses

Conflict misses occur when the data required was in the cache previously, but got evicted. These evictions occur because another request was mapped to the same cache line. Generally, conflict misses are measured by subtracting the number of misses in a cache with limited associativity by the number of misses of a fully associative cache of the same size and cache block size.

Since conflict misses can be attributed to the lack of sufficient associativity, increasing the associativity to a certain extent (8‐way associativity almost as effective as fully‐associative) decreases the amount of conflict misses, however, such an approach increases the cache access time and consumes a lot more power than a set associative cache.

Capacity misses

A capacity miss occurs due to the limited size of a cache and not the cache's mapping function. When the working set, i.e. the data that is currently important to the program, is bigger than the cache, capacity misses will occur frequently. Out of the 3CS capacity misses are the hardest to identify and can be thought of as non-compulsory misses in a fully associative cache. In a single processor system, the misses that exist after subtracting the number of compulsory misses and conflict misses can be categorized as capacity misses.

Since capacity misses can be attributed to the limited size of a cache, a simple way to reduce the number of such misses is to increase the cache size. Although this method is very intuitive, it leads to a longer access time and an increase in cache area and its power consumption. Also, after a certain cache size, the number of misses saturate and do not decrease even on increasing the cache size.

  ---------------------- ------------------- ------------------ ------------------
  Parameters             Compulsory misses   Conflict misses    Capacity misses
  Larger cache size      No effect           No effect          Decrease
  Larger block size      Decrease            Uncertain effect   Uncertain effect
  Larger associativity   No effect           Decrease           No effect
  ---------------------- ------------------- ------------------ ------------------

  : Effect of manipulating basic cache parameters on cache misses.[3]

The above three kinds of misses only address uni-processor misses.

Coherence misses

The 3CS group of cache misses can be extended to 4CS when a multi-processor system with cache is involved, the fourth C being coherence misses. The coherence miss count is the number of memory accesses that miss because a cache line that would otherwise be present in the thread's cache has been invalidated by a write from another thread.[4] Coherence in a multi-processor system is maintained if only one copy of a memory block is present or all the copies have the same value. Even if all the copies of memory block do not have the same value, it doesn't necessarily lead to a coherence miss. A coherence miss occurs when threads execute loads such that they observe the different values of the memory block.[5]

The coherence problem is complex and affects the scalability of parallel programs. A global order of all memory accesses to the same location must exist across the system to tackle this problem.

Coverage misses

The 4CS group of cache misses can be further extended to 5CS when the multi-processor system includes a coherence directory organized as a cache, i.e., that can replace entries. This fifth C stands for Coverage.[6] The coverage miss count is the number of memory accesses that miss because a cache line that would otherwise be present in the processor's cache has been invalidated as a consequence of a directory eviction. If the directory is not able to track a cache line due to its limited capacity, the line has to be invalidated from the processors' cache in order to maintain Coherence.

System-related misses

System activities such as interrupts, context switches and system calls lead to the process being suspended and its cache state being altered. When the process execution is resumed, it suffers cache misses to restore the cache state that was altered. These misses are called system-related misses.[7]

Furthermore, cache misses due to context switching may be placed into two categories described below.

Replaced misses

When a context switch occurs, the cache state is modified and some of its blocks are replaced. The misses on access to these blocks are called replaced misses.

Reordered misses

Some blocks in the cache may not be replaced due to context switching but their recency is changed. Reordered misses are said to occur when misses occur due to change in recency and not due to the blocks being replaced. However, when the suspended process resumes execution, reordered blocks don't lead to context switch misses when no other misses cause these reordered blocks to be evicted.

System-related misses become significant when context switching occurs regularly. Increasing the cache size leads to a decrease in capacity and conflict misses but it has been observed that it leads to an increase in system-related misses if the cache is still smaller than the working set of the processes sharing the cache. Hence reducing the number of system-related misses presents a challenge.


Average memory access time

These cache misses directly correlate to the increase in cycles per instruction (CPI). However the amount of effect the cache misses have on the CPI also depends on how much of the cache miss can be overlapped with computations due to the ILP ( Instruction-level parallelism) and how much of it can be overlapped with other cache misses due to Memory-level parallelism.[8] If we ignore both these effects, then the Average memory access time is a metric which becomes important. It is used to measure the performance of the memory systems and hierarchies. It refers to the time necessary to perform a memory access on an average rate. It is the addition of the execution time for the memory instructions and the memory stall cycles. The execution time is the time taken for a cache access and the memory stall cycles include the time taken to service a cache miss and access the lower levels of memory. If the access latency, miss rate and miss penalty are known, the average memory access time can be calculated with the following relation.

AMAT = T_(L1) + MR_(L1) ⋅ MP_(L1)

where T_(L1) is the access latency of level one cache, MR_(L1) is the miss rate of level one cache and MP_(L1) is the additional cycles which a miss at a higher level takes to be serviced compared to a hit at higher level and is calculated using the following relation.

MP_(L1) = T_(L2) + MR_(L2) ⋅ MP_(L2)

this formula can be expanded further and used recursively for all the further levels in the memory hierarchy to get the AMAT. [9]


Power law of cache misses

The Power law of cache misses shows a trend in the capacity misses in a particular application of the program as affected by the cache size. This empirical observation led to the mathematical form of power law which shows the relation between the miss rate and the cache size. It can be stated as

  M = M₀ * C^( − α)

where _M_ is the miss rate for a cache of size _C_ and _M₀_ is the miss rate of a baseline cache. The exponent _Α_ is workload-specific and typically ranges from 0.3 to 0.7, with an average of 0.5. The power law was validated on quite a few of real-world benchmarks.[10]

This relation clearly shows that there is only a small fraction of cache misses that can be eliminated for constant increase in cache size. Also, note that this law holds true only for a certain finite range of cache sizes, up to which the miss rate doesn't flatten out. The miss rate will eventually become stagnant at a certain large enough cache size and after that the relation will not give correct estimates.


Stack distance profile

The stack distance profile is a better representation of how the cache misses are affected by the cache size. The power law of cache misses just showed an rough approximation of the same. A stack distance profile captures the temporal reuse behavior of an application in a fully or set-associative cache.[11]

Applications with the tendency of exhibiting more temporal reuse behavior generally access data that is more recently used. Let us assume the associativity of a cache to be A. To collect the stack distance profile information of this cache assuming it has LRU replacement policy, A + 1 counters are used starting from C₀ to C_(A) and one additional counter C_(<)A which keeps the count of the misses. The counter C_(i) is incremented when there is a hit in the i^(th) way and the counter C_(<)A is incremented on every miss. The stack distance profile shows the trend of hits, decreasing from the most recently used data to the least recently used. Using this stack distance profile information, the cache miss for a cache with associativity A′ and LRU replacement policy, where A′ < A can be computed as

  $miss = C_<A + \sum_{i=A{'}+1}^{A} C_i$

This profiling information has a limitation that it can only capture the temporal reuse across different associativities. For other purposes, the temporal reuse has to be studied in greater detail.


See also

-   Cache Hierarchy


Notes

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

[10]

[11]