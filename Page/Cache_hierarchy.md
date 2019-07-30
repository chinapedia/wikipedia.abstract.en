CACHE HIERARCHY, or MULTI-LEVEL CACHES, refers to a memory architecture which uses a hierarchy of memory stores based on varying access speeds to cache data. Highly-requested data is cached in high-speed access memory stores, allowing swifter access by central processing unit (CPU) cores.

Cache hierarchy is a form and part of memory hierarchy, and can be considered a form of tiered storage.[1] This design was intended to allow CPU cores to process faster despite the memory latency of main memory access. Accessing main memory can act as a bottleneck for CPU core performance as the CPU waits for data, while making all of main memory high-speed may be prohibitively expensive. High-speed caches are a compromise allowing high-speed access to the data most-used by the CPU, permitting a faster CPU clock.[2]

Cache_Organization.png


Background

In the history of computer and electronic chip development, there was a period when increases in CPU speed outpaced the improvements in memory access speed. The gap between the speed of CPUs and memory meant that the CPU would often be idle. CPUs were increasingly capable of running and executing larger amounts of instructions in a given time, but the time needed to access data from main memory prevented programs from fully benefiting from this capability. This issue motivated the creation of memory models with higher access rates in order to realize the potential of faster processors.

This resulted in the concept of cache memory, first proposed by Maurice Wilkes, a British computer scientist at the University of Cambridge in 1965. He called such memory models "slave memory".[3] Between roughly 1970 and 1990, papers and articles by Anant Agarwal, Alan Jay Smith, Mark D. Hill, Thomas R. Puzak, and others discussed better cache memory designs. The first cache memory models were implemented at the time, but even as researchers were investigating and proposing better designs, the need for faster memory models continued. This need resulted from the fact that although early cache models improved data access latency, with respect to cost and technical limitations it was not feasible for a computer system's cache to approach the size of main memory. From 1990 onward, ideas such as adding another cache level (second-level), as a backup for the first-level cache were proposed. Jean-Loup Baer, Wen-Hann Wang, Andrew W. Wilson, and others have conducted research on this model. When several simulations and implementations demonstrated the advantages of two-level cache models, the concept of multi-level caches caught on as a new and generally better model of cache memories. Since 2000, multi-level cache models have received widespread attention and are currently implemented in many systems, such as the three-level caches that are present in Intel's Core i7 products.[4]


Multi-level cache

Accessing main memory for each instruction execution may result in slow processing, with the clock speed depending on the time required to find and fetch the data. In order to hide this memory latency from the processor, data caching is used. Whenever the data is required by the processor, it is fetched from the main memory and stored in the smaller memory structure called a cache. If there is any further need of that data, the cache is searched first before going to the main memory. This structure resides closer to the processor in terms of the time taken to search and fetch data with respect to the main memory. The advantages of using cache can be proven by calculating the average access time (AAT) for the memory hierarchy with and without the cache.

Average access time (AAT)

Caches, being small in size, may result in frequent misses – when a search of the cache does not provide the sought-after information – resulting in a call to main memory to fetch data. Hence, the AAT is affected by the miss rate of each structure from which it searches for the data.[5]

    AAT = hit time + ((miss rate) × (miss penalty))

AAT for main memory is given by Hit time _(main\ memory). AAT for caches can be given by

    Hit time_(cache) + (Miss rate_(cache) × Miss Penalty_(time\ taken\ to\ go\ to\ main\ memory\ after\ missing\ cache)).

The hit time for caches is much less than the hit time for the main memory, so the AAT for data retrieval is significantly lower when accessing data through the cache rather than main memory.

Trade-offs

While using the cache may improve memory latency, it may not always result in the required improvement for the time taken to fetch data due to the way caches are organized and traversed. For example, direct-mapped caches that are the same size usually have a higher miss rate than fully associative caches. This may also depend on the benchmark of the computer testing the processor and on the pattern of instructions. But using a fully associative cache may result in more power consumption, as it has to search the whole cache every time. Due to this, the trade-off between power consumption (and associated heat) and the size of the cache becomes critical in the cache design.[6]

Evolution

Cache_Hierarchy_Updated.png In the case of a cache miss, the purpose of using such a structure will be rendered useless and the computer will have to go to the main memory to fetch the required data. However, with a multiple-level cache, if the computer misses the cache closest to the processor (level-one cache or L1) it will then search through the next-closest level(s) of cache and go to main memory only if these methods fail. The general trend is to keep the L1 cache small and at a distance of 1–2 CPU clock cycles from the processor, with the lower levels of caches increasing in size to store more data than L1, hence being more distant but with a lower miss rate. This results in a better AAT. The number of cache levels can be designed by architects according to their requirements after checking for trade-offs between cost, AATs, and size.

Performance gains

With the technology-scaling that allowed memory systems able to be accommodated on a single chip, most modern day processors have up to three or four cache levels. The reduction in the AAT can be understood by this example, where the computer checks AAT for different configurations up to L3 caches.

_Example_: main memory = 50 , L1 = 1 ns with 10% miss rate, L2 = 5 ns with1% miss rate), L3 = 10 ns with 0.2% miss rate.

-   No cache, AAT = 50 ns
-   L1 cache, AAT = 1 ns + (0.1 × 50 ns) = 6 ns
-   L1–2 caches, AAT = 1 ns + (0.1 × [5 ns + (0.01 × 50 ns)]) = 1.55 ns
-   L1–3 caches, AAT = 1 ns + (0.1 × [5 ns + (0.01 × [10 ns + (0.002 × 50 ns)])]) = 1.5001 ns

