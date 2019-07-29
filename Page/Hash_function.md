Hash_table_4_1_1_0_0_1_0_LL.svg A HASH FUNCTION is any function that can be used to map data of arbitrary size onto data of a fixed size. The values returned by a hash function are called HASH VALUES, HASH CODES, DIGESTS, or simply HASHES. Hash functions are often used in combination with a hash table, a common data structure used in computer software for rapid data lookup. Hash functions accelerate table or database lookup by detecting duplicated records in a large file. One such application is finding similar stretches in DNA sequences. They are also useful in cryptography. A cryptographic hash function allows one to easily verify whether some input data map onto a given hash value, but if the input data is unknown it is deliberately difficult to reconstruct it (or any equivalent alternatives) by knowing the stored hash value. This is used for assuring integrity of transmitted data, and is the building block for HMACs, which provide message authentication.

Hash functions are related to (and often confused with) checksums, check digits, fingerprints, lossy compression, randomization functions, error-correcting codes, and ciphers. Although the concepts overlap to some extent, each one has its own uses and requirements and is designed and optimized differently. The HashKeeper database maintained by the American National Drug Intelligence Center, for instance, is more aptly described as a catalogue of file fingerprints than of hash values.


Uses

Hash tables

Hash functions are used in hash tables,[1] to quickly locate a data record (e.g., a dictionary definition) given its search key (the headword). Specifically, the hash function is used to map the search key to a list; the index gives the place in the hash table where the corresponding record should be stored. Hash tables are also used to implement associative arrays and dynamic sets.[2]

Typically, the domain of a hash function (the set of possible keys) is larger than its range (the number of different table indices), and so it will map several different keys to the same index which could result in collisions. So then, each slot of a hash table is associated with (implicitly or explicitly) a set of records, rather than a single record. For this reason, each slot of a hash table is often called a _bucket_, and hash values are also called _bucket listing_ or a _bucket index_.

Thus, the hash function only hints at the record's location. Still, in a half-full table, a good hash function will typically narrow the search down to only one or two entries.

People who write complete hash table implementations choose a specific hash function—such as a Jenkins hash or Zobrist hashing—and independently choose a hash-table collision resolution scheme—such as coalesced hashing, cuckoo hashing, or hopscotch hashing.

Caches

Hash functions are also used to build caches for large data sets stored in slow media. A cache is generally simpler than a hashed search table, since any collision can be resolved by discarding or writing back the older of the two colliding items. This is also used in file comparison.

Bloom filters

Hash functions are an essential ingredient of the Bloom filter, a space-efficient probabilistic data structure that is used to test whether an element is a member of a set.

Finding duplicate records

When storing records in a large unsorted file, one may use a hash function to map each record to an index into a table _T_, and to collect in each bucket _T_[_i_] a list of the numbers of all records with the same hash value _i_. Once the table is complete, any two duplicate records will end up in the same bucket. The duplicates can then be found by scanning every bucket _T_[_i_] which contains two or more members, fetching those records, and comparing them. With a table of appropriate size, this method is likely to be much faster than any alternative approach (such as sorting the file and comparing all consecutive pairs).

Protecting data

A hash value can be used to uniquely identify secret information. This requires that the hash function is collision-resistant, which means that it is very hard to find data that will generate the same hash value. These functions are categorized into cryptographic hash functions and provably secure hash functions. Functions in the second category are the most secure but also too slow for most practical purposes. Collision resistance is accomplished in part by generating very large hash values. For example, SHA-2, one of the most widely used cryptographic hash functions, generates 256-bit values.

Finding similar records

Hash functions can also be used to locate table records whose key is similar, but not identical, to a given key; or pairs of records in a large file which have similar keys. For that purpose, one needs a hash function that maps similar keys to hash values that differ by at most _m_, where _m_ is a small integer (say, 1 or 2). If one builds a table _T_ of all record numbers, using such a hash function, then similar records will end up in the same bucket, or in nearby buckets. Then one need only check the records in each bucket _T_[_i_] against those in buckets _T_[_i_+_k_] where _k_ ranges between −_m_ and _m_.

This class includes the so-called acoustic fingerprint algorithms, that are used to locate similar-sounding entries in large collection of audio files. For this application, the hash function must be as insensitive as possible to data capture or transmission errors, and to trivial changes such as timing and volume changes, compression, etc.[3]

Finding similar substrings

