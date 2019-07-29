In computer science, GARBAGE COLLECTION (GC) is a form of automatic memory management. The _garbage collector_, or just _collector_, attempts to reclaim _garbage_, or memory occupied by objects that are no longer in use by the program. Garbage collection was invented by John McCarthy around 1959 to simplify manual memory management in Lisp.[1][2]

Garbage collection is essentially the opposite of manual memory management, which requires the programmer to specify which objects to deallocate and return to the memory system. However, many systems use a combination of approaches, including other techniques such as stack allocation and region inference. Like other memory management techniques, garbage collection may take a significant proportion of total processing time in a program and, as a result, can have significant influence on performance. With good implementations and with enough memory, depending on application, garbage collection can be faster than manual memory management, while the opposite can also be true and has often been the case in the past with sub-optimal GC algorithms.

Resources other than memory, such as network sockets, database handles, user interaction windows, file and device descriptors, are not typically handled by garbage collection. Methods used to manage such resources, particularly destructors, may suffice to manage memory as well, leaving no need for GC. Some GC systems allow such other resources to be associated with a region of memory that, when collected, causes the resource to be reclaimed; this is called _finalization_. Finalization may introduce complications limiting its usability, such as intolerable latency between disuse and reclaim of especially limited resources, or a lack of control over which thread performs the work of reclaiming.


Principles

The basic principles of garbage collection are to find data objects in a program that cannot be accessed in the future, and to reclaim the resources used by those objects.

