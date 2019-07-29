In computer science, REAL-TIME COMPUTING (RTC), or REACTIVE COMPUTING describes hardware and software systems subject to a "real-time constraint", for example from event to system response.[1] Real-time programs must guarantee response within specified time constraints, often referred to as "deadlines".[2] The correctness of these types of systems depends on their temporal aspects as well as their functional aspects. Real-time responses are often understood to be in the order of milliseconds, and sometimes microseconds. A system not specified as operating in real time cannot usually _guarantee_ a response within any timeframe, although _typical_ or _expected_ response times may be given.

A real-time system has been described as one which "controls an environment by receiving data, processing them, and returning the results sufficiently quickly to affect the environment at that time".[3] The term "real-time" is also used in simulation to mean that the simulation's clock runs at the same speed as a real clock, and in process control and enterprise systems to mean "without significant delay".

Real-time software may use one or more of the following: synchronous programming languages, real-time operating systems, and real-time networks, each of which provide essential frameworks on which to build a real-time software application.

Systems used for many mission critical applications must be real-time, such as for control of fly-by-wire aircraft, or anti-lock brakes on a vehicle, which must produce maximum deceleration but intermittently stop braking to prevent skidding.[4] Real-time processing _fails_ if not completed within a specified deadline relative to an event; deadlines must always be met, regardless of system load.


History

The term _real-time_ derives from its use in early simulation, in which a real-world process is simulated at a rate that matched that of the real process (now called real-time simulation to avoid ambiguity). Analog computers, most often, were capable of simulating at a much faster pace than real-time, a situation that could be just as dangerous as a slow simulation if it were not also recognized and accounted for.