The same techniques can be used to find equal or similar stretches in a large collection of strings, such as a document repository or a genomic database. In this case, the input strings are broken into many small pieces, and a hash function is used to detect potentially equal pieces, as above.

The Rabin–Karp algorithm is a relatively fast string searching algorithm that works in O(_n_) time on average. It is based on the use of hashing to compare strings.

Geometric hashing

This principle is widely used in computer graphics, computational geometry and many other disciplines, to solve many proximity problems in the plane or in three-dimensional space, such as finding closest pairs in a set of points, similar shapes in a list of shapes, similar images in an image database, and so on. In these applications, the set of all inputs is some sort of metric space, and the hashing function can be interpreted as a partition of that space into a grid of _cells_. The table is often an array with two or more indices (called a _grid file_, _grid index_, _bucket grid_, and similar names), and the hash function returns an index tuple. This special case of hashing is known as geometric hashing or _the grid method_. Geometric hashing is also used in telecommunications (usually under the name vector quantization) to encode and compress multi-dimensional signals.

Standard uses of hashing in cryptography

Some standard applications that employ hash functions include authentication, message integrity (using an HMAC (Hashed MAC)), message fingerprinting, data corruption detection, and digital signature efficiency.


Properties

Good hash functions, in the original sense of the term, are usually required to satisfy certain properties listed below. The exact requirements are dependent on the application. For example, a hash function well suited to indexing data will probably be a poor choice for a cryptographic hash function.

Determinism

A hash procedure must be deterministic—meaning that for a given input value it must always generate the same hash value. In other words, it must be a function of the data to be hashed, in the mathematical sense of the term. This requirement excludes hash functions that depend on external variable parameters, such as pseudo-random number generators or the time of day. It also excludes functions that depend on the memory address of the object being hashed in cases that the address may change during execution (as may happen on systems that use certain methods of garbage collection), although sometimes rehashing of the item is possible.

The determinism is in the context of the reuse of the function. For example, Python adds the feature that hash functions make use of a randomized seed that is generated once when the Python process starts in addition to the input to be hashed.[4] The Python hash is still a valid hash function when used within a single run. But if the values are persisted (for example, written to disk) they can no longer be treated as valid hash values, since in the next run the random value might differ.

Uniformity

A good hash function should map the expected inputs as evenly as possible over its output range. That is, every hash value in the output range should be generated with roughly the same probability. The reason for this last requirement is that the cost of hashing-based methods goes up sharply as the number of _collisions_—pairs of inputs that are mapped to the same hash value—increases. If some hash values are more likely to occur than others, a larger fraction of the lookup operations will have to search through a larger set of colliding table entries.

Note that this criterion only requires the value to be _uniformly distributed_, not _random_ in any sense. A good randomizing function is (barring computational efficiency concerns) generally a good choice as a hash function, but the converse need not be true.

Hash tables often contain only a small subset of the valid inputs. For instance, a club membership list may contain only a hundred or so member names, out of the very large set of all possible names. In these cases, the uniformity criterion should hold for almost all typical subsets of entries that may be found in the table, not just for the global set of all possible entries.

In other words, if a typical set of _m_ records is hashed to _n_ table slots, the probability of a bucket receiving many more than _m_/_n_ records should be vanishingly small. In particular, if _m_ is less than _n_, very few buckets should have more than one or two records. (In an ideal "perfect hash function", no bucket should have more than one record; but a small number of collisions is virtually inevitable, even if _n_ is much larger than _m_ – see the birthday problem).

When testing a hash function, the uniformity of the distribution of hash values can be evaluated by the chi-squared test.

Defined range

It is often desirable that the output of a hash function have fixed size (but see below). If, for example, the output is constrained to 32-bit integer values, the hash values can be used to index into an array. Such hashing is commonly used to accelerate data searches.[5] On the other hand, cryptographic hash functions produce much larger hash values, in order to ensure the computational complexity of brute-force inversion.[6] For example, SHA-1, one of the most widely used cryptographic hash functions, produces a 160-bit value.

Producing fixed-length output from variable length input can be accomplished by breaking the input data into chunks of specific size. Hash functions used for data searches use some arithmetic expression which iteratively processes chunks of the input (such as the characters in a string) to produce the hash value.[7] In cryptographic hash functions, these chunks are processed by a one-way compression function, with the last chunk being padded if necessary. In this case, their size, which is called _block size_, is much bigger than the size of the hash value.[8] For example, in SHA-1, the hash value is 160 bits and the block size 512 bits.

