Random_vs_sequential_access.svg.]] In computer science, SEQUENTIAL ACCESS means that a group of elements (such as data in a memory array or a disk file or on magnetic tape data storage) is accessed in a predetermined, ordered sequence. Sequential access is sometimes the only way of accessing the data, for example if it is on a tape. It may also be the access method of choice, for example if all that is wanted is to process a sequence of data elements in order.[1]

However, there is no consistent definition of sequential access or sequentiality.[2][3][4][5][6][7][8][9] In fact, different sequentiality definitions can lead to different sequentiality quantification results. In spatial dimension, request size, strided distance, backward accesses, re-accesses can affect sequentiality. For temporal sequentiality, characteristics such as multi-stream and inter-arrival time threshold has impact on the definition of sequentiality.[10]

In data structures, a data structure is said to have sequential access if one can only visit the values it contains in one particular order. The canonical example is the linked list. Indexing into a list that has sequential access requires O(_n_) time, where _n_ is the index. As a result, many algorithms such as quicksort and binary search degenerate into bad algorithms that are even less efficient than their naive alternatives; these algorithms are impractical without random access. On the other hand, some algorithms, typically those that do not have index, require only sequential access, such as mergesort, and face no penalty.


See also

-   Direct access storage device
-   Queued sequential access method


References

Category:Computer memory

[1] Random and Sequential Data Access, Microsoft TechNet

[2] _Irfan Ahmad_, Easy and Efficient Disk I/O Workload Characterization in VMware ESX Server, IISWC, 2007.

[3] _Eric Anderson_, Capture, Conversion, and Analysis of an Intense NFS Workload, FAST, 2009.

[4] _Yanpei Chen et al._ Design Implications for Enterprise Storage Systems via Multi-dimensional Trace Analysis. SOSP. 2011

[5] _Andrew Leung et al._ Measurement and Analysis of Large-scale Network File System Workloads. USENIX ATC. 2008

[6] _Frank Schmuck and Roger Haskin_, GPFS: A Shared-Disk File System for Large Computing Clusters, FAST. 2002

[7] _Alan Smith_. Sequentiality and Prefetching in Database Systems. ACM TOS

[8] _Hyong Shim et al._ Characterization of Incremental Data Changes for Efficient Data Protection. USENIX ATC. 2013.

[9] _Avishay Traeger et al._ A Nine Year Study of File System and Storage Benchmarking. ACM TOS. 2007.

[10] _Cheng Li et al._ Assert(!Defined(Sequential I/O)). HotStorage. 2014