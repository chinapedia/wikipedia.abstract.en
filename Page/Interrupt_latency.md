In computing, INTERRUPT LATENCY is the time that elapses from when an interrupt is generated to when the source of the interrupt is serviced.[1] For many operating systems, devices are serviced as soon as the device's interrupt handler is executed. Interrupt latency may be affected by microprocessor design, interrupt controllers, interrupt masking, and the operating system's (OS) interrupt handling methods.


Background

There is usually a trade-off between interrupt latency, throughput, and processor utilization. Many of the techniques of CPU and OS design that improve interrupt latency will decrease throughput and increase processor utilization. Techniques that increase throughput may increase interrupt latency and increase processor utilization. Lastly, trying to reduce processor utilization may increase interrupt latency and decrease throughput.

Minimum interrupt latency is largely determined by the interrupt controller circuit and its configuration. They can also affect the jitter in the interrupt latency, which can drastically affect the real-time schedulability of the system. The Intel APIC architecture is well known for producing a huge amount of interrupt latency jitter.

Maximum interrupt latency is largely determined by the methods an OS uses for interrupt handling. For example, most processors allow programs to disable interrupts, putting off the execution of interrupt handlers, in order to protect critical sections of code. During the execution of such a critical section, all interrupt handlers that cannot execute safely within a critical section are blocked (they save the minimum amount of information required to restart the interrupt handler after all critical sections have exited). So the interrupt latency for a blocked interrupt is extended to the end of the critical section, plus any interrupts with equal and higher priority that arrived while the block was in place.

Many computer systems require low interrupt latencies, especially embedded systems that need to control machinery in real-time. Sometimes these systems use a real-time operating system (RTOS). An RTOS makes the promise that no more than a specified maximum amount of time will pass between executions of subroutines. In order to do this, the RTOS must also guarantee that interrupt latency will never exceed a predefined maximum.


Considerations

Advanced interrupt controllers implement a multitude of hardware features in order to minimize the overhead during context switches and the effective interrupt latency. These include features like:

-   Minimum jitter through non-interruptable instructions[2]
-   Zero wait states for the memory system[3]
-   Switchable register banks[4]
-   Tail chaining[5]
-   Lazy stacking[6]
-   Late arrival[7]
-   Pop preemption[8]
-   Sleep-on-exit feature[9]

Also, there are many other methods hardware may use to help lower the requirements for shorter interrupt latency in order to make a given interrupt latency tolerable in a sitation. These include buffers, and flow control. For example, most network cards implement transmit and receive ring buffers, interrupt rate limiting, and hardware flow control. Buffers allow data to be stored until it can be transferred, and flow control allows the network card to pause communications without having to discard data if the buffer is full.

Modern hardware also implements interrupt rate limiting. This helps prevent interrupt storms or live-lock by having the hardware wait a programmable minimum amount of time between each interrupt it generates. Interrupt rate limiting reduces the amount of time spent servicing interrupts, allowing the processor to spend more time doing useful work. Exceeding this time results in a soft (recoverable) or hard (non-recoverable) error.


See also

-   Advanced Programmable Interrupt Controller (APIC)
-   Ethernet flow control
-   IEEE 802.3 (802.3x PAUSE frames for flow control)
-   Inter-processor interrupt (IPI)
-   Interrupt
-   Interrupt handler
-   Non-maskable interrupt (NMI)
-   Programmable Interrupt Controller (PIC)
-   Response time (technology)
-   Latency (engineering)
-   Computer hardware and operating system latency


References

Latency

[1]

[2]

[3]

[4]

[5]

[6]

[7]

[8]

[9]