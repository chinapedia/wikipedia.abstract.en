PRIVATIZATION is a technique used in shared-memory programming to enable parallelism, by removing dependencies that occur across different threads in a parallel program. Dependencies within threads occur due to the presence of variables that are written and/or read by different threads at the same time during execution. This basic principle of this technique is making private copies of a variable shared by multiple threads, hence making each thread capable to operate on its local copy of this variable rather than a shared one.[1]

For a variable to be shared or private, is specified by the parallel algorithm. Hence, declaring a variable as shared while the algorithm specifies otherwise or vice versa is one of most common errors that might appear in shared-memory programming.[2]

Traditional compilers used in parallelization were able to perform privatization on scalar elements only. In order to exploit parallelism that occurs across loops within a parallel program (loop-level parallelism), the need rose for compilers that are able to perform array variable privatization as well.[3] Hence, most of today's compilers are capable of performing array privatization with more features and functions to enhance the performance of the parallel program in general. An example of such compiler is the Polaris parallelizing compiler [4]


Description

_A Shared-Memory Multiprocessor_ is defined as "A computer system composed of multiple independent processors that execute different instruction streams".[5] The Shared memory programming model is the major and most widely used model in the design space of Shared-Memory Multiprocessors.[6] This programming model starts with the identification of parallelism within a piece of code (recognition of parallel tasks) and then mapping these tasks into threads.

The next step is Determining the Scope of Variables used in a parallel program, which is one of the key steps and main concerns within this model.

Determining the Scope of Variables

As mentioned before, after the programming model identifies all parallel tasks within our parallel program, the next step would be grouping these tasks into bigger tasks, as there typically would be more tasks than the available processors within our system. Typically, the number of execution threads that the tasks are assigned to, is chosen to be less than or equal to the number of processors, with each thread assigned to a unique processor.[7]

Right after this step, the use of variables within our identified parallel tasks need to be analyzed. This step determines whether each variable within the parallel task should be shared-by-all or private-to-each thread (Determining the scope of the variable).[8] It is important to note that this particular step is unique to shared-memory programming, as opposed to the other major programming model (message-passing), in which all variables are private since each process has its own address space.[9]

According to their behavior, the variables are then categorized into:

_READ-ONLY:_ when a variable is only read by all the parallel tasks.

_READ/WRITE NON-CONFLICTING:_ when a variable is read, written, or both by only one task. In the case when the variable is a matrix, different elements are read/written by different parallel tasks.

_READ/WRITE CONFLICTING_: when a variable is written by a task and may be read by another. If the variable is a matrix or array, different elements are read/written by different parallel tasks.

As it appears from their definition, Read/Write Conflicting variables result in dependencies across different execution threads and hence prevent the parallelization of the program. The two major techniques used to remove these dependencies are _PRIVATIZATION_ and _REDUCTION._ In _Reduction,_ each thread is provided with a copy of the R/W conflicting variable to operate on it and produce a partial result, which will then be combined with other threads' copies to produce a global result.[10] Another technique similar to Privatization is called _EXPANSION_, in which a scalar variable is expanded into an array, which makes each thread access a different array element when trying to access the variable.[11] If the variable to be expanded is already a matrix, then expansion adds another dimension to the matrix.[12]

Privatization

As it was previously mentioned, dependencies or conflicts between different threads during execution stops parallelization, and these conflicts appear when we have read/write conflicting variables. One technique to remove this conflict is PRIVATIZATION. As the name suggests, the basic principle involves making (Private) copies for each thread to operate on, rather than the shared copy that causes the conflict. Hence, changing the type of the variable from Read/Write conflicting to Read/Write Non conflicting.

The actual local (private) copies of the read/write conflicting variable are created during compile time, by compiling the variable into several variables stored at different memory locations. The architecture of shared-memory multiprocessors aids in this process as threads can address any memory location by default.

There are two situations in which a variable can be described as "PRIVATIZABLE":

