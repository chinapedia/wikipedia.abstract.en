Hash tree}} Hash_table_3_1_1_0_1_0_0_SP.svg

In computing, a HASH TABLE (HASH MAP) is a data structure that implements an associative array abstract data type, a structure that can map keys to values. A hash table uses a hash function to compute an _index_ into an array of _buckets_ or _slots_, from which the desired value can be found.

Ideally, the hash function will assign each key to a unique bucket, but most hash table designs employ an imperfect hash function, which might cause hash _collisions_ where the hash function generates the same index for more than one key. Such collisions must be accommodated in some way.

In a well-dimensioned hash table, the average cost (number of instructions) for each lookup is independent of the number of elements stored in the table. Many hash table designs also allow arbitrary insertions and deletions of key-value pairs, at (amortized[1]) constant average cost per operation.

 

[2]

In many situations, hash tables turn out to be on average more efficient than search trees or any other table lookup structure. For this reason, they are widely used in many kinds of computer software, particularly for associative arrays, database indexing, caches, and sets.


Hashing

The idea of hashing is to distribute the entries (key/value pairs) across an array of _buckets_. Given a key, the algorithm computes an _index_ that suggests where the entry can be found:

index = f(key, array_size)

Often this is done in two steps:

hash = hashfunc(key)
index = hash % array_size

In this method, the _hash_ is independent of the array size, and it is then _reduced_ to an index (a number between 0 and array_size − 1) using the modulo operator (%).

In the case that the array size is a power of two, the remainder operation is reduced to masking, which improves speed, but can increase problems with a poor hash function.[3]

Choosing a hash function

A good hash function and implementation algorithm are essential for good hash table performance, but may be difficult to achieve.[4]

A basic requirement is that the function should provide a uniform distribution of hash values. A non-uniform distribution increases the number of collisions and the cost of resolving them. Uniformity is sometimes difficult to ensure by design, but may be evaluated empirically using statistical tests, e.g., a Pearson's chi-squared test for discrete uniform distributions.

 

 

The distribution needs to be uniform only for table sizes that occur in the application. In particular, if one uses dynamic resizing with exact doubling and halving of the table size, then the hash function needs to be uniform only when the size is a power of two. Here the index can be computed as some range of bits of the hash function. On the other hand, some hashing algorithms prefer to have the size be a prime number.[5] The modulus operation may provide some additional mixing; this is especially useful with a poor hash function.

For open addressing schemes, the hash function should also avoid _clustering_, the mapping of two or more keys to consecutive slots. Such clustering may cause the lookup cost to skyrocket, even if the load factor is low and collisions are infrequent. The popular multiplicative hash[6] is claimed to have particularly poor clustering behavior.[7]

Cryptographic hash functions are believed to provide good hash functions for any table size, either by modulo reduction or by bit masking. They may also be appropriate if there is a risk of malicious users trying to sabotage a network service by submitting requests designed to generate a large number of collisions in the server's hash tables. However, the risk of sabotage can also be avoided by cheaper methods (such as applying a secret salt to the data, or using a universal hash function). A drawback of cryptographic hashing functions is that they are often slower to compute, which means that in cases where the uniformity for '' any'' size is not necessary, a non-cryptographic hashing function might be preferable.

Perfect hash function

If all keys are known ahead of time, a perfect hash function can be used to create a perfect hash table that has no collisions. If minimal perfect hashing is used, every location in the hash table can be used as well.

Perfect hashing allows for constant time lookups in all cases. This is in contrast to most chaining and open addressing methods, where the time for lookup is low on average, but may be very large, O(_n_), for instance when all the keys hash to a few values.


Key statistics

A critical statistic for a hash table is the _load factor_, defined as

    $\text{load factor} = \frac{n}{k},$

where

-   _n_ is the number of entries occupied in the hash table.
-   _k_ is the number of buckets.

As the load factor grows larger, the hash table becomes slower, and it may even fail to work (depending on the method used). The expected constant time property of a hash table assumes that the load factor be kept below some bound. For a _fixed_ number of buckets, the time for a lookup grows with the number of entries, and therefore the desired constant time is not achieved. In some implementations, the solution is to automatically grow (usually, double) the size of the table when the load factor bound is reached, thus forcing to re-hash all entries. As a real-world example, the default load factor for a HashMap in Java 10 is 0.75, which "offers a good trade-off between time and space costs."[8]

