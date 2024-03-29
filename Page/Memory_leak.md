In computer science, a MEMORY LEAK is a type of resource leak that occurs when a computer program incorrectly manages memory allocations[1] in such a way that memory which is no longer needed is not released. A memory leak may also happen when an object is stored in memory but cannot be accessed by the running code.[2] A memory leak has symptoms similar to a number of other problems and generally can only be diagnosed by a programmer with access to the programs' source code.

A space leak occurs when a computer program uses more memory than necessary. In contrast to memory leaks, where the leaked memory is never released, the memory consumed by a space leak is released, but later than expected. [3]

Because they can exhaust available system memory as an application runs, memory leaks are often the cause of or a contributing factor to software aging.


Consequences

A memory leak reduces the performance of the computer by reducing the amount of available memory. Eventually, in the worst case, too much of the available memory may become allocated and all or part of the system or device stops working correctly, the application fails, or the system slows down vastly due to thrashing.

Memory leaks may not be serious or even detectable by normal means. In modern operating systems, normal memory used by an application is released when the application terminates. This means that a memory leak in a program that only runs for a short time may not be noticed and is rarely serious.

Much more serious leaks include those:

-   where the program runs for an extended time and consumes additional memory over time, such as background tasks on servers, but especially in embedded devices which may be left running for many years
-   where new memory is allocated frequently for one-time tasks, such as when rendering the frames of a computer game or animated video
-   where the program can request memory — such as shared memory — that is not released, even when the program terminates
-   where memory is very limited, such as in an embedded system or portable device
-   where the leak occurs within the operating system or memory manager
-   when a system device driver causes the leak
-   running on an operating system that does not automatically release memory on program termination.

An example of memory leak

The following example, written in pseudocode, is intended to show how a memory leak can come about, and its effects, without needing any programming knowledge. The program in this case is part of some very simple software designed to control an elevator. This part of the program is run whenever anyone inside the elevator presses the button for a floor.

When a button is pressed:
  Get some memory, which will be used to remember the floor number
  Put the floor number into the memory
  Are we already on the target floor?
    If so, we have nothing to do: finished
    Otherwise:
      Wait until the lift is idle
      Go to the required floor
      Release the memory we used to remember the floor number

The memory leak would occur if the floor number requested is the same floor that the elevator is on; the condition for releasing the memory would be skipped. Each time this case occurs, more memory is leaked.

Cases like this wouldn't usually have any immediate effects. People do not often press the button for the floor they are already on, and in any case, the elevator might have enough spare memory that this could happen hundreds or thousands of times. However, the elevator will eventually run out of memory. This could take months or years, so it might not be discovered despite thorough testing.

The consequences would be unpleasant; at the very least, the elevator would stop responding to requests to move to another floor (such as when an attempt is made to call the elevator or when someone is inside and presses the floor buttons). If other parts of the program need memory (a part assigned to open and close the door, for example), then someone may be trapped inside, or if no one is in, then no one would be able to use the elevator since the software cannot open the door.

The memory leak lasts until the system is reset. For example: if the elevator's power were turned off or in a power outage, the program would stop running. When power was turned on again, the program would restart and all the memory would be available again, but the slow process of memory leak would restart together with the program, eventually prejudicing the correct running of the system.

The leak in the above example can be corrected by bringing the 'release' operation outside of the conditional:

When a button is pressed:
  Get some memory, which will be used to remember the floor number
  Put the floor number into the memory
  Are we already on the target floor?
    If not:
      Wait until the lift is idle
      Go to the required floor
  Release the memory we used to remember the floor number


Programming issues

Memory leaks are a common error in programming, especially when using languages that have no built in automatic garbage collection, such as C and C++. Typically, a memory leak occurs because dynamically allocated memory has become unreachable. The prevalence of memory leak bugs has led to the development of a number of debugging tools to detect unreachable memory. _BoundsChecker_, _Deleaker_, _IBM Rational Purify_, _Valgrind_, _Parasoft Insure++_, _Dr. Memory_ and _memwatch_ are some of the more popular memory debuggers for C and C++ programs. "Conservative" garbage collection capabilities can be added to any programming language that lacks it as a built-in feature, and libraries for doing this are available for C and C++ programs. A conservative collector finds and reclaims most, but not all, unreachable memory.