Variable range

In many applications, the range of hash values may be different for each run of the program, or may change along the same run (for instance, when a hash table needs to be expanded). In those situations, one needs a hash function which takes two parameters—the input data _z_, and the number _n_ of allowed hash values.

A common solution is to compute a fixed hash function with a very large range (say, 0 to 2³² − 1), divide the result by _n_, and use the division's remainder. If _n_ is itself a power of 2, this can be done by bit masking and bit shifting. When this approach is used, the hash function must be chosen so that the result has fairly uniform distribution between 0 and _n_ − 1, for any value of _n_ that may occur in the application. Depending on the function, the remainder may be uniform only for certain values of _n_, e.g. odd or prime numbers.

We can allow the table size _n_ to not be a power of 2 and still not have to perform any remainder or division operation, as these computations are sometimes costly. For example, let _n_ be significantly less than 2^(_b_). Consider a pseudorandom number generator (PRNG) function _P_(key) that is uniform on the interval [0, 2^(_b_) − 1]. A hash function uniform on the interval [0, n-1] is _n_ _P_(key)/2^(_b_). We can replace the division by a (possibly faster) right bit shift: _nP_(key) >> _b_.

Variable range with minimal movement (dynamic hash function)

When the hash function is used to store values in a hash table that outlives the run of the program, and the hash table needs to be expanded or shrunk, the hash table is referred to as a dynamic hash table.

A hash function that will relocate the minimum number of records when the table is – where _z_ is the key being hashed and _n_ is the number of allowed hash values – such that _H_(_z_,_n_ + 1) = _H_(_z_,_n_) with probability close to _n_/(_n_ + 1).

Linear hashing and spiral storage are examples of dynamic hash functions that execute in constant time but relax the property of uniformity to achieve the minimal movement property.

Extendible hashing uses a dynamic hash function that requires space proportional to _n_ to compute the hash function, and it becomes a function of the previous keys that have been inserted.

Several algorithms that preserve the uniformity property but require time proportional to _n_ to compute the value of _H_(_z_,_n_) have been invented.

A hash function with minimal movement is especially useful in distributed hash tables.

Data normalization

In some applications, the input data may contain features that are irrelevant for comparison purposes. For example, when looking up a personal name, it may be desirable to ignore the distinction between upper and lower case letters. For such data, one must use a hash function that is compatible with the data equivalence criterion being used: that is, any two inputs that are considered equivalent must yield the same hash value. This can be accomplished by normalizing the input before hashing it, as by upper-casing all letters.

Continuity

"A hash function that is used to search for similar (as opposed to equivalent) data must be as continuous as possible; two inputs that differ by a little should be mapped to equal or nearly equal hash values."[9]

Note that continuity is usually considered a fatal flaw for checksums, cryptographic hash functions, and other related concepts. Continuity is desirable for hash functions only in some applications, such as hash tables used in Nearest neighbor search.

Non-invertible

In cryptographic applications, hash functions are typically expected to be practically non-invertible, meaning that it is not realistic to reconstruct the input datum from its hash value () alone without spending great amounts of computing time (see also One-way function).


Hash function algorithms

For most types of hashing functions, the choice of the function depends strongly on the nature of the input data, and their probability distribution in the intended application.

Trivial hash function

If the data to be hashed is small enough, one can use the data itself (reinterpreted as an integer) as the hashed value. The cost of computing this "trivial" (identity) hash function is effectively zero. This hash function is perfect, as it maps each input to a distinct hash value.

The meaning of "small enough" depends on the size of the type that is used as the hashed value. For example, in Java, the hash code is a 32-bit integer. Thus the 32-bit integer Integer and 32-bit floating-point Float objects can simply use the value directly; whereas the 64-bit integer Long and 64-bit floating-point Double cannot use this method.

Other types of data can also use this perfect hashing scheme. For example, when mapping character strings between upper and lower case, one can use the binary encoding of each character, interpreted as an integer, to index a table that gives the alternative form of that character ("A" for "a", "8" for "8", etc.). If each character is stored in 8 bits (as in extended ASCII[10] or ISO Latin 1), the table has only 2⁸ = 256 entries; in the case of Unicode characters, the table would have 17×2¹⁶ = entries.

