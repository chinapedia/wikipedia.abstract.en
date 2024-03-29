SAFE SEMANTICS is a computer hardware consistency model. It describes one type of guarantee that a data register provides when it is shared by several processors in a parallel computer or in a network of computers working together.


History

Safe semantics was first defined by Leslie Lamport in 1985.[1] It was formally defined in Lamport's "On Interprocess Communication" in 1986.[2]

Safe register has been implemented in many distributed systems.


Description

Safe semantics are defined for a variable with a single writer but multiple readers (SWMR). A SWMR register is safe if each read operation satisfies these properties:

1.  A read operation not concurrent with any write operation returns the value written by the latest write operation.
2.  A read operation that is concurrent with a write operation may return any value within the register's allowed range of values (for example, 0,1,2,...).

In particular, given concurrency of a read and a write operation, the read can return a value that has not been written by a write. The return value need only belong to the register domain.

A binary safe register can be seen as modeling a bit flickering. Whatever the previous value of the register is, its value could flicker until the write finishes. Therefore, the read that overlaps with a write could return 0 or 1.

_Churn_ refers to the entry and exit of servers to/from a distributed system. Baldoni et al. show that no register can have the stronger property of regular semantics in a synchronous system under continuous churn.[3] However, a safe register can be implemented under continuous churn in a non-synchronous system.[4] Modeling and implementing a type of storage memory (Safe Register) under non-quiescent churn requires some system models such as client and server systems.[5] Client systems contains a finite, arbitrary number of processes that are responsible for reading and writing the server system. However,the server system must ensure that read and write operations happen properly.


Implementation

Safe register implementation involves:

Safe register is maintained by the set of active servers.

Clients maintain no register information.

Eventually synchronous system

Quora (set of server or client systems)

Size of the Read and Write operation executed on quora = n – f – J (n is the number of servers, J is the number of servers that enter and exit, and f is the number of Byzantine failures.

Algorithms such as join, read, and write.[6]

Join

A server (_si_) that wants to enter a server system broadcasts an inquiry message to other servers to inform them of its entry, si requests a current value of the register. Once other server receive this inquiry they send reply messages to si. After si receives enough replies from other servers, it collects the replies and saves them into a reply set. Si waits until it gets enough replies (n-f-j) from other servers then it picks the most frequently received value. Si also:

-   Updates its local copy of the register
-   Becomes active
-   Replies to the processes in the reply set
-   If it becomes active it sends reply messages to the other servers. Otherwise, it stores the inquiries, replying when it becomes active.
-   When it gets replies from other servers it adds the new reply to the reply set and discards the old value.
-   If the value of the responding server is bigger than si's value, si retains the new value.

Read

The read algorithm is a basic version of join. The difference is the broadcast mechanism used by the read operation. A client (_cw_) broadcasts a message to the system and once a server receives the inquiry, it sends a reply message to the client. Once the client receives enough replies (n-f-j) it stops sending an inquiry.

Write

Client (_cw_) sends an inquiry into the system in different rounds and waits until it receives two acknowledgment. (_sn_ =sequence number)

The reason for receiving two acknowledgments is to avoid danger in a system. When a process sends an acknowledgement (_ack_), it may die after one millisecond.Therefore, no confirmation is received by the client.

The validity of the safe register (If a read is not concurrent with any write, return the last value written) was proved based on the quorum system.[7] Given two quorum systems (Qw, Qr) Qw indicates the servers that know about the latest value, and Qr indicates values of read responses. The size of each quorum is equal to n-f-j.[8] Proving the safe register's validity requires proving

(Qw ∪ Qr) ∖ B > (Qr ∪ B)

were _B_ is the number of Byzantine failures.

Proof : Red region indicates (Qw∩Qr)\B and the blue region indicates Qr∩B. From the assumption, the size of each quorum is n-f-j, so the red region has n-3f-2j active servers. Therefore

n − 3f − 2J > f −  −  > n > 4f + 2J −  −  > nis strictly greater than f.


Notes


See also

-   Regular semantics
-   Atomic semantics

Category:Concurrency control

[1]

[2]

[3]

[4]

[5]

[6]

[7]

[8]