Although the memory manager can recover unreachable memory, it cannot free memory that is still reachable and therefore potentially still useful. Modern memory managers therefore provide techniques for programmers to semantically mark memory with varying levels of usefulness, which correspond to varying levels of _reachability_. The memory manager does not free an object that is strongly reachable. An object is strongly reachable if it is reachable either directly by a strong reference or indirectly by a chain of strong references. (A _strong reference_ is a reference that, unlike a weak reference, prevents an object from being garbage collected.) To prevent this, the developer is responsible for cleaning up references after use, typically by setting the reference to null once it is no longer needed and, if necessary, by deregistering any event listeners that maintain strong references to the object.

In general, automatic memory management is more robust and convenient for developers, as they don't need to implement freeing routines or worry about the sequence in which cleanup is performed or be concerned about whether or not an object is still referenced. It is easier for a programmer to know when a reference is no longer needed than to know when an object is no longer referenced. However, automatic memory management can impose a performance overhead, and it does not eliminate all of the programming errors that cause memory leaks.


RAII

RAII, short for Resource Acquisition Is Initialization, is an approach to the problem commonly taken in C++, D, and Ada. It involves associating scoped objects with the acquired resources, and automatically releasing the resources once the objects are out of scope. Unlike garbage collection, RAII has the advantage of knowing when objects exist and when they do not. Compare the following C and C++ examples:

    /* C version */
    #include <stdlib.h>

    void f(int n)
    {
      int* array = calloc(n, sizeof(int));
      do_some_work(array);
      free(array);
    }

    // C++ version
    #include <vector>

    void f(int n)
    {
      std::vector<int> array (n);
      do_some_work(array);
    }

The C version, as implemented in the example, requires explicit deallocation; the array is dynamically allocated (from the heap in most C implementations), and continues to exist until explicitly freed.

The C++ version requires no explicit deallocation; it will always occur automatically as soon as the object array goes out of scope, including if an exception is thrown. This avoids some of the overhead of garbage collection schemes. And because object destructors can free resources other than memory, RAII helps to prevent the leaking of input and output resources accessed through a handle, which mark-and-sweep garbage collection does not handle gracefully. These include open files, open windows, user notifications, objects in a graphics drawing library, thread synchronisation primitives such as critical sections, network connections, and connections to the Windows Registry or another database.

However, using RAII correctly is not always easy and has its own pitfalls. For instance, if one is not careful, it is possible to create dangling pointers (or references) by returning data by reference, only to have that data be deleted when its containing object goes out of scope.

D uses a combination of RAII and garbage collection, employing automatic destruction when it is clear that an object cannot be accessed outside its original scope, and garbage collection otherwise.


Reference counting and cyclic references

More modern garbage collection schemes are often based on a notion of reachability – if you don't have a usable reference to the memory in question, it can be collected. Other garbage collection schemes can be based on reference counting, where an object is responsible for keeping track of how many references are pointing to it. If the number goes down to zero, the object is expected to release itself and allow its memory to be reclaimed. The flaw with this model is that it doesn't cope with cyclic references, and this is why nowadays most programmers are prepared to accept the burden of the more costly mark and sweep type of systems.

The following Visual Basic code illustrates the canonical reference-counting memory leak:

    Dim A, B
    Set A = CreateObject("Some.Thing")
    Set B = CreateObject("Some.Thing")
    ' At this point, the two objects each have one reference,

    Set A.member = B
    Set B.member = A
    ' Now they each have two references.

    Set A = Nothing   ' You could still get out of it...

    Set B = Nothing   ' And now you've got a memory leak!

    End

In practice, this trivial example would be spotted straight away and fixed. In most real examples, the cycle of references spans more than two objects, and is more difficult to detect.

A well-known example of this kind of leak came to prominence with the rise of AJAX programming techniques in web browsers in the lapsed listener problem. JavaScript code which associated a DOM element with an event handler, and failed to remove the reference before exiting, would leak memory (AJAX web pages keep a given DOM alive for a lot longer than traditional web pages, so this leak was much more apparent).


Effects

If a program has a memory leak and its memory usage is steadily increasing, there will not usually be an immediate symptom. Every physical system has a finite amount of memory, and if the memory leak is not contained (for example, by restarting the leaking program) it will eventually cause problems.

