Tse-yun Feng suggested the use of degree of parallelism to classify various computer architecture. It is based on sequential and parallel operations at a bit and word level.[1]


About degree of parallelism

Maximum degree of parallelism

The maximum number of binary digits that can be processed within a unit time by a computer system is called the maximum parallelism degree P. If a processor is processing P bits in unit time, then P is called the maximum degree of parallelism.[2]

Average degree of parallelism

Let i= 1, 2, 3, ..., T be the different timing instants and P₁, P₂, ..., P_(T) be the corresponding bits processed. Then,

     Average parallelism, P_(a) = (P₁ + P₂ + ....P_(T)) / T

Processor utilization

Processor Utilization, μ= P_(a)/P

The maximum degree of parallelism depends on the structure of the Arithmetic and Logic Unit. Higher degree of parallelism indicates a highly parallel ALU or processing element. Average parallelism depends on both the hardware and the software. Higher average parallelism can be achieved through concurrent programs.


Types of classification

According to Feng’s classification, computer architecture can be classified into four. The classification is based on the way contents stored in memory are processed. The contents can be either data or instructions.[3]

1.  WORD SERIAL BIT SERIAL (WSBS)
2.  WORD SERIAL BIT PARALLEL (WSBP)
3.  WORD PARALLEL BIT SERIAL (WPBS)
4.  WORD PARALLEL BIT PARALLEL (WPBP)

Word serial bit serial (WSBS)

One bit of one selected word is processed at a time. This represents serial processing and needs maximum processing time.

Word serial bit parallel (WSBP)

is found in most existing computers and has been called as Word Slice processing because one word of n bit is processed at a time. All bits of a selected word are processed at a time. Bit parallel means all bits of a word.

Word parallel bit serial (WPBS)

It has been called bit slice processing because m-bit slice is processed at a time. Word parallel signifies selection of all words. It can be considered as one bit from all words are processed at a time.

Word parallel bit parallel (WPBP)

It is known as fully parallel processing in which an array on n x m bits is processes at one time. Maximum parallelism is achieved here.


Limitations of Feng's classification

It fails to project the concurrency in pipeline processors, as degree of parallelism doesn't account for concurrency handle by pipe-lined design.


See also

-   Händler's (ECS)
-   Flynn's taxonomy


References

Category:Computer architecture

[1] http://www.ijcaonline.org/archives/volume148/number14/thakur-2016-ijca-911285.pdf

[2]

[3] https://www.gehucsit.files.wordpress.com/2013/09/handlers-classsification1.pdf