Second to the load factor, one can examine the variance of number of entries per bucket. For example, two tables both have 1,000 entries and 1,000 buckets; one has exactly one entry in each bucket, the other has all entries in the same bucket. Clearly the hashing is not working in the second one.

A low load factor is not especially beneficial. As the load factor approaches 0, the proportion of unused areas in the hash table increases, but there is not necessarily any reduction in search cost. This results in wasted memory.


Collision resolution

Hash collisions are practically unavoidable when hashing a random subset of a large set of possible keys. For example, if 2,450 keys are hashed into a million buckets, even with a perfectly uniform random distribution, according to the birthday problem there is approximately a 95% chance of at least two of the keys being hashed to the same slot.

Therefore, almost all hash table implementations have some collision resolution strategy to handle such events. Some common strategies are described below. All these methods require that the keys (or pointers to them) be stored in the table, together with the associated values.

Separate chaining

Hash_table_5_0_1_1_1_1_1_LL.svg

In the method known as _separate chaining_, each bucket is independent, and has some sort of list of entries with the same index. The time for hash table operations is the time to find the bucket (which is constant) plus the time for the list operation.

In a good hash table, each bucket has zero or one entries, and sometimes two or three, but rarely more than that. Therefore, structures that are efficient in time and space for these cases are preferred. Structures that are efficient for a fairly large number of entries per bucket are not needed or desirable. If these cases happen often, the hashing function needs to be fixed.

Separate chaining with linked lists

Chained hash tables with linked lists are popular because they require only basic data structures with simple algorithms, and can use simple hash functions that are unsuitable for other methods.

The cost of a table operation is that of scanning the entries of the selected bucket for the desired key. If the distribution of keys is sufficiently uniform, the _average_ cost of a lookup depends only on the average number of keys per bucket—that is, it is roughly proportional to the load factor.

For this reason, chained hash tables remain effective even when the number of table entries _n_ is much higher than the number of slots. For example, a chained hash table with 1000 slots and 10,000 stored keys (load factor 10) is five to ten times slower than a 10,000-slot table (load factor 1); but still 1000 times faster than a plain sequential list.

For separate-chaining, the worst-case scenario is when all entries are inserted into the same bucket, in which case the hash table is ineffective and the cost is that of searching the bucket data structure. If the latter is a linear list, the lookup procedure may have to scan all its entries, so the worst-case cost is proportional to the number _n_ of entries in the table.

The bucket chains are often searched sequentially using the order the entries were added to the bucket. If the load factor is large and some keys are more likely to come up than others, then rearranging the chain with a move-to-front heuristic may be effective. More sophisticated data structures, such as balanced search trees, are worth considering only if the load factor is large (about 10 or more), or if the hash distribution is likely to be very non-uniform, or if one must guarantee good performance even in a worst-case scenario. However, using a larger table and/or a better hash function may be even more effective in those cases.

Chained hash tables also inherit the disadvantages of linked lists. When storing small keys and values, the space overhead of the next pointer in each entry record can be significant. An additional disadvantage is that traversing a linked list has poor cache performance, making the processor cache ineffective.

Separate chaining with list head cells

Hash_table_5_0_1_1_1_1_0_LL.svg

Some chaining implementations store the first record of each chain in the slot array itself.[9] The number of pointer traversals is decreased by one for most cases. The purpose is to increase cache efficiency of hash table access.

The disadvantage is that an empty bucket takes the same space as a bucket with one entry. To save space, such hash tables often have about as many slots as stored entries, meaning that many slots have two or more entries.

Separate chaining with other structures

Instead of a list, one can use any other data structure that supports the required operations. For example, by using a self-balancing binary search tree, the theoretical worst-case time of common hash table operations (insertion, deletion, lookup) can be brought down to O(log _n_) rather than O(_n_). However, this introduces extra complexity into the implementation, and may cause even worse performance for smaller hash tables, where the time spent inserting into and balancing the tree is greater than the time needed to perform a linear search on all of the elements of a list.[10][11] A real world example of a hash table that uses a self-balancing binary search tree for buckets is the HashMap class in Java version 8.[12]

The variant called array hash table uses a dynamic array to store all the entries that hash to the same slot.

 

 

 