The first situation is when the variable is (written) before it's being (read) by the parallel task during the original program's sequential order. In this case, if the task wrote to its (private) copy rather than the shared one, the conflict/dependency will be removed. The reason for this is that the program's sequential order will ensures that the value read by the task will be the one written by the same task; removing any conflicts that might occur due to other threads accessing the same variable. This is more explained in the following EXAMPLE 1.

In the second situation, the read happens before the write for the variable within the parallel task, but the difference here is that the value the parallel task is trying to read is a value previously know from the program execution. Taking this note into consideration, if each parallel task wrote to its own private copy of the variable, any conflicts or dependencies will be solved during execution, as they would all read a value known ahead of time and them write their correct values on their own copies. This case is more explained in the following EXAMPLE 2.

Due to the fact that read/write conflicting variables are the only reason to hold parallelization, there is no actual need to declare (read-only) and (read/write non-conflicting) variables as private. However, doing so, won't affect the correctness of the program, but will add unnecessary memory overhead.

Cases where Privatization and Reduction doesn't apply

There are cases when a certain variable can't be privatized nor reduced to remove the read/write conflict. In these cases, the read/write conflicting variable need to be updated by different tasks at different points of time. An example of this case is explained in EXAMPLE 3.

One way to solve this problem, is changing the scope of parallelism to explore a different parallel region. This technique might produce good results, as it's often that after reanalyzing the code, some read/write conflicting variables may change to read/write non-conflicting.[13] If the variable still causes conflicts among different threads, the last resort will be declaring it as shared and protecting its access by the critical section, and providing synchronization if accesses to the variable need to happen in order to ensure the correctness..

Scalar vs. Array Variables Privatization

As it appears from the previous variables’ definitions, the Read/Write Conflicting variables can either be scalars or arrays. Hence, Privatization can be applied on both types of variables.

When applied to scalar variables, the additional space and overhead introduced by making the extra private copies per threads is relatively small.[14] However, applying privatization on array elements is much more complex.

When dealing with arrays, the compiler tries to analyze the behavior of each array element separately and check for the order it's (read) and/or (written). If each element is being (written to) before it's being (read) in the same loop iteration, then this array can be privatized to remove conflicts and enable privatization. To be able to privatize such array, the compiler needs to further analyze the array to combine its accesses into sections. Moreover, the compiler should have extra functions, to be able to manipulate and deal with the array elements. For example, some array expressions may have symbolic terms, hence, to be able to privatize such array, the compiler needs to have some advanced symbolic manipulation functions.[15]


Examples

Example 1

There are several situations in which it is appropriate to privatize a variable. The first case is when each thread will write to the variable before reading from it. In this case, it does not matter what the other threads are doing because the current thread always writes to the variable before reading (using) it. See the simple example below in which the variable "x" is used as a "temp" variable to help swaps 3 different pair of variables. Because variable x is always written to before being used, variable x can be privatized.

    //Sequential Code:
    //Swap Function
    //Assume the variables have already been initialized
    x = a;
    a = b;
    b = x;

    x = c;
    c = d;
    d = x;

    x = e;
    e = f;
    b = x;

The block above is the sequential code. Notice that without privatizing the variable "x", the code could not be parallelized. The code below shows what is possible by parallelizing "x". The code can be split up and run on 3 different threads. Each thread has its own copy of "x".

    //Parallel Code:
    //Swap Function
    //Assume the variables have already been initialized

    Thread 1:
    x = a;
    a = b;
    b = x;

    Thread 2:
    x' = c;
    c = d;
    d = x’;

    Thread 3:
    x'’ = e;
    e = f;
    b = x''

Example 2

Another case in which privatization is possible is when a variables value is known before it is used – even if it is not redefined by the same thread. The example below demonstrates this. The variable "x" is redefined in the middle of each thread, however, the value that it is redefined as is known when the program was written. By making "x" private and defining it at the beginning of each thread, the code can be run in parallel. The example below first shows the sequential code and then how it can parallelized with the help of privatization.

    //Sequential Code:
    //Assume the variables have already been declared
    x = 1;
    y = x * 3;
    x = 4;
    z = y/x;

    a = x * 9;
    x = 3;
    b = a/x;

    c = x * 1;
    x = 11;
    d = c/x;