Minicomputers, particularly in the 1970s onwards, when built into dedicated embedded systems such as DOG scanners, increased the need for low-latency priority-driven responses to important interactions with incoming data and so operating systems such as Data General's RDOS (Real-Time Disk Operatings System) and RTOS with background and foreground scheduling as well as Digital Equipment Corporation's RT-11 date from this era. Background-foreground scheduling allowed low priority tasks CPU time when no foreground task needed to execute, and gave absolute priority within the foreground to threads/tasks with the highest priority. Real-time operating systems would also be used for time-sharing multiuser duties. For example, Data General Business Basic could run in the foreground or background of RDOG (and would introduce additional elements to the scheduling algorithm to make it more appropriate for people interacting via dumb terminals.

Once when the MOS Technology 6502 (used in the Commodore 64 and Apple II), and later when the Motorola 68000 (used in the Macintosh, Atari ST, and Commodore Amiga) were popular, anybody could use their home computer as a real-time system. The possibility to deactivate other interrupts allowed for hard-coded loops with defined timing, and the low interrupt latency allowed the implementation of a real-time operating system, giving the user interface and the disk drives lower priority than the real-time thread. Compared to these the programmable interrupt controller of the Intel CPUs (8086..80586) generates a very large latency and the Windows operating system is neither a real-time operating system nor does it allow a program to take over the CPU completely and use its own scheduler, without using native machine language and thus surpassing all interrupting Windows code. However, several coding libraries exist which offer real time capabilities in a high level language on a variety of operating systems, for example Java Real Time. The Motorola 68000 and subsequent family members (68010, 68020 etc.) also became popular with manufacturers of industrial control systems. This application area is one in which real-time control offers genuine advantages in terms of process performance and safety.


Criteria for real-time computing

A system is said to be _real-time_ if the total correctness of an operation depends not only upon its logical correctness, but also upon the time in which it is performed.[5] Real-time systems, as well as their deadlines, are classified by the consequence of missing a deadline:

-   _Hard_ missing a deadline is a total system failure.
-   _Firm_ infrequent deadline misses are tolerable, but may degrade the system's quality of service. The usefulness of a result is zero after its deadline.
-   _Soft_ the usefulness of a result degrades after its deadline, thereby degrading the system's quality of service.

Thus, the goal of a _hard real-time system_ is to ensure that all deadlines are met, but for _soft real-time systems_ the goal becomes meeting a certain subset of deadlines in order to optimize some application-specific criteria. The particular criteria optimized depend on the application, but some typical examples include maximizing the number of deadlines met, minimizing the lateness of tasks and maximizing the number of high priority tasks meeting their deadlines.

Hard real-time systems are used when it is imperative that an event be reacted to within a strict deadline. Such strong guarantees are required of systems for which not reacting in a certain interval of time would cause great loss in some manner, especially damaging the surroundings physically or threatening human lives (although the strict definition is simply that missing the deadline constitutes failure of the system). For example, a car engine control system is a hard real-time system because a delayed signal may cause engine failure or damage. Other examples of hard real-time embedded systems include medical systems such as heart pacemakers and industrial process controllers. Hard real-time systems are typically found interacting at a low level with physical hardware, in embedded systems. Early video game systems such as the Atari 2600 and Cinematronics vector graphics had hard real-time requirements because of the nature of the graphics and timing hardware.

In the context of multitasking systems the scheduling policy is normally priority driven (pre-emptive schedulers). Other scheduling algorithms include earliest deadline first, which, ignoring the overhead of context switching, is sufficient for system loads of less than 100%.[6] New overlay scheduling systems, such as an adaptive partition scheduler assist in managing large systems with a mixture of hard real-time and non real-time applications.

Soft real-time systems are typically used to solve issues of concurrent access and the need to keep a number of connected systems up-to-date through changing situations. An example can be software that maintains and updates the flight plans for commercial airliners: the flight plans must be kept reasonably current, but they can operate with the latency of a few seconds. Live audio-video systems are also usually soft real-time; violation of constraints results in degraded quality, but the system can continue to operate and also recover in the future using workload prediction and reconfiguration methodologies.[7]

Real-time in digital signal processing

In a real-time digital signal processing (DSP) process, the analyzed (input) and generated (output) samples can be processed (or generated) continuously in the time it takes to input and output the same set of samples _independent_ of the processing delay.[8] It means that the processing delay must be bounded even if the processing continues for an unlimited time. That means that the mean processing time per sample, including overhead, is no greater than the sampling period, which is the reciprocal of the sampling rate. This is the criterion whether the samples are grouped together in large segments and processed as blocks or are processed individually and whether there are long, short, or non-existent input and output buffers.

Consider an audio DSP example; if a process requires 2.01 seconds to analyze, synthesize, or process 2.00 seconds of sound, it is not real-time. However, if it takes 1.99 seconds, it is or can be made into a real-time DSP process.

A common life analog is standing in a line or queue waiting for the checkout in a grocery store. If the line asymptotically grows longer and longer without bound, the checkout process is not real-time. If the length of the line is bounded, customers are being "processed" and output as rapidly, on average, as they are being inputted and that process _is_ real-time. The grocer might go out of business or must at least lose business if they cannot make their checkout process real-time; thus, it is fundamentally important that this process is real-time.

A signal processing algorithm that cannot keep up with the flow of input data with output falling farther and farther behind the input is not real-time. But if the delay of the output (relative to the input) is bounded regarding a process that operates over an unlimited time, then that signal processing algorithm is real-time, even if the throughput delay may be very long.

Live vs. real-time

Real-time signal processing is necessary, but not sufficient in and of itself, for live signal processing such as what is required in live event support. Live audio digital signal processing requires both real-time operation and a sufficient limit to throughput delay so as to be tolerable to performers using stage monitors or in-ear monitors and not noticeable as lip sync error by the audience also directly watching the performers. Tolerable limits to latency for live, real-time processing is a subject of investigation and debate but is estimated to be between 6 and 20 milliseconds.[9]

Real-time bidirectional telecommunications delays of less than 300 ms ("round trip" or twice the unidirectional delay) are considered "acceptable" to avoid undesired "talk-over" in conversation.


Real-time and high-performance

Real-time computing is sometimes misunderstood to be high-performance computing, but this is not an accurate classification.[10] For example, a massive supercomputer executing a scientific simulation may offer impressive performance, yet it is not executing a real-time computation. Conversely, once the hardware and software for an anti-lock braking system have been designed to meet its required deadlines, no further performance gains are obligatory or even useful. Furthermore, if a network server is highly loaded with network traffic, its response time may be slower but will (in most cases) still succeed before it times out (hits its deadline). Hence, such a network server would not be considered a real-time system: temporal failures (delays, time-outs, etc.) are typically small and compartmentalized (limited in effect) but are not catastrophic failures. In a real-time system, such as the FTSE 100 Index, a slow-down beyond limits would often be considered catastrophic in its application context. The most important requirement of a real-time system is consistent output, not high throughput.

Some kinds of software, such as many chess-playing programs, can fall into either category. For instance, a chess program designed to play in a tournament with a clock will need to decide on a move before a certain deadline or lose the game, and is therefore a real-time computation, but a chess program that is allowed to run indefinitely before moving is not. In both of these cases, however, high performance is desirable: the more work a tournament chess program can do in the allotted time, the better its moves will be, and the faster an unconstrained chess program runs, the sooner it will be able to move. This example also illustrates the essential difference between real-time computations and other computations: if the tournament chess program does not make a decision about its next move in its allotted time it loses the game—i.e., it fails as a real-time computation—while in the other scenario, meeting the deadline is assumed not to be necessary. High-performance is indicative of the amount of processing that is performed in a given amount of time, whereas real-time is the ability to get done with the processing to yield a useful output in the available time.


Near real-time

The term "near real-time" or "nearly real-time" (NRT), in telecommunications and computing, refers to the time delay introduced, by automated data processing or network transmission, between the occurrence of an event and the use of the processed data, such as for display or feedback and control purposes. For example, a near-real-time display depicts an event or situation as it existed at the current time minus the processing time, as nearly the time of the live event.[11]

The distinction between the terms "near real time" and "real time" is somewhat nebulous and must be defined for the situation at hand. The term implies that there are no significant delays.[12] In many cases, processing described as "real-time" would be more accurately described as "near real-time".

Near real-time also refers to delayed real-time transmission of voice and video. It allows playing video images, in approximately real-time, without having to wait for an entire large video file to download. Incompatible databases can export/import to common flat files that the other database can import/export on a scheduled basis so that they can sync/share common data in "near real-time" with each other.

The distinction between "near real-time" and "real-time" varies, and the delay is dependent on the type and speed of the transmission. The delay in near real-time is typically of the order of several seconds to several minutes.


Design methods

Several methods exist to aid the design of real-time systems, an example of which is MASCOT, an old but very successful method which represents the concurrent structure of the system. Other examples are HOOD, Real-Time UML, AADL, the Ravenscar profile, and Real-Time Java.


See also

-   Autonomous peripheral operation
-   DSOS
-   Processing modes
-   Ptolemy Project
-   Real-time computer graphics
-   Real-time testing
-   Scheduling analysis real-time systems
-   Synchronous programming language
-   Time-utility function
-   Worst-case execution time


References


Further reading

-   -   .

-   .


External links

-   IEEE Technical Committee on Real-Time Systems
-   Euromicro Technical Committee on Real-time Systems
-   The What, Where and Why of Real-Time Simulation
-

Real-time_computing Real-time_technology

[1] std::ctime

[2] Ben-Ari, M., "Principles of Concurrent and Distributed Programming", Prentice Hall, 1990. . Ch16, Page 164

[3]

[4]

[5]

[6] C. Liu and J. Layland. Scheduling Algorithms for Multiprogramming in a Hard Real-time Environment. Journal of the ACM, 20(1):46--61, Jan. 1973. http://citeseer.ist.psu.edu/liu73scheduling.html

[7]

[8] S.M. Kuo, B.H. Lee, and W. Tian, "Real-Time Digital Signal Processing: Implementations and Applications", Wiley, 2006. . Section 1.3.4: _Real-Time Constraints_.

[9]

[10]

[11]

[12]