Each newly inserted entry gets appended to the end of the dynamic array that is assigned to the slot. The dynamic array is resized in an _exact-fit_ manner, meaning it is grown only by as many bytes as needed. Alternative techniques such as growing the array by block sizes or _pages_ were found to improve insertion performance, but at a cost in space. This variation makes more efficient use of CPU caching and the translation lookaside buffer (TLB), because slot entries are stored in sequential memory positions. It also dispenses with the next pointers that are required by linked lists, which saves space. Despite frequent array resizing, space overheads incurred by the operating system such as memory fragmentation were found to be small.

An elaboration on this approach is the so-called dynamic perfect hashing,[13] where a bucket that contains _k_ entries is organized as a perfect hash table with _k_² slots. While it uses more memory (_n_² slots for _n_ entries, in the worst case and _n_ × _k_ slots in the average case), this variant has guaranteed constant worst-case lookup time, and low amortized time for insertion. It is also possible to use a fusion tree for each bucket, achieving constant time for all operations with high probability.[14]

Open addressing

Hash_table_5_0_1_1_1_1_0_SP.svg In another strategy, called open addressing, all entry records are stored in the bucket array itself. When a new entry has to be inserted, the buckets are examined, starting with the hashed-to slot and proceeding in some _probe sequence_, until an unoccupied slot is found. When searching for an entry, the buckets are scanned in the same sequence, until either the target record is found, or an unused array slot is found, which indicates that there is no such key in the table.

 

The name "open addressing" refers to the fact that the location ("address") of the item is not determined by its hash value. (This method is also called CLOSED HASHING; it should not be confused with "open hashing" or "closed addressing" that usually mean separate chaining.)

Well-known probe sequences include:

-   Linear probing, in which the interval between probes is fixed (usually 1)
-   Quadratic probing, in which the interval between probes is increased by adding the successive outputs of a quadratic polynomial to the starting value given by the original hash computation
-   Double hashing, in which the interval between probes is computed by a second hash function

A drawback of all these open addressing schemes is that the number of stored entries cannot exceed the number of slots in the bucket array. In fact, even with good hash functions, their performance dramatically degrades when the load factor grows beyond 0.7 or so. For many applications, these restrictions mandate the use of dynamic resizing, with its attendant costs.

Open addressing schemes also put more stringent requirements on the hash function: besides distributing the keys more uniformly over the buckets, the function must also minimize the clustering of hash values that are consecutive in the probe order. Using separate chaining, the only concern is that too many objects map to the _same_ hash value; whether they are adjacent or nearby is completely irrelevant.

Open addressing only saves memory if the entries are small (less than four times the size of a pointer) and the load factor is not too small. If the load factor is close to zero (that is, there are far more buckets than stored entries), open addressing is wasteful even if each entry is just two words.

Hash_table_average_insertion_time.png

Open addressing avoids the time overhead of allocating each new entry record, and can be implemented even in the absence of a memory allocator. It also avoids the extra indirection required to access the first entry of each bucket (that is, usually the only one). It also has better locality of reference, particularly with linear probing. With small record sizes, these factors can yield better performance than chaining, particularly for lookups. Hash tables with open addressing are also easier to serialize, because they do not use pointers.

On the other hand, normal open addressing is a poor choice for large elements, because these elements fill entire CPU cache lines (negating the cache advantage), and a large amount of space is wasted on large empty table slots. If the open addressing table only stores references to elements (external storage), it uses space comparable to chaining even for large records but loses its speed advantage.

Generally speaking, open addressing is better used for hash tables with small records that can be stored within the table (internal storage) and fit in a cache line. They are particularly suitable for elements of one word or less. If the table is expected to have a high load factor, the records are large, or the data is variable-sized, chained hash tables often perform as well or better.

Coalesced hashing

A hybrid of chaining and open addressing, coalesced hashing links together chains of nodes within the table itself.[15] Like open addressing, it achieves space usage and (somewhat diminished) cache advantages over chaining. Like chaining, it does not exhibit clustering effects; in fact, the table can be efficiently filled to a high density. Unlike chaining, it cannot have more elements than table slots.

Cuckoo hashing

Another alternative open-addressing solution is cuckoo hashing, which ensures constant lookup and deletion time in the worst case, and constant amortized time for insertions (with low probability that the worst-case will be encountered). It uses two or more hash functions, which means any key/value pair could be in two or more locations. For lookup, the first hash function is used; if the key/value is not found, then the second hash function is used, and so on. If a collision happens during insertion, then the key is re-hashed with the second hash function to map it to another bucket. If all hash functions are used and there is still a collision, then the key it collided with is removed to make space for the new key, and the old key is re-hashed with one of the other hash functions, which maps it to another bucket. If that location also results in a collision, then the process repeats until there is no collision or the process traverses all the buckets, at which point the table is resized. By combining multiple hash functions with multiple cells per bucket, very high space utilization can be achieved.