Most modern consumer desktop operating systems have both main memory which is physically housed in RAM microchips, and secondary storage such as a hard drive. Memory allocation is dynamic – each process gets as much memory as it requests. Active pages are transferred into main memory for fast access; inactive pages are pushed out to secondary storage to make room, as needed. When a single process starts consuming a large amount of memory, it usually occupies more and more of main memory, pushing other programs out to secondary storage – usually significantly slowing performance of the system. Even if the leaking program is terminated, it may take some time for other programs to swap back into main memory, and for performance to return to normal.

When all the memory on a system is exhausted (whether there is virtual memory or only main memory, such as on an embedded system) any attempt to allocate more memory will fail. This usually causes the program attempting to allocate the memory to terminate itself, or to generate a segmentation fault. Some programs are designed to recover from this situation (possibly by falling back on pre-reserved memory). The first program to experience the out-of-memory may or may not be the program that has the memory leak.

Some multi-tasking operating systems have special mechanisms to deal with an out-of-memory condition, such as killing processes at random (which may affect "innocent" processes), or killing the largest process in memory (which presumably is the one causing the problem). Some operating systems have a per-process memory limit, to prevent any one program from hogging all of the memory on the system. The disadvantage to this arrangement is that the operating system sometimes must be re-configured to allow proper operation of programs that legitimately require large amounts of memory, such as those dealing with graphics, video, or scientific calculations.

If the memory leak is in the kernel, the operating system itself will likely fail. Computers without sophisticated memory management, such as embedded systems, may also completely fail from a persistent memory leak.

Publicly accessible systems such as web servers or routers are prone to denial-of-service attacks if an attacker discovers a sequence of operations which can trigger a leak. Such a sequence is known as an exploit.

A "sawtooth" pattern of memory utilization may be an indicator of a memory leak within an application, particularly if the vertical drops coincide with reboots or restarts of that application. Care should be taken though because garbage collection points could also cause such a pattern and would show a healthy usage of the heap.


Other memory consumers

Note that constantly increasing memory usage is not necessarily evidence of a memory leak. Some applications will store ever increasing amounts of information in memory (e.g. as a cache). If the cache can grow so large as to cause problems, this may be a programming or design error, but is not a memory leak as the information remains nominally in use. In other cases, programs may require an unreasonably large amount of memory because the programmer has assumed memory is always sufficient for a particular task; for example, a graphics file processor might start by reading the entire contents of an image file and storing it all into memory, something that is not viable where a very large image exceeds available memory.

To put it another way, a memory leak arises from a particular kind of programming error, and without access to the program code, someone seeing symptoms can only guess that there _might_ be a memory leak. It would be better to use terms such as "constantly increasing memory use" where no such inside knowledge exists.


A simple example in C

The following C function deliberately leaks memory by losing the pointer to the allocated memory. The leak can be said to occur as soon as the pointer 'a' goes out of scope, i.e. when function_which_allocates() returns without freeing 'a'.

    #include <stdlib.h>

    void function_which_allocates(void) {
        /* allocate an array of 45 floats */
        float *a = malloc(sizeof(float) * 45);

        /* additional code making use of 'a' */

        /* return to main, having forgotten to free the memory we malloc'd */
    }

    int main(void) {
        function_which_allocates();

        /* the pointer 'a' no longer exists, and therefore cannot be freed,
         but the memory is still allocated. a leak has occurred. */
    }


See also

-   Buffer overflow
-   Memory management
-   Memory debugger
-   Plumbr is a popular memory leak detection tool for applications running on Java Virtual Machine
-   nmon (short for Nigel's Monitor) is a popular system monitor tool for the AIX and Linux operating systems.


References


External links

-   Visual Leak Detector for Visual Studio, open source
-   Valgrind, open source
-   Deleaker for Visual Studio, proprietary
-   [http://msdn2.microsoft.com/en-us/library/Aa293901(VS.60).aspx Detecting a Memory Leak] (Using MFC Debugging Support)
-   Article "Memory Leak Detection in Embedded Systems" by Cal Erickson

Category:Software bugs Category:Articles with example pseudocode Category:Software anomalies

[1]

[2]

[3]