Notice that in order to make the sequential code above parallel, a few extra lines of code had to be added so that "x" could be privatized. Because of this, this example may not actually see much of a speed up. However, in larger/longer examples this technique could help improve performance a lot.

    //Parallel Code:
    //Assume the variables have already been declared
    x = 1;
    y = x * 3;
    x = 4;
    z = y/x;

    x’ = 4;
    a = x’ * 9;
    x’ = 3;
    b = a/x’;

    x’’ = 3;
    c = x’’ * 1;
    x’’ = 11;
    d = c/x’’;

Example 3

One example when privatization fails is when a value is written in one task and read in another and the value is not known ahead of time. Take this example of summing an array. The sum is a shared variable and is read/written in each iteration of the loop. In sequential code, this works fine. However, if you try to parallelize the loops (each loop a different thread), then the wrong sum would be calculated. In this case, privatization does not work. You cannot privatize the sum because they each rely on each other. While there are techniques to still parallelize this code, simple privatization does not work.

    //Sequential Code:
    //Assume the variables have already been declared

    sum = 0;
    for (int i = 0; i < 10; i++) {
        sum = sum + a[i];
    }


Privatization in Open MP

OpenMP is a programming language that supports multiprocessor programming with shared memory. Because of this, read/write conflicting variables will undoubtedly occur. In these cases, _PRIVATIZATION_ can sometimes be used to allow parallel execution of the code. The example below shows 2 different examples of code. The first example is the original code written sequentially. This example includes a dependence which would normally prevent the code to be run in parallel. The second example, shows the code parallelized and the privatization technique used to remove the dependence.[16]

    //Sequential Code:
    //Assume the variables have already been initialized
      do i = 10, N - 1
           x = (b(i) + c(i))/2
           b(i) = a(i + 1) + x
      enddo

For each iteration of the loop above, x is assigned and then read. Because x is only a single variable, the loop cannot be executed in parallel because it would constantly be overwritten and b(i) would not always be assigned the correct value.[17]

    //Parallel Code:
    //Assume the variables have already been initialized
      !$omp parallel do shared(a, b) private(x)
      do i = 10, N - 1
           x = (b(i) + c(i))/2
           b(i) = a(i + 1) + x
      enddo

For the parallel code, x is declared as private which means each thread gets its own copy and the dependence is therefore removed.


Comparison with Other Techniques

Normally, when a variable is read/write conflicting, the solution will be declaring it as shared and protecting access to it by the critical section, and providing synchronization when needed. Due to the fact that adding more elements into the critical section decreases the overall system performance, this technique is avoided as much as possible.

Thus, the variable is checked if it can be reduced first. If it can't be reduced, the variable is checked for Privatization, taken into consideration whether it's more tolerable to add the extra private copies or serialize access to the variable through the critical section.

When compared with REDUCTION, privatization requires one task instead of two separate tasks in the case of privatization. This task, in an abstract form, is basically analyzing the code to identify the privatizable variables. On the other hand, the two tasks required by Reduction are: identifying the reduction variable, and then parallelizing the reduction operator.[18] By observing each of the two techniques, it's easy tell what type of overhead each one adds to the parallel program; reduction increases the computation overhead while privatization increases the memory consumed by the program.[19]

When compared to EXPANSION, the difference here is that expansion produces more memory overhead. The reason for this is that the memory space needed for privatization is proportional to the number of processors, while in expansion, it's proportional to the number of loop iterations.[20] As it was previously mentioned, the number of tasks is typically higher than the number of processors available, which makes memory required here much larger than what is required for privatization.

As previously mentioned, changing the scope of parallelism to explore a different parallel region is also one of the techniques used to enable parallelization. Changing the scope in which the parallel tasks are identified might sometimes greatly change the behavior of the variables. Hence, reanalyzing the code and performing this technique may often change read/write conflicting variables into non-conflicting.[21]


See also

-   Parallel computing
-   OpenMP
-   Critical section
-   Loop-level parallelism


References

Category:Computer programming

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