Hopscotch hashing

Another alternative open-addressing solution is hopscotch hashing,[16] which combines the approaches of cuckoo hashing and linear probing, yet seems in general to avoid their limitations. In particular it works well even when the load factor grows beyond 0.9. The algorithm is well suited for implementing a resizable concurrent hash table.

The hopscotch hashing algorithm works by defining a neighborhood of buckets near the original hashed bucket, where a given entry is always found. Thus, search is limited to the number of entries in this neighborhood, which is logarithmic in the worst case, constant on average, and with proper alignment of the neighborhood typically requires one cache miss. When inserting an entry, one first attempts to add it to a bucket in the neighborhood. However, if all buckets in this neighborhood are occupied, the algorithm traverses buckets in sequence until an open slot (an unoccupied bucket) is found (as in linear probing). At that point, since the empty bucket is outside the neighborhood, items are repeatedly displaced in a sequence of hops. (This is similar to cuckoo hashing, but with the difference that in this case the empty slot is being moved into the neighborhood, instead of items being moved out with the hope of eventually finding an empty slot.) Each hop brings the open slot closer to the original neighborhood, without invalidating the neighborhood property of any of the buckets along the way. In the end, the open slot has been moved into the neighborhood, and the entry being inserted can be added to it.

Robin Hood hashing

One interesting variation on double-hashing collision resolution is Robin Hood hashing.

 
 

The idea is that a new key may displace a key already inserted, if its probe count is larger than that of the key at the current position. The net effect of this is that it reduces worst case search times in the table. This is similar to ordered hash tables[17] except that the criterion for bumping a key does not depend on a direct relationship between the keys. Since both the worst case and the variation in the number of probes is reduced dramatically, an interesting variation is to probe the table starting at the expected successful probe value and then expand from that position in both directions.[18] External Robin Hood hashing is an extension of this algorithm where the table is stored in an external file and each table position corresponds to a fixed-sized page or bucket with _B_ records.

 

2-choice hashing

2-choice hashing employs two different hash functions, _h_₁(_x_) and _h_₂(_x_), for the hash table. Both hash functions are used to compute two table locations. When an object is inserted in the table, it is placed in the table location that contains fewer objects (with the default being the _h_₁(_x_) table location if there is equality in bucket size). 2-choice hashing employs the principle of the power of two choices.[19]


Dynamic resizing

When an insert is made such that the number of entries in a hash table exceeds the product of the load factor and the current capacity then the hash table will need to be _rehashed_.[20] Rehashing includes increasing the size of the underlying data structure[21] and mapping existing items to new bucket locations. In some implementations, if the initial capacity is greater than the maximum number of entries divided by the load factor, no rehash operations will ever occur.[22]

To limit the proportion of memory wasted due to empty buckets, some implementations also shrink the size of the table—followed by a rehash—when items are deleted. From the point of space–time tradeoffs, this operation is similar to the deallocation in dynamic arrays.

Resizing by copying all entries

A common approach is to automatically trigger a complete resizing when the load factor exceeds some threshold _r__(max). Then a new larger table is allocated, each entry is removed from the old table, and inserted into the new table. When all entries have been removed from the old table then the old table is returned to the free storage pool. Symmetrically, when the load factor falls below a second threshold _r__(min), all entries are moved to a new smaller table.

For hash tables that shrink and grow frequently, the resizing downward can be skipped entirely. In this case, the table size is proportional to the maximum number of entries that ever were in the hash table at one time, rather than the current number. The disadvantage is that memory usage will be higher, and thus cache behavior may be worse. For best control, a "shrink-to-fit" operation can be provided that does this only on request.

If the table size increases or decreases by a fixed percentage at each expansion, the total cost of these resizings, amortized over all insert and delete operations, is still a constant, independent of the number of entries _n_ and of the number _m_ of operations performed.

For example, consider a table that was created with the minimum possible size and is doubled each time the load ratio exceeds some threshold. If _m_ elements are inserted into that table, the total number of extra re-insertions that occur in all dynamic resizings of the table is at most _m_ − 1. In other words, dynamic resizing roughly doubles the cost of each insert or delete operation.

Alternatives to all-at-once rehashing

