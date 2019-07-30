  

In computer architecture, AMDAHL'S LAW (or AMDAHL'S ARGUMENT[1]) is a formula which gives the theoretical speedup in latency of the execution of a task at fixed workload that can be expected of a system whose resources are improved. It is named after computer scientist Gene Amdahl, and was presented at the AFIPS Spring Joint Computer Conference in 1967.

Amdahl's law is often used in parallel computing to predict the theoretical speedup when using multiple processors. For example, if a program needs 20 hours using a single processor core, and a particular part of the program which takes one hour to execute cannot be parallelized, while the remaining 19 hours () of execution time can be parallelized, then regardless of how many processors are devoted to a parallelized execution of this program, the minimum execution time cannot be less than that critical one hour. Hence, the theoretical speedup is limited to at most 20 times $\left(\dfrac{1}{1-p} = 20\right)$. For this reason, parallel computing with many processors is useful only for highly parallelizable programs.


Definition

Amdahl's law can be formulated in the following way:

    $S_\text{latency}(s) = \frac 1 {(1 - p) + \frac p s}$

where

-   _S__(latency) is the theoretical speedup of the execution of the whole task;
-   _s_ is the speedup of the part of the task that benefits from improved system resources;
-   _p_ is the proportion of execution time that the part benefiting from improved resources originally occupied.

Furthermore,



\begin{cases} S_\text{latency}(s) \leq \dfrac 1 {1 - p} \\[8pt] \lim\limits_{s \to \infty} S_\text{latency}(s) = \dfrac 1 {1 - p}. \end{cases}

shows that the theoretical speedup of the execution of the whole task increases with the improvement of the resources of the system and that regardless of the magnitude of the improvement, the theoretical speedup is always limited by the part of the task that cannot benefit from the improvement.

Amdahl's law applies only to the cases where the problem size is fixed. In practice, as more computing resources become available, they tend to get used on larger problems (larger datasets), and the time spent in the parallelizable part often grows much faster than the inherently serial work. In this case, Gustafson's law gives a less pessimistic and more realistic assessment of the parallel performance.[2]


Derivation

A task executed by a system whose resources are improved compared to an initial similar system can be split up into two parts:

-   a part that does not benefit from the improvement of the resources of the system;
-   a part that benefits from the improvement of the resources of the system.

An example is a computer program that processes files from disk. A part of that program may scan the directory of the disk and create a list of files internally in memory. After that, another part of the program passes each file to a separate thread for processing. The part that scans the directory and creates the file list cannot be sped up on a parallel computer, but the part that processes the files can.

The execution time of the whole task before the improvement of the resources of the system is denoted as T. It includes the execution time of the part that would not benefit from the improvement of the resources and the execution time of the one that would benefit from it. The fraction of the execution time of the task that would benefit from the improvement of the resources is denoted by p. The one concerning the part that would not benefit from it is therefore . Then:

    T = (1 − p)T + pT.

It is the execution of the part that benefits from the improvement of the resources that is accelerated by the factor s after the improvement of the resources. Consequently, the execution time of the part that does not benefit from it remains the same, while the part that benefits from it becomes:

    $\frac{p}{s}T.$

The theoretical execution time T(s) of the whole task after the improvement of the resources is then:

    $T(s) = (1 - p)T + \frac p s T.$

Amdahl's law gives the theoretical speedup in latency of the execution of the whole task _at fixed workload W_, which yields

    $S_\text{latency}(s) = \frac{TW}{T(s)W} = \frac{T}{T(s)} = \frac 1 {1 - p + \frac p s}.$

Parallel programs

If 30% of the execution time may be the subject of a speedup, _p_ will be 0.3; if the improvement makes the affected part twice as fast, _s_ will be 2. Amdahl's law states that the overall speedup of applying the improvement will be:

    $S_\text{latency} = \frac{1}{1 - p + \frac{p}{s}} = \frac 1 {1 - 0.3 + \frac {0.3} 2} = 1.18.$

For example, assume that we are given a serial task which is split into four consecutive parts, whose percentages of execution time are , , , and respectively. Then we are told that the 1st part is not sped up, so , while the 2nd part is sped up 5 times, so , the 3rd part is sped up 20 times, so , and the 4th part is sped up 1.6 times, so . By using Amdahl's law, the overall speedup is

    $S_\text{latency} = \frac{1}{\frac{p1}{s1} + \frac{p2}{s2} + \frac{p3}{s3} + \frac{p4}{s4}} = \frac{1}{\frac{0.11}{1} + \frac{0.18}{5} + \frac{0.23}{20} + \frac{0.48}{1.6}} = 2.19.$

Notice how the 5 times and 20 times speedup on the 2nd and 3rd parts respectively don't have much effect on the overall speedup when the 4th part (48% of the execution time) is accelerated by only 1.6 times.

Serial programs

For example, with a serial program in two parts _A_ and _B_ for which and ,

-   if part _B_ is made to run 5 times faster, that is and , then

    $S_\text{latency} = \frac 1 {1 - 0.25 + \frac{0.25}{5}} = 1.25;$

-   if part _A_ is made to run 2 times faster, that is and , then

    $S_\text{latency} = \frac 1 {1 - 0.75 + \frac{0.75}{2}} = 1.60.$

Therefore, making part _A_ to run 2 times faster is better than making part _B_ to run 5 times faster. The percentage improvement in speed can be calculated as

    $\text{percentage improvement} = 100 \left(1 - \frac 1 {S_\text{latency}}\right).$

