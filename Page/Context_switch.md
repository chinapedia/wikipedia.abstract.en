In computing, a CONTEXT SWITCH is the process of storing the state of a process or of a thread, so that it can be restored and execution resumed from the same point later. This allows multiple processes to share a single CPU, and is an essential feature of a multitasking operating system.

The precise meaning of the phrase “context switch” varies significantly in usage. In a multitasking context, it refers to the process of storing the system state for one task, so that task can be paused and another task resumed. A context switch can also occur as the result of an interrupt, such as when a task needs to access disk storage, freeing up CPU time for other tasks. Some operating systems also require a context switch to move between user mode and kernel mode tasks. The process of context switching can have a negative impact on system performance, although the size of this effect depends on the nature of the switch being performed.


Cost

Context switches are usually computationally intensive, and much of the design of operating systems is to optimize the use of context switches. Switching from one process to another requires a certain amount of time for doing the administration saving and loading registers and memory maps, updating various tables and lists, etc. What is actually involved in a context switch varies between these senses and between processors and operating systems. For example, in the Linux kernel, context switching involves switching registers, stack pointer, and program counter, but is independent of address space switching, though in a process switch an address space switch also happens.[1][2] Further still, analogous context switching happens between user threads, notably green threads, and is often very light-weight, saving and restoring minimal context. In extreme cases, such as switching between goroutines in Go, a context switch is equivalent to a coroutine yield, which is only marginally more expensive than a subroutine call.


When to switch

There are three potential triggers for a context switch:

Multitasking

Most commonly, within some scheduling scheme, one process must be switched out of the CPU so another process can run. This context switch can be triggered by the process making itself unrunnable, such as by waiting for an I/O or synchronization operation to complete. On a pre-emptive multitasking system, the scheduler may also switch out processes which are still runnable. To prevent other processes from being starved of CPU time, preemptive schedulers often configure a timer interrupt to fire when a process exceeds its time slice. This interrupt ensures that the scheduler will gain control to perform a context switch.

Interrupt handling

Modern architectures are interrupt driven. This means that if the CPU requests data from a disk, for example, it does not need to busy-wait until the read is over; it can issue the request and continue with some other execution. When the read is over, the CPU can be _interrupted_ and presented with the read. For interrupts, a program called an _interrupt handler_ is installed, and it is the interrupt handler that handles the interrupt from the disk.

When an interrupt occurs, the hardware automatically switches a part of the context (at least enough to allow the handler to return to the interrupted code). The handler may save additional context, depending on details of the particular hardware and software designs. Often only a minimal part of the context is changed in order to minimize the amount of time spent handling the interrupt. The kernel does not spawn or schedule a special process to handle interrupts, but instead the handler executes in the (often partial) context established at the beginning of interrupt handling. Once interrupt servicing is complete, the context in effect before the interrupt occurred is restored so that the interrupted process can resume execution in its proper state.

User and kernel mode switching

When a transition between user mode and kernel mode is required in an operating system, a context switch is not necessary; a mode transition is _not_ by itself a context switch. However, depending on the operating system, a context switch may also take place at this time.


Steps

In a switch, the state of process currently executing must be saved somehow, so that when it is rescheduled, this state can be restored.

The process state includes all the registers that the process may be using, especially the program counter, plus any other operating system specific data that may be necessary. This is usually stored in a data structure called a _process control block_ (PCB) or _switchframe_.

The PCB might be stored on a per-process stack in kernel memory (as opposed to the user-mode call stack), or there may be some specific operating system defined data structure for this information. A handle to the PCB is added to a queue of processes that are ready to run, often called the _ready queue_.

Since the operating system has effectively suspended the execution of one process, it can then switch context by choosing a process from the ready queue and restoring its PCB. In doing so, the program counter from the PCB is loaded, and thus execution can continue in the chosen process. Process and thread priority can influence which process is chosen from the ready queue (i.e., it may be a priority queue).


Performance

Context switching itself has a cost in performance, due to running the task scheduler, TLB flushes, and indirectly due to sharing the CPU cache between multiple tasks.[3] Switching between threads of a single process can be faster than between two separate processes, because threads share the same virtual memory maps, so a TLB flush is not necessary.[4]

Hardware vs. software

Context switching can be performed primarily by software or hardware. Some processors, like the Intel 80386 and its successors,[5] have hardware support for context switches, by making use of a special data segment designated the task state segment or TSS. A task switch can be explicitly triggered with a CALL or JMP instruction targeted at a TSS descriptor in the global descriptor table. It can occur implicitly when an interrupt or exception is triggered if there's a task gate in the interrupt descriptor table. When a task switch occurs the CPU can automatically load the new state from the TSS.

As with other tasks performed in hardware, one would expect this to be rather fast; however, mainstream operating systems, including Windows and Linux,[6] do not use this feature. This is mainly due to two reasons:

-   Hardware context switching does not save all the registers (only general purpose registers, not floating point registers — although the TS bit is automatically turned on in the CR0 control register, resulting in a fault when executing floating point instructions and giving the OS the opportunity to save and restore the floating point state as needed).
-   Associated performance issues, e.g., software context switching can be selective and store only those registers that need storing, whereas hardware context switching stores nearly all registers whether they are required or not.


See also

-   Latency (engineering)


References


External links

-   Context Switching at OSDev.org
-   Context Switch Definition by The Linux Information Project (LINFO)
-   Context Switches from the Microsoft Developer Network (MSDN)
-   General Architecture and Design -Interrupt Handling at FreeBSD.org

Category:Process (computing)

[1] _IA-64 Linux Kernel: Design and Implementation_, 4.7 Switching Address Spaces

[2] _Operating Systems_, 5.6 The Context Switch, p. 118

[3]

[4]

[5]

[6]