Some hash table implementations, notably in real-time systems, cannot pay the price of enlarging the hash table all at once, because it may interrupt time-critical operations. If one cannot avoid dynamic resizing, a solution is to perform the resizing gradually.

Disk-based hash tables almost always use some alternative to all-at-once rehashing, since the cost of rebuilding the entire table on disk would be too high.

Incremental resizing

One alternative to enlarging the table all at once is to perform the rehashing gradually:

-   During the resize, allocate the new hash table, but keep the old table unchanged.
-   In each lookup or delete operation, check both tables.
-   Perform insertion operations only in the new table.
-   At each insertion also move _r_ elements from the old table to the new table.
-   When all elements are removed from the old table, deallocate it.

To ensure that the old table is completely copied over before the new table itself needs to be enlarged, it is necessary to increase the size of the table by a factor of at least (_r_ + 1)/_r_ during resizing.

Monotonic keys

If it is known that key values will always increase (or decrease) monotonically, then a variation of consistent hashing can be achieved by keeping a list of the single most recent key value at each hash table resize operation. Upon lookup, keys that fall in the ranges defined by these list entries are directed to the appropriate hash function—and indeed hash table—both of which can be different for each range. Since it is common to grow the overall number of entries by doubling, there will only be O(log(_N_)) ranges to check, and binary search time for the redirection would be O(log(log(_N_))). As with consistent hashing, this approach guarantees that any key's hash, once issued, will never change, even when the hash table is later grown.

Linear hashing

Linear hashing[23] is a hash table algorithm that permits incremental hash table expansion. It is implemented using a single hash table, but with two possible lookup functions.

Hashing for distributed hash tables

Another way to decrease the cost of table resizing is to choose a hash function in such a way that the hashes of most values do not change when the table is resized. Such hash functions are prevalent in disk-based and distributed hash tables, where rehashing is prohibitively costly. The problem of designing a hash such that most values do not change when the table is resized is known as the distributed hash table problem. The four most popular approaches are rendezvous hashing, consistent hashing, the content addressable network algorithm, and Kademlia distance.


Performance analysis

In the simplest model, the hash function is completely unspecified and the table does not resize. With an ideal hash function, a table of size k with open addressing has no collisions and holds up to k elements with a single comparison for successful lookup, while a table of size k with chaining and n keys has the minimum collisions and comparisons for lookup. With the worst possible hash function, every insertion causes a collision, and hash tables degenerate to linear search, with Θ(n) amortized comparisons per insertion and up to n comparisons for a successful lookup.

Adding rehashing to this model is straightforward. As in a dynamic array, geometric resizing by a factor of b implies that only $\frac{n}{b^i}$ keys are inserted i or more times, so that the total number of insertions is bounded above by , which is Θ(n). By using rehashing to maintain , tables using both chaining and open addressing can have unlimited elements and perform successful lookup in a single comparison for the best choice of hash function.

In more realistic models, the hash function is a random variable over a probability distribution of hash functions, and performance is computed on average over the choice of hash function. When this distribution is uniform, the assumption is called "simple uniform hashing" and it can be shown that hashing with chaining requires comparisons on average for an unsuccessful lookup, and hashing with open addressing requires .[24] Both these bounds are constant, if we maintain using table resizing, where c is a fixed constant less than 1.


Features

Advantages

-   The main advantage of hash tables over other table data structures is speed. This advantage is more apparent when the number of entries is large. Hash tables are particularly efficient when the maximum number of entries can be predicted in advance, so that the bucket array can be allocated once with the optimum size and never resized.

-   If the set of key-value pairs is fixed and known ahead of time (so insertions and deletions are not allowed), one may reduce the average lookup cost by a careful choice of the hash function, bucket table size, and internal data structures. In particular, one may be able to devise a hash function that is collision-free, or even perfect. In this case the keys need not be stored in the table.

Drawbacks

-   Although operations on a hash table take constant time on average, the cost of a good hash function can be significantly higher than the inner loop of the lookup algorithm for a sequential list or search tree. Thus hash tables are not effective when the number of entries is very small. (However, in some cases the high cost of computing the hash function can be mitigated by saving the hash value together with the key.)

-   For certain string processing applications, such as spell-checking, hash tables may be less efficient than tries, finite automata, or Judy arrays. Also, if there are not too many possible keys to store—that is, if each key can be represented by a small enough number of bits—then, instead of a hash table, one may use the key directly as the index into an array of values. Note that there are no collisions in this case.

