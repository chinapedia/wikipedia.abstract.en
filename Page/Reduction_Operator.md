In computer science, the REDUCTION OPERATOR[1] is a special type of operator that is both associative and commutative.[2][3][4] This type of operator is commonly used in parallel programming to reduce the elements of an array into a single result.


Background

In shared memory parallel programming, the main criterion is to have parallel threads in the program. In order to run sections in parallel, they shouldn't have a dependence relationship, as sections with dependence relationships cannot run in parallel. If there's a R/W Conflicting dependence in variable reduction, an operation can be performed to remove the dependency and to make private copies of the variable.

A reduction operator can help break down a task into various partial tasks by calculating partial results which can be used to obtain a final result. It allows certain serial operations to be performed in parallel, thereby reducing the number of steps required for certain operations. A reduction operator breaks a serial task into various partial tasks and stores the result into a private copy of the variable. These private copies are then merged into a shared copy at the end.

An operator can be a reduction operator if:

-   It can reduce an array into a single scalar value.[5] (Refer to example below)
-   The final result obtained should be from the partial tasks that were created.[6]

These two requirements are satisfied for elements if the operations performed are "Commutative" and "Associative" (See the examples section).

These properties are described as:

-   Commutative: An operator is commutative if it satisfies the condition:

_a ° b = b ° a_

-   Associative: An operator is associative if it satisfies the condition:

_(a ° b) ° c = a ° (b ° c)_

Some operators which satisfy this are sum (addition), product (multiplication), and logical operators (and, or, etc.). An OpenMP user can specify the reduction operator and the variable being reduced using the _reduction_ clause.[7] If an operator is not in OpenMP, the code will need to be modified and the operator should be expressed as a reduction operator.

Reduction helps to remove the data dependencies in the section and can allow multiple threads to run at the same time thus parallelizing the task.


Examples

Addition

Suppose we have an array [5, 7, 1, 4, 6, 8, 2, 3]. The sum of this array can be computed serially by sequentially reducing the array into a single sum using the '+' operator. Starting the summation from the beginning of the array yields:

((((((5 + 7) + 1) + 4) + 6) + 8) + 2) + 3 = 36

Since '+' is both commutative and associative, it is a reduction operator. Therefore this reduction can be performed in parallel using several cores, where each core computes the sum of a subset of the array, and the reduction operator merges the results. Using a binary tree reduction would allow 4 cores to compute (5 + 7), (1 + 4), (6 + 8), and (2 + 3). Then two cores can compute (12 + 5) and (14 + 5), and lastly a single core computes (17 + 19) = 36. So a total of 4 cores can be used to compute the sum in log₂8 = 3 steps instead of the 7 steps required for the serial version. This parallel binary tree technique computes ((5 + 7) + (1 + 4)) + ((6 + 8) + (2 + 3)). Of course the result is the same, but only because of the associativity of the reduction operator. The commutativity of the reduction operator would be important if there were a master core distributing work to several processors, since then the results could arrive back to the master processor in any order. The property of commutativity guarantees that the result will be the same.

The pseudo-code for a basic binary tree parallel reduction algorithm is shown here:

    //Note: length must be a power of 2
    int parallel_sum(int * array, int length) {
        int my_rank = get_rank();
        int num_values = length;
        int shift = 1;
        while(num_values != 1) {
            if(my_rank % shift == 0) {
                array[2 * my_rank] += array[2 * my_rank + shift];
            }
            shift = 2 * shift;
            num_values = num_values / 2;
            BARRIER();
        }
        if(my_rank == 0) {
            printf("Sum = %d\n", array[0]);
        }
    }

    int array[] = {5,7,1,4,6,8,2,3};
    //launch 4 threads to execute the parallel_sum function
    //with array and 8 as parameters:
    launch_threads(8/2, parallel_sum, array, 8);

Note that this algorithm stores the partial sums by overwriting portions of the original array, and the final result is found in the first element.

Multiplication

Real number multiplication (×) is also a reduction operator since it is both associative and commutative. Thus a similar procedure as shown for addition can be performed in order to find the product of every element of a numeric array in parallel.


Nonexample

Matrix Multiplication

Matrix multiplication is NOT a reduction operator since the operation is not commutative. If processes were allowed to return their matrix multiplication results in any order to the master process, the final result that the master computes will likely be incorrect if the results arrived out of order. However, note that matrix multiplication is associative, and therefore the result would be correct as long as the proper ordering were enforced, as in the binary tree reduction technique.


See also

Fold (higher-order function)


References


Books

-   -


External links

-   Reduction Clause, Reference to reduction clause

Category:Computer science

[1] Reduction Clause

[2] Solihin

[3] Chandra p. 59

[4]

[5]

[6]

[7]