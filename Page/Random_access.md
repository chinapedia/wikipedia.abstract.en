.]] In computer science, RANDOM ACCESS (more precisely and more generally called DIRECT ACCESS) is the ability to access an arbitrary element of a sequence in equal time or any datum from a population of addressable elements roughly as easily and efficiently as any other, no matter how many elements may be in the set. It is typically contrasted to sequential access.

For example, data might be stored notionally in a single sequence like a row, in two dimensions like rows and columns on a surface, or in multiple dimensions. However, given all the coordinates, a program can access each record about as quickly and easily as any other. In this sense, the choice of datum is arbitrary in the sense that no matter which item is sought, all that is needed to find it is its address, i.e. the coordinates at which it is located, such as its row and column (or its track and record number on a magnetic drum). At first, the term "random access" was used because the process had to be capable of finding records no matter in which sequence they were required.[1] However, soon the term "direct access" gained favour because one could directly retrieve a record, no matter what its position might be.[2] The operative attribute, however, is that the device can access any required record immediately on demand. The opposite is sequential access, where a remote element takes longer time to access.1

A typical illustration of this distinction is to compare an ancient scroll (sequential; all material prior to the data needed must be unrolled) and the book (direct: can be immediately flipped open to any arbitrary page). A more modern example is a cassette tape (sequential — one must fast forward through earlier songs to get to later ones) and a CD (direct access — one can skip to the track wanted, knowing that it would be the one retrieved).

In data structures, direct access implies the ability to access any entry in a list in constant time (independent of its position in the list and of the list's size). Very few data structures can make this guarantee other than arrays (and related structures like dynamic arrays). Direct access is required, or at least valuable, in many algorithms such as binary search, integer sorting, or certain versions of sieve of Eratosthenes.[3]

Other data structures, such as linked lists, sacrifice direct access to permit efficient inserts, deletes, or re-ordering of data. Self-balancing binary search trees may provide an acceptable compromise, where access time is not equal for all members of a collection, but the maximum time to retrieve a given member grows only logarithmically with its size.


References


See also

-   Data stream
-   Random-access machine
-   Random-access memory although the cache and virtual memory make this no longer truly random access.
-   Locality of reference

Category:Computer memory

[1]

[2]

[3]