-   The entries stored in a hash table can be enumerated efficiently (at constant cost per entry), but only in some pseudo-random order. Therefore, there is no efficient way to locate an entry whose key is _nearest_ to a given key. Listing all _n_ entries in some specific order generally requires a separate sorting step, whose cost is proportional to log(_n_) per entry. In comparison, ordered search trees have lookup and insertion cost proportional to log(_n_), but allow finding the nearest key at about the same cost, and _ordered_ enumeration of all entries at constant cost per entry.

-   If the keys are not stored (because the hash function is collision-free), there may be no easy way to enumerate the keys that are present in the table at any given moment.

-   Although the _average_ cost per operation is constant and fairly small, the cost of a single operation may be quite high. In particular, if the hash table uses dynamic resizing, an insertion or deletion operation may occasionally take time proportional to the number of entries. This may be a serious drawback in real-time or interactive applications.

-   Hash tables in general exhibit poor locality of reference—that is, the data to be accessed is distributed seemingly at random in memory. Because hash tables cause access patterns that jump around, this can trigger microprocessor cache misses that cause long delays. Compact data structures such as arrays searched with linear search may be faster, if the table is relatively small and keys are compact. The optimal performance point varies from system to system.

-   Hash tables become quite inefficient when there are many collisions. While extremely uneven hash distributions are extremely unlikely to arise by chance, a malicious adversary with knowledge of the hash function may be able to supply information to a hash that creates worst-case behavior by causing excessive collisions, resulting in very poor performance, e.g., a denial of service attack.[25]

Mike Lennon _"Hash Table Vulnerability Enables Wide-Scale DDoS Attacks" _. 2011. [26] In critical applications, a data structure with better worst-case guarantees can be used; however, universal hashing—a randomized algorithm that prevents the attacker from predicting which inputs cause worst-case behavior—may be preferable.[27] The hash function used by the hash table in the Linux routing table cache was changed with Linux version 2.4.2 as a countermeasure against such attacks.[28]


Uses

Associative arrays

Hash tables are commonly used to implement many types of in-memory tables. They are used to implement associative arrays (arrays whose indices are arbitrary strings or other complicated objects), especially in interpreted programming languages like Ruby, Python, and PHP.

When storing a new item into a multimap and a hash collision occurs, the multimap unconditionally stores both items.

When storing a new item into a typical associative array and a hash collision occurs, but the actual keys themselves are different, the associative array likewise stores both items. However, if the key of the new item exactly matches the key of an old item, the associative array typically erases the old item and overwrites it with the new item, so every item in the table has a unique key.

Database indexing

Hash tables may also be used as disk-based data structures and database indices (such as in dbm) although B-trees are more popular in these applications. In multi-node database systems, hash tables are commonly used to distribute rows amongst nodes, reducing network traffic for hash joins.

Caches

Hash tables can be used to implement caches, auxiliary data tables that are used to speed up the access to data that is primarily stored in slower media. In this application, hash collisions can be handled by discarding one of the two colliding entries—usually erasing the old item that is currently stored in the table and overwriting it with the new item, so every item in the table has a unique hash value.

Sets

Besides recovering the entry that has a given key, many hash table implementations can also tell whether such an entry exists or not.

Those structures can therefore be used to implement a set data structure, which merely records whether a given key belongs to a specified set of keys. In this case, the structure can be simplified by eliminating all parts that have to do with the entry values. Hashing can be used to implement both static and dynamic sets.

Object representation

Several dynamic languages, such as Perl, Python, JavaScript, Lua, and Ruby, use hash tables to implement objects. In this representation, the keys are the names of the members and methods of the object, and the values are pointers to the corresponding member or method.

Unique data representation

Hash tables can be used by some programs to avoid creating multiple character strings with the same contents. For that purpose, all strings in use by the program are stored in a single _string pool_ implemented as a hash table, which is checked whenever a new string has to be created. This technique was introduced in Lisp interpreters under the name hash consing, and can be used with many other kinds of data (expression trees in a symbolic algebra system, records in a database, files in a file system, binary decision diagrams, etc.).

Transposition table


Implementations

In programming languages

Many programming languages provide hash table functionality, either as built-in associative arrays or as standard library modules. In C++11, for example, the unordered_map class provides hash tables for keys and values of arbitrary type.

The Java programming language (including the variant which is used on Android) includes the HashSet, HashMap, LinkedHashSet, and LinkedHashMap generic collections.[29]