The same technique can be used to map two-letter country codes like "us" or "za" to country names (26² = 676 table entries), 5-digit zip codes like 13083 to city names ( entries), etc. Invalid data values (such as the country code "xx" or the zip code 00000) may be left undefined in the table or mapped to some appropriate "null" value.

Perfect hashing

Hash_table_4_1_1_0_0_0_0_LL.svg A hash function that is injective—that is, maps each valid input to a different hash value—is said to be PERFECT. With such a function one can directly locate the desired entry in a hash table, without any additional searching.

Minimal perfect hashing

Hash_table_4_1_0_0_0_0_0_LL.svg A perfect hash function for _n_ keys is said to be MINIMAL if its range consists of _n_ _consecutive_ integers, usually from 0 to _n_−1. Besides providing single-step lookup, a minimal perfect hash function also yields a compact hash table, without any vacant slots. Minimal perfect hash functions are much harder to find than perfect ones with a wider range.

Hashing uniformly distributed data

If the inputs are bounded-length strings and each input may independently occur with uniform probability (such as telephone numbers, car license plates, invoice numbers, etc.), then a hash function needs to map roughly the same number of inputs to each hash value. For instance, suppose that each input is an integer _z_ in the range 0 to _N_−1, and the output must be an integer _h_ in the range 0 to _n_−1, where _N_ is much larger than _n_. Then the hash function could be _h_ = _z_ MOD _n_ (the remainder of _z_ divided by _n_), or _h_ = (_z_ × _n_) ÷ _N_ (the value _z_ scaled down by _n_/_N_ and truncated to an integer), or many other formulas.

Hashing data with other distributions

These simple formulas will not do if the input values are not equally likely, or are not independent. For instance, most patrons of a supermarket will live in the same geographic area, so their telephone numbers are likely to begin with the same 3 to 4 digits. In that case, if _m_ is 10000 or so, the division formula (_z_ × _m_) ÷ _M_, which depends mainly on the leading digits, will generate a lot of collisions; whereas the remainder formula _z_ MOD _m_, which is quite sensitive to the trailing digits, may still yield a fairly even distribution.

Hashing variable-length data

When the data values are long (or variable-length) character strings—such as personal names, web page addresses, or mail messages—their distribution is usually very uneven, with complicated dependencies. For example, text in any natural language has highly non-uniform distributions of characters, and character pairs, vary characteristic of the language. For such data, it is prudent to use a hash function that depends on all characters of the string—and depends on each character in a different way.

In cryptographic hash functions, a Merkle–Damgård construction is usually used. In general, the scheme for hashing such data is to break the input into a sequence of small units (bits, bytes, words, etc.) and combine all the units _b_[1], _b_[2], ..., _b_[_m_] sequentially, as follows

S ← S0;                         // _Initialize the state._
for k in 1, 2, ..., m do        // _Scan the input data units:_
  S ← F(S, b[k]);               // _Combine data unit k into the state._
return G(S, n)                  // _Extract the hash value from the state._

This schema is also used in many text checksum and fingerprint algorithms. The state variable _S_ may be a 32- or 64-bit unsigned integer; in that case, _S0_ can be 0, and F(_S_,_n_) can be just _S_ MOD _n_. The best choice of _F_ is a complex issue and depends on the nature of the data. If the units _b_[_k_] are single bits, then _F_(_S_,_b_) could be, for instance

 if highbit(S) = 0 then
   return 2 * S + b
 else
   return (2 * S + b) ^ P

Here _highbit_(_S_) denotes the most significant bit of _S_; the '*' operator denotes unsigned integer multiplication with lost overflow; '^' is the bitwise exclusive or operation applied to words; and _P_ is a suitable fixed word.[11]

Special-purpose hash functions

In many cases, one can design a special-purpose (heuristic) hash function that yields many fewer collisions than a good general-purpose hash function. For example, suppose that the input data are file names such as FILE0000.CHK, FILE0001.CHK, FILE0002.CHK, etc., with mostly sequential numbers. For such data, a function that extracts the numeric part _k_ of the file name and returns _k_ MOD _n_ would be nearly optimal. Needless to say, a function that is exceptionally good for a specific kind of data may have dismal performance on data with different distribution.

Rolling hash