Many programming languages require garbage collection, either as part of the language specification (for example, Java, C#, D,[3] Go and most scripting languages) or effectively for practical implementation (for example, formal languages like lambda calculus); these are said to be _garbage collected languages_. Other languages were designed for use with manual memory management, but have garbage-collected implementations available (for example, C and C++). Some languages, like Ada, Modula-3, and C++/CLI, allow both garbage collection and manual memory management to co-exist in the same application by using separate heaps for collected and manually managed objects; others, like D, are garbage-collected but allow the user to manually delete objects and also entirely disable garbage collection when speed is required.

While integrating garbage collection into the language's compiler and runtime system enables a much wider choice of methods, _post-hoc_ GC systems exist, such as Automatic Reference Counting (ARC), including some that do not require recompilation. (_Post-hoc_ GC is sometimes distinguished as _litter collection_.) The garbage collector will almost always be closely integrated with the memory allocator.

Advantages

Garbage collection frees the programmer from manually dealing with memory deallocation. As a result, certain categories of bugs are eliminated or substantially reduced:

-   _Dangling pointer bugs_, which occur when a piece of memory is freed while there are still pointers to it, and one of those pointers is dereferenced. By then the memory may have been reassigned to another use, with unpredictable results.
-   _Double free bugs_, which occur when the program tries to free a region of memory that has already been freed, and perhaps already been allocated again.
-   Certain kinds of _memory leaks_, in which a program fails to free memory occupied by objects that have become unreachable, which can lead to memory exhaustion. (Garbage collection typically does not deal with the unbounded accumulation of data that is reachable, but that will actually not be used by the program.)
-   Efficient implementations of persistent data structures

Some of the bugs addressed by garbage collection have security implications.

Disadvantages

Typically, garbage collection has certain disadvantages, including consuming additional resources, performance impacts, possible stalls in program execution, and incompatibility with manual resource management.

Garbage collection consumes computing resources in deciding which memory to free, even though the programmer may have already known this information. The penalty for the convenience of not annotating object lifetime manually in the source code is overhead, which can lead to decreased or uneven performance.[4] A peer-reviewed paper came to the conclusion that GC needs five times the memory to compensate for this overhead and to perform as fast as explicit memory management.[5] Interaction with memory hierarchy effects can make this overhead intolerable in circumstances that are hard to predict or to detect in routine testing. The impact on performance was also given by Apple as a reason for not adopting garbage collection in iOS despite being the most desired feature.[6]

The moment when the garbage is actually collected can be unpredictable, resulting in stalls (pauses to shift/free memory) scattered throughout a session. Unpredictable stalls can be unacceptable in real-time environments, in transaction processing, or in interactive programs. Incremental, concurrent, and real-time garbage collectors address these problems, with varying trade-offs.

The modern GC implementations try to minimize blocking "stop-the-world" stalls by doing as much work as possible on the background (i.e. on a separate thread), for example marking unreachable garbage instances while the application process continues to run. In spite of these advancements, for example in the .NET CLR paradigm it is still very difficult to maintain large heaps (millions of objects) with resident objects that get promoted to older generations without incurring noticeable delays (sometimes a few seconds).

The need for explicit manual resource management (release/close) for non-GCed resources in an object oriented language becomes transitive to composition. That is: in a non-deterministic GC system, if a resource or a resource-like object requires manual resource management (release/close), and this object is used as "part of" another object, then the composed object will also become a resource-like object that itself requires manual resource management (release/close).


Strategies

Tracing

Tracing garbage collection is the most common type of garbage collection, so much so that "garbage collection" often refers to tracing garbage collection, rather than other methods such as reference counting. The overall strategy consists of determining which objects should be garbage collected by tracing which objects are _reachable_ by a chain of references from certain root objects, and considering the rest as garbage and collecting them. However, there are a large number of algorithms used in implementation, with widely varying complexity and performance characteristics.

Reference counting

Reference counting garbage collection is where each object has a count of the number of references to it. Garbage is identified by having a reference count of zero. An object's reference count is incremented when a reference to it is created, and decremented when a reference is destroyed. When the count reaches zero, the object's memory is reclaimed. [7]

As with manual memory management, and unlike tracing garbage collection, reference counting guarantees that objects are destroyed as soon as their last reference is destroyed, and usually only accesses memory which is either in CPU caches, in objects to be freed, or directly pointed by those, and thus tends to not have significant negative side effects on CPU cache and virtual memory operation.

There are a number of disadvantages to reference counting; this can generally be solved or mitigated by more sophisticated algorithms:

Cycles: If two or more objects refer to each other, they can create a cycle whereby neither will be collected as their mutual references never let their reference counts become zero. Some garbage collection systems using reference counting (like the one in CPython) use specific cycle-detecting algorithms to deal with this issue.[8] Another strategy is to use weak references for the "backpointers" which create cycles. Under reference counting, a weak reference is similar to a weak reference under a tracing garbage collector. It is a special reference object whose existence does not increment the reference count of the referent object. Furthermore, a weak reference is safe in that when the referent object becomes garbage, any weak reference to it _lapses_, rather than being permitted to remain dangling, meaning that it turns into a predictable value, such as a null reference.
Space overhead (reference count): Reference counting requires space to be allocated for each object to store its reference count. The count may be stored adjacent to the object's memory or in a side table somewhere else, but in either case, every single reference-counted object requires additional storage for its reference count. Memory space with the size of an unsigned pointer is commonly used for this task, meaning that 32 or 64 bits of reference count storage must be allocated for each object. On some systems, it may be possible to mitigate this overhead by using a tagged pointer to store the reference count in unused areas of the object's memory. Often, an architecture does not actually allow programs to access the full range of memory addresses that could be stored in its native pointer size; certain number of high bits in the address is either ignored or required to be zero. If an object reliably has a pointer at a certain location, the reference count can be stored in the unused bits of the pointer. For example, each object in Objective-C has a pointer to its class at the beginning of its memory; on the ARM64 architecture using iOS 7, 19 unused bits of this class pointer are used to store the object's reference count.[9][10]
Speed overhead (increment/decrement): In naive implementations, each assignment of a reference and each reference falling out of scope often require modifications of one or more reference counters. However, in the common case, when a reference is copied from an outer scope variable into an inner scope variable, such that the lifetime of the inner variable is bounded by the lifetime of the outer one, the reference incrementing can be eliminated. The outer variable "owns" the reference. In the programming language C++, this technique is readily implemented and demonstrated with the use of const references. Reference counting in C++ is usually implemented using "smart pointers"[11] whose constructors, destructors and assignment operators manage the references. A smart pointer can be passed by reference to a function, which avoids the need to copy-construct a new smart pointer (which would increase the reference count on entry into the function and decrease it on exit). Instead the function receives a reference to the smart pointer which is produced inexpensively.
Requires atomicity: When used in a multithreaded environment, these modifications (increment and decrement) may need to be atomic operations such as compare-and-swap, at least for any objects which are shared, or potentially shared among multiple threads. Atomic operations are expensive on a multiprocessor, and even more expensive if they have to be emulated with software algorithms. It is possible to avoid this issue by adding per-thread or per-CPU reference counts and only accessing the global reference count when the local reference counts become or are no longer zero (or, alternatively, using a binary tree of reference counts, or even giving up deterministic destruction in exchange for not having a global reference count at all), but this adds significant memory overhead and thus tends to be only useful in special cases (it is used, for example, in the reference counting of Linux kernel modules).
Not real-time: Naive implementations of reference counting do not in general provide real-time behavior, because any pointer assignment can potentially cause a number of objects bounded only by total allocated memory size to be recursively freed while the thread is unable to perform other work. It is possible to avoid this issue by delegating the freeing of objects whose reference count dropped to zero to other threads, at the cost of extra overhead.

Escape analysis

Escape analysis is a compile-time technique that can convert heap allocations to stack allocations, thereby reducing the amount of garbage collection to be done. This analysis determines whether an object allocated inside a function is accessible outside of it. If a function-local allocation is found to be accessible to another function or thread, the allocation is said to “escape” and cannot be done on the stack. Otherwise, the object may be allocated directly on the stack and released when the function returns, bypassing the heap and associated memory management costs.[12]


Availability

Generally speaking, higher-level programming languages are more likely to have garbage collection as a standard feature. In some languages that do not have built in garbage collection, it can be added through a library, as with the Boehm garbage collector for C and C++.

Most functional programming languages, such as ML, Haskell, and APL, have garbage collection built in. Lisp is especially notable as both the first functional programming language and the first language to introduce garbage collection.[13]

Other dynamic languages, such as Ruby and Julia (but not Perl 5 or PHP before version 5.3,[14] which both use reference counting), JavaScript and ECMAScript also tend to use GC. Object-oriented programming languages such as Smalltalk and Java usually provide integrated garbage collection. Notable exceptions are C++ and Delphi which have destructors.

BASIC

Historically, languages intended for beginners, such as BASIC and Logo, have often used garbage collection for heap-allocated variable-length data types, such as strings and lists, so as not to burden programmers with manual memory management. On early microcomputers, with their limited memory and slow processors, BASIC garbage collection could often cause apparently random, inexplicable pauses in the midst of program operation.

Some BASIC interpreters, such as Applesoft BASIC on the Apple II family, repeatedly scanned the string descriptors for the string having the highest address in order to compact it toward high memory, resulting in O(n²) performance, which could introduce minutes-long pauses in the execution of string-intensive programs. A replacement garbage collector for Applesoft BASIC published in Call-A.P.P.L.E. (January 1981, pages 40–45, Randy Wigginton) identified a group of strings in every pass over the heap, which cut collection time dramatically. BASIC.System, released with ProDOS in 1983, provided a windowing garbage collector for BASIC that reduced most collections to a fraction of a second.

Objective-C

While the Objective-C traditionally had no garbage collection, with the release of OS X 10.5 in 2007 Apple introduced garbage collection for Objective-C 2.0, using an in-house developed runtime collector.[15] However, with the 2012 release of OS X 10.8, garbage collection was deprecated in favor of LLVM's automatic reference counter (ARC) that was introduced with OS X 10.7.[16] Furthermore, since May 2015 Apple even forbids the usage of garbage collection for new OS X applications in the App Store.[17][18] For iOS, garbage collection has never been introduced due to problems in application responsivity and performance;[19][20] instead, iOS uses ARC.[21][22]

Limited environments

Garbage collection is rarely used on embedded or real-time systems because of the perceived need for very tight control over the use of limited resources. However, garbage collectors compatible with such limited environments have been developed.[23] The Microsoft .NET Micro Framework, .NET nanoFramework and Java Platform, Micro Edition are embedded software platforms that, like their larger cousins, include garbage collection.

Garbage Collectors for JDK

Among the most popular Garbage Collectors for JDK could be named:

-   G1

-   Parallel

-   Concurrent mark sweep collector (CMS)

-   Serial

-   Shenandoah

Commonly people compare Garbage Collectors in terms of RAM consumption optimization and receive different results. [24]

Compile-time use

Compile-time garbage collection is a form of static analysis allowing memory to be reused and reclaimed based on invariants known during compilation.

This form of garbage collection has been studied in the Mercury programming language,[25] and it saw greater usage with the introduction of LLVM's automatic reference counter (ARC) into Apple's ecosystem (iOS and OS X) in 2011.[26][27][28]

Real-time systems

Incremental, concurrent, and real-time garbage collectors have been developed, such as Baker's algorithm or Lieberman's algorithm.[29][30][31]

In Baker's algorithm, the allocation is done in either half of a single region of memory. When it becomes half full, a garbage collection is performed which moves the live objects into the other half and the remaining objects are implicitly deallocated. The running program (the 'mutator') has to check that any object it references is in the correct half, and if not move it across, while a background task is finding all of the objects.[32]

Generational garbage collection schemes are based on the empirical observation that most objects die young. In generational garbage collection two or more allocation regions (generations) are kept, which are kept separate based on object's age. New objects are created in the "young" generation that is regularly collected, and when a generation is full, the objects that are still referenced from older regions are copied into the next oldest generation. Occasionally a full scan is performed.

Some high-level language computer architectures include hardware support for real-time garbage collection.

Most implementations of real-time garbage collectors use tracing. Such real-time garbage collectors meet hard real-time constraints when used with a real-time operating system.[33]


See also

-   Destructor (computer programming)
-   International Symposium on Memory Management
-   Memory management
-   Dead-code elimination
-   Smart pointer
-   Virtual memory compression


References


Further reading

-   -   -   -


External links

-   The Memory Management Reference
-   The Very Basics of Garbage Collection
-   Java SE 6 HotSpot™ Virtual Machine Garbage Collection Tuning
-   TinyGC - an independent implementation of the BoehmGC API
-   Conservative Garbage Collection Implementation for C Language
-   MeixnerGC - an incremental mark and sweep garbage collector for C++ using smart pointers

Category:Memory management * Category:Articles with example code Category:Solid-state computer storage

[1]

[2]

[3]

[4]

[5]

[6]

[7] Reference Counting Garbage Collection

[8]

[9]

[10]

[11] RAII, Dynamic Objects, and Factories in C++, Roland Pibinger, 3 May 2005

[12]

[13]

[14]

[15] Objective-C 2.0 Overview

[16] Mac OS X 10.7 Lion: the Ars Technica review John Siracusa (20 Juli 2011)

[17]

[18]

[19]

[20]

[21]

[22]

[23]

[24]

[25]

[26]

[27]

[28] Apple says Mac app makers must transition to ARC memory management by May by AppleInsider (February 20, 2015)

[29] Lorenz Huelsbergen, Phil Winterbottom. "Very Concurrent Mark-&-Sweep Garbage Collection without Fine-Grain Synchronization". 1998.

[30] "GC FAQ".

[31] Henry Lieberman. A Real-Time Garbage Collector Based on the Lifetimes of Objects

[32] Baker, H.G. List processing in real time on a serial computer. Commun. ACM 21, 4 (April 1978) 280- 294. see also description

[33] McCloskey, Bacon, Cheng, Grove."Staccato: A Parallel and Concurrent Real-time Compacting Garbage Collector for Multiprocessors". 2008.