-   Improving part _A_ by a factor of 2 will increase overall program speed by a factor of 1.60, which makes it 37.5% faster than the original computation.
-   However, improving part _B_ by a factor of 5, which presumably requires more effort, will achieve an overall speedup factor of 1.25 only, which makes it 20% faster.

Optimizing the sequential part of parallel programs

If the non-parallelizable part is optimized by a factor of , then

    $T(O,s) =  (1 - p)\frac{T}{O} + \frac{p}{s} T.$

It follows from Amdahl's law that the speedup due to parallelism is given by

    $S_\text{latency}(O,s) = \frac{T(O)}{T(O,s)} = \frac {(1 - p)\frac{1}{O} + {p} } {\frac{1 - p}{O} + \frac p s}.$

When s = 1, we have S_(latency)(O, s) = 1, meaning that the speedup is measured with respect to the execution time after the non-parallelizable part is optimized.

When s = ∞,

    $S_\text{latency}(O,\infty) = \frac{T(O)}{T(O,s)} = \frac {(1 - p)\frac{1}{O} + {p} } {\frac{1 - p}{O} + \frac p s}= 1 + \frac{p}{1-p}O.$

If 1 − p = 0.4, O = 2 and s = 5, then:

    $S_\text{latency}(O,s) = \frac{T(O)}{T(O,s)} = \frac{ {0.4} \frac{1}{2} + 0.6} {\frac{0.4}{2} + \frac{0.6}{5} }   = 2.5.$

Transforming sequential parts of parallel programs into parallelizable

Next, we consider the case wherein the non-parallelizable part is reduced by a factor of , and the parallelizable part is correspondingly increased. Then

    $T'(O',s) =  (1 - p)\frac{T}{O'} + \left(1-\frac{1-p}{O'}\right) \frac{T}{s}.$

It follows from Amdahl's law that the speedup due to parallelism is given by

    $S'_\text{latency}(O',s) = \frac{T'(O')}{T'(O',s)} = \frac { 1  } {  (1 - p)\frac{1}{O'} + \left(1-\frac{1-p}{O'}\right) \frac{1}{s}}.$

The derivation above is in agreement with Jakob Jenkov's analysis of the execution time vs. speedup tradeoff.[3]


Relation to the law of diminishing returns

Amdahl's law is often conflated with the law of diminishing returns, whereas only a special case of applying Amdahl's law demonstrates law of diminishing returns. If one picks optimally (in terms of the achieved speedup) what to improve, then one will see monotonically decreasing improvements as one improves. If, however, one picks non-optimally, after improving a sub-optimal component and moving on to improve a more optimal component, one can see an increase in the return. Note that it is often rational to improve a system in an order that is "non-optimal" in this sense, given that some improvements are more difficult or require larger development time than others.

Amdahl's law does represent the law of diminishing returns if on considering what sort of return one gets by adding more processors to a machine, if one is running a fixed-size computation that will use all available processors to their capacity. Each new processor added to the system will add less usable power than the previous one. Each time one doubles the number of processors the speedup ratio will diminish, as the total throughput heads toward the limit of 1/(1 − _p_).

This analysis neglects other potential bottlenecks such as memory bandwidth and I/O bandwidth. If these resources do not scale with the number of processors, then merely adding processors provides even lower returns.

An implication of Amdahl's law is that to speedup real applications which have both serial and parallel portions, heterogeneous computing techniques are required.[4] For example, a CPU-GPU heterogeneous processor may provide higher performance and energy efficiency than a CPU-only or GPU-only processor.[5]


See also

-   Gustafson's law
-   Critical path method
-   Moore's law


References


Further reading

-

-


External links

-

-   Oral history interview with Gene M. Amdahl Charles Babbage Institute, University of Minnesota (1989). Amdahl discusses his graduate work at the University of Wisconsin and his design of WISC. Discusses his role in the design of several computers for IBM including the STRETCH, IBM 701, and IBM 704. He discusses his work with Nathaniel Rochester and IBM's management of the design process. Mentions work with Ramo-Wooldridge, Aeronutronic, and Computer Sciences Corporation
-   Amdahl's Law: Not all performance improvements are created equal (2007)
-   "Amdahl's Law" by Joel F. Klein, Wolfram Demonstrations Project (2007)
-   Amdahl's Law in the Multicore Era (July 2008)
-   What the $#@! is Parallelism, Anyhow? (Charles Leiserson, May 2008)
-   Evaluation of the Intel Core i7 Turbo Boost feature, by James Charles, Preet Jassi, Ananth Narayan S, Abbas Sadat and Alexandra Fedorova (2009)
-   Calculation of the acceleration of parallel programs as a function of the number of threads, by George Popov, Valeri Mladenov and Nikos Mastorakis (January 2010)
-   Danny Hillis - Proving Amdahl's Law wrong, video recorded October 2016

Category:Analysis of parallel algorithms Category:Computer architecture statements

[1]

[2]

[3] http://tutorials.jenkov.com/java-concurrency/amdahls-law.html

[4] "Amdahl's Law in the Multicore Era", Computer, 41 (7), 33–38, 2008

[5] "A Survey of CPU-GPU Heterogeneous Computing Techniques", ACM Computing Surveys, 47(4), 69:1–69:35, 2015