In PHP 5 and 7, the Zend 2 engine and the Zend 3 engine (respectively) use one of the hash functions from Daniel J. Bernstein to generate the hash values used in managing the mappings of data pointers stored in a hash table. In the PHP source code, it is labelled as DJBX33A (Daniel J. Bernstein, Times 33 with Addition).

Python's built-in hash table implementation, in the form of the dict type, as well as Perl's hash type (%) are used internally to implement namespaces and therefore need to pay more attention to security, i.e., collision attacks. Python sets also use hashes internally, for fast lookup (though they store only keys, not values).[30]

In the .NET Framework, support for hash tables is provided via the non-generic Hashtable and generic Dictionary classes, which store key-value pairs, and the generic HashSet class, which stores only values.

In Ruby the hash table uses the open addressing model from Ruby 2.4 onwards.[31][32]

In Rust's standard library, the generic HashMap and HashSet structs use linear probing with Robin Hood bucket stealing.

ANSI Smalltalk defines the classes Set / IdentitySet and Dictionary / IdentityDictionary. All Smalltalk implementations provide additional (not yet standardized) versions of WeakSet, WeakKeyDictionary and WeakValueDictionary.


History

The idea of hashing arose independently in different places. In January 1953, Hans Peter Luhn wrote an internal IBM memorandum that used hashing with chaining.[33] Gene Amdahl, Elaine M. McGraw, Nathaniel Rochester, and Arthur Samuel implemented a program using hashing at about the same time. Open addressing with linear probing (relatively prime stepping) is credited to Amdahl, but Ershov (in Russia) had the same idea.[34]


See also

-   Rabin–Karp string search algorithm
-   Stable hashing
-   Consistent hashing
-   Extendible hashing
-   Lazy deletion
-   Pearson hashing
-   PhotoDNA
-   Search data structure
-   Concurrent hash table

Related data structures

There are several data structures that use hash functions but cannot be considered special cases of hash tables:

-   Bloom filter, memory efficient data-structure designed for constant-time approximate lookups; uses hash function(s) and can be seen as an approximate hash table.
-   Distributed hash table (DHT), a resilient dynamic table spread over several nodes of a network.
-   Hash array mapped trie, a trie structure, similar to the array mapped trie, but where each key is hashed first.


References


Further reading

-   -


External links

-   A Hash Function for Hash Table Lookup by Bob Jenkins.
-   Hash Tables by SparkNotes—explanation using C
-   Hash functions by Paul Hsieh
-   Design of Compact and Efficient Hash Tables for Java
-   NIST entry on hash tables
-   Lecture on Hash Tables from Stanford's CS106A
-   Open Data Structures – Chapter 5 – Hash Tables
-   MIT's Introduction to Algorithms: Hashing 1 MIT OCW lecture Video
-   MIT's Introduction to Algorithms: Hashing 2 MIT OCW lecture Video

Category:Articles with example C code * Category:Search algorithms Category:Arrays Category:1953 in computer science

[1] Charles E. Leiserson, _Amortized Algorithms, Table Doubling, Potential Method_ Lecture 13, course MIT 6.046J/18.410J Introduction to Algorithms—Fall 2005

[2]

[3]

[4]

[5]

[6]

[7]

[8] Javadoc for HashMap in Java 10 https://docs.oracle.com/javase/10/docs/api/java/util/HashMap.html

[9]

[10]

[11]

[12]

[13] Erik Demaine, Jeff Lind. 6.897: Advanced Data Structures. MIT Computer Science and Artificial Intelligence Laboratory. Spring 2003.

[14] .

[15]

[16]

[17]

[18]

[19]

[20]

[21]

[22]

[23]

[24] Doug Dunham. CS 4521 Lecture Notes . University of Minnesota Duluth. Theorems 11.2, 11.6. Last modified April 21, 2009.

[25] Alexander Klink and Julian Wälde's _Efficient Denial of Service Attacks on Web Application Platforms _, December 28, 2011, 28th Chaos Communication Congress. Berlin, Germany.

[26]

[27] Crosby and Wallach. _Denial of Service via Algorithmic Complexity Attacks _. quote: "modern universal hashing techniques can yield performance comparable to commonplace hash functions while being provably secure against these attacks." "Universal hash functions ... are ... a solution suitable for adversarial environments. ... in production systems."

[28]

[29]

[30]

[31]

[32]

[33]

[34]