Disadvantages

-   Cache memory comes at an increased marginal cost than main memory and thus can increase the cost of the overall system.
-   Cached data is stored only so long as power is provided to the cache.
-   Increased on-chip area required for memory system.[7]
-   Benefits may be minimized or eliminated in the case of a large programs with poor temporal locality, which frequently access the main memory.[8]


Properties

Separate_unified.png

Banked versus unified

In a banked cache, the cache is divided into a cache dedicated to instruction storage and a cache dedicated to data. In contrast, a unified cache contains both the instructions and data in the same cache. During a process, the L1 cache (or most upper-level cache in relation to its connection to the processor) is accessed by the processor to retrieve both instructions and data. Requiring both actions to be implemented at the same time requires multiple ports and more access time in a unified cache. Having multiple ports requires additional hardware and wiring, leading to a significant structure between the caches and processing units. To avoid this, the L1 cache is often organized as a banked cache which results in fewer ports, less hardware, and generally lower access times.[9]

The lower-level caches (for the purposes of illustration the L2 and L3 caches) are accessed only when there is a miss in the L1 cache. This design lends to a lower frequency of access by processor units as compared to the banked L1 cache. Therefore, the unified organization is implemented in the lower-level caches, as having a single port will suffice for such a design.

Inclusion policies

Inclusivecache.png Whether a block present in the upper cache layer can also be present in the lower cache level is governed by the memory system's inclusion policy, which may be inclusive, exclusive or non-inclusive non-exclusive (NINE).[10]

With an inclusive policy, all the blocks present in the upper-level cache have to be present in the lower-level cache as well. Each upper-level cache component is a subset of the lower-level cache component. In this case, since there is a duplication of blocks, there is some wastage of memory. However, checking is faster.[11]

Under an exclusive policy, all the cache hierarchy components are completely exclusive, so that any element in the upper-level cache will not be present in any of the lower cache components. This enables complete usage of the cache memory. However, there is a high memory-access latency.[12]

The above policies require a set of rules to be followed in order to implement them. If none of these are forced, the resulting inclusion policy is called non-inclusive non-exclusive (NINE). This means that the upper-level cache may or may not be present in the lower-level cache.[13]

Write policies

There are two policies which define the way in which a modified cache block will be updated in the main memory: write through and write back.[14]

In the case of write through policy, whenever the value of the cache block changes, it is further modified in the lower-level memory hierarchy as well. This policy ensures that the data is stored safely as it is written throughout the hierarchy.

However, in the case of the write back policy, the changed cache block will be updated in the lower-level hierarchy only when the cache block is evicted. A "dirty bit" is attached to each cache block and set whenever the cache block is modified. During eviction, blocks with a set dirty bit will be written to the lower-level hierarchy. Under this policy, there is a risk for data-loss as the most recently changed copy of a datum is only stored in the cache and therefore some corrective techniques must be observed.

In case of a write where the byte is not present in the cache block, the byte may be brought to the cache as determined by a write allocate or write no-allocate policy.[15] Write allocate policy states that in case of a write miss, the block is fetched from the main memory and placed in the cache before writing. In the write no-allocate policy, if the block is missed in the cache it will write in the lower-level memory hierarchy without fetching the block into the cache.

The common combinations of the policies are "write block", "write allocate", and "write through write no-allocate".

Shared versus private

Shared_private.png A private cache is assigned to one particular core in a processor, and cannot be accessed by any other cores. In some architectures, each core has its own private cache; this creates the risk of duplicate blocks in a system's cache architecture, which results in reduced capacity utilization. However, this type of design choice in a multi-layer cache architecture can also lend itself to a lower data-access latency.[16][17][18]

A shared cache is a cache which can be accessed by multiple cores. Since it is shared, each block in the cache is unique and therefore has a larger hit rate as there will be no duplicate blocks. However, data-access latency can increase as multiple cores try to access the same cache.

In multi-core processors, the design choice to make a cache shared or private impacts the performance of the processor. In practice, the upper-level cache L1 (or sometimes L2)[19][20] is implemented as private and lower-level caches are implemented as shared. This design provides high access rates for the high-level caches and low miss rates for the lower-level caches.


Recent implementation models

Nehalem_EP.png

Intel Broadwell microarchitecture (2014)

-   L1 cache (instruction and data) – 64  per core
-   L2 cache – 256 kB per core
-   L3 cache – 2  to 6 MB shared
-   L4 cache – 128 MB of eDRAM (Iris Pro models only)[21]

Intel Kaby Lake microarchitecture (2016)

-   L1 cache (instruction and data) – 64 kB per core
-   L2 cache – 256 kB per core
-   L3 cache – 2 MB to 8 MB shared[22]

IBM Power 7

-   L1 cache (instruction and data) – each 64-banked, each bank has 2rd+1wr ports 32 kB, 8-way associative, 128B block, write through
-   L2 cache – 256 kB, 8-way, 128B block, write back, inclusive of L1, 2 ns access latency
-   L3 cache – 8 regions of 4 MB (total 32 MB), local region 6 ns, remote 30 ns, each region 8-way associative, DRAM data array, SRAM tag array[23]


See also

-   Power7
-   Intel Broadwell Microarchitecture
-   Intel Kaby Lake Microarchitecture
-   CPU Cache
-   Memory hierarchy
-   CAS latency
-   Cache (computing)


References

Category:Cache (computing) Category:Computer architecture Category:Computer hardware Category:Computer memory

[1]

[2]

[3]  British computer scientist|newspaper=Encyclopædia Britannica|access-date=2016-12-11}}

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