In some applications, such as substring search, one must compute a hash function _h_ for every _k_-character substring of a given _n_-character string _t_; where _k_ is a fixed integer, and _n_ is greater than _k_. The straightforward solution, which is to extract every such substring _s_ of _t_ and compute _h_(_s_) separately, requires a number of operations proportional to _k_·_n_. However, with the proper choice of _h_, one can use the technique of rolling hash to compute all those hashes with an effort proportional to _k_ + _n_.

Universal hashing

A universal hashing scheme is a randomized algorithm that selects a hashing function _h_ among a family of such functions, in such a way that the probability of a collision of any two distinct keys is 1/_n_, where _n_ is the number of distinct hash values desired—independently of the two keys. Universal hashing ensures (in a probabilistic sense) that the hash function application will behave as well as if it were using a random function, for any distribution of the input data. It will, however, have more collisions than perfect hashing and may require more operations than a special-purpose hash function. See also unique permutation hashing.[12]

Hashing with checksum functions

One can adapt certain checksum or fingerprinting algorithms for use as hash functions. Some of those algorithms will map arbitrarily long string data _z_, with any typical real-world distribution—no matter how non-uniform and dependent—to a 32-bit or 64-bit string, from which one can extract a hash value in 0 through _n_ − 1.

This method may produce a sufficiently uniform distribution of hash values, as long as the hash range size _n_ is small compared to the range of the checksum or fingerprint function. However, some checksums fare poorly in the avalanche test, which may be a concern in some applications. In particular, the popular CRC32 checksum provides only 16 bits (the higher half of the result) that are usable for hashing. Moreover, each bit of the input has a deterministic effect on each bit of the CRC32 output; that is, one can tell without looking at the rest of the input which bits of the output will flip if the input bit is flipped, so care must be taken to use all 32 bits when computing the hash from the checksum.[13]

Multiplicative hashing

Multiplicative hashing is a simple type of hash function often used by teachers introducing students to hash tables.[14] Standard multiplicative hashing uses the formula h_(a)(x) = ⌊(axmod W)/(W/M)⌋ which produces a hash value in {0, …, M − 1}. The value a is an appropriately chosen value that should be relatively prime to W. An important practical special case occurs when W = 2^(w) and M = 2^(m) are powers of 2 and w is the machine word size. In this case this formula becomes h_(a)(x) = ⌊(axmod 2^(w))/2^(w − m)⌋. This is special because arithmetic modulo 2^(w) is done by default in low-level programming languages and integer division by a power of 2 is simply a right-shift, so, in C, for example, this function becomes

 unsigned hash(unsigned x) { 
    return (a*x) >> (w-m)
 }

and for fixed m and w this translates into a single integer multiplication and right-shift making it one of the fastest hash functions to compute. Furthermore, if a is a uniformly random _odd_ integer in {1, …, 2^(w) − 1} then this hash function is nearly universal in the sense that, for any x ≠ y, Pr {h_(a)(x) = h_(a)(y)} ≤ 2/m.[15]

In many applications, such as hash tables, collisions make the system a little slower but are otherwise harmless. In such systems, it is often better to use hash functions based on multiplication—such as MurmurHash and the SBoxHash—or even simpler hash functions such as CRC32—and tolerate more collisions; rather than use a more complex hash function that avoids many of those collisions but takes longer to compute. Multiplicative hashing is susceptible to a "common mistake" that leads to poor diffusion—higher-value input bits do not affect lower-value output bits.[16]

Hashing with cryptographic hash functions

Some cryptographic hash functions, such as SHA-1, have even stronger uniformity guarantees than checksums or fingerprints, and thus can provide very good general-purpose hashing functions.

In ordinary applications, this advantage may be too small to offset their much higher cost.[17] However, this method can provide uniformly distributed hashes even when the keys are chosen by a malicious agent. This feature may help to protect services against denial of service attacks.

Hashing by nonlinear table lookup

Tables of random numbers (such as 256 random 32-bit integers) can provide high-quality nonlinear functions to be used as hash functions or for other purposes such as cryptography. The key to be hashed is split into 8-bit (one-byte) parts, and each part is used as an index for the nonlinear table. The table values are then added by arithmetic or XOR addition to the hash output value. Because the table is just 1024 bytes in size, it fits into the cache of modern microprocessors and allows very fast execution of the hashing algorithm. As the table value is on average much longer than 8 bits, one bit of input affects nearly all output bits.

This algorithm has proven to be very fast and of high quality for hashing purposes (especially hashing of integer-number keys).

Efficient hashing of strings

Modern microprocessors will allow for much faster processing, if 8-bit character strings are not hashed by processing one character at a time, but by interpreting the string as an array of 32 bit or 64 bit integers and hashing/accumulating these "wide word" integer values by means of arithmetic operations (e.g. multiplication by constant and bit-shifting). The remaining characters of the string which are smaller than the word length of the CPU must be handled differently (e.g. being processed one character at a time).

This approach has proven to speed up hash code generation by a factor of five or more on modern microprocessors of a word size of 64 bit.

Another approach[18] is to convert strings to a 32 or 64 bit numeric value and then apply a hash function. One method that avoids the problem of strings having great similarity ("Aaaaaaaaaa" and "Aaaaaaaaab") is to use a Cyclic redundancy check (CRC) of the string to compute a 32- or 64-bit value. While it is possible that two different strings will have the same CRC, the likelihood is very small and only requires that one check the actual string found to determine whether one has an exact match. CRCs will be different for strings such as "Aaaaaaaaaa" and "Aaaaaaaaab". Although CRC codes can be used as hash values,[19] they are not cryptographically secure, because they are not collision-resistant.[20]


Locality-sensitive hashing

Locality-sensitive hashing (LSH) is a method of performing probabilistic dimension reduction of high-dimensional data. The basic idea is to hash the input items so that similar items are mapped to the same buckets with high probability (the number of buckets being much smaller than the universe of possible input items). This is different from the conventional hash functions, such as those used in cryptography, as in this case the goal is to minimize the probability of "collision" of every item.[21]

One example of LSH is MinHash algorithm used for finding similar documents (such as web-pages):

Let _h_ be a hash function that maps the members of and to distinct integers, and for any set _S_ define to be the member of with the minimum value of . Then exactly when the minimum hash value of the union lies in the intersection . Therefore,

    where J is Jaccard index.

In other words, if is a random variable that is one when and zero otherwise, then is an unbiased estimator of , although it has too high a variance to be useful on its own. The idea of the MinHash scheme is to reduce the variance by averaging together several variables constructed in the same way.


Origins of the term

The term "hash" offers a natural analogy with its non-technical meaning (to "chop" or "make a mess" out of something), given how hash functions scramble their input data to derive their output.[22] In his research for the precise origin of the term, Donald Knuth notes that, while Hans Peter Luhn of IBM appears to have been the first to use the concept of a hash function in a memo dated January 1953, the term itself would only appear in published literature in the late 1960s, on Herbert Hellerman's _Digital Computer System Principles_, even though it was already widespread jargon by then.[23]


List of hash functions


See also


References


External links

-   Calculate hash of a given value by Timo Denk
-   Hash Functions and Block Ciphers by Bob Jenkins
-   The Goulburn Hashing Function (PDF) by Mayur Patel
-   Hash Function Construction for Textual and Geometrical Data Retrieval Latest Trends on Computers, Vol.2, pp. 483–489, CSCC conference, Corfu, 2010

Category:Error detection and correction Hash_functions Category:Search algorithms

[1]

[2]

[3] "Robust Audio Hashing for Content Identification by Jaap Haitsma, Ton Kalker and Job Oostveen"

[4]

[5]

[6]

[7]

[8]

[9] "Fundamental Data Structures – Josiang p.132". Retrieved May 19, 2014.

[10] Plain ASCII is a 7-bit character encoding, although it is often stored in 8-bit bytes with the highest-order bit always clear (zero). Therefore, for plain ASCII, the bytes have only 2⁷ = 128 valid values, and the character translation table has only this many entries.

[11]

[12]

[13] Bret Mulvey, _Evaluation of CRC32 for Hash Tables_, in _Hash Functions_. Accessed April 10, 2009.

[14] Knuth. "The Art of Computer Programming". Volume 3: "Sorting and Searching". Section "6.4. Hashing".

[15] Open Data Structures. "Multiplicative Hashing"

[16] "CS 3110 Lecture 21: Hash functions". Section "Multiplicative hashing".

[17] Bret Mulvey, _Evaluation of SHA-1 for Hash Tables_, in _Hash Functions_. Accessed April 10, 2009.

[18] http://citeseer.ist.psu.edu/viewdoc/summary?doi=10.1.1.18.7520 Performance in Practice of String Hashing Functions

[19]

[20]

[21]

[22]

[23]