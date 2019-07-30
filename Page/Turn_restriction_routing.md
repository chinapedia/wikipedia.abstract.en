A routing algorithm decides the path followed by a packet from the source to destination routers in a network. An important aspect to be considered while designing a routing algorithm is avoiding a deadlock. TURN RESTRICTION ROUTING[1][2] is a routing algorithm for mesh-family of topologies which avoids deadlocks by restricting the types of turns that are allowed in the algorithm while determining the route from source node to destination node in a network.Deadlock_Routing_Image.jpg


Reason for deadlock

A deadlock (shown in fig 1) is a situation in which no further transportation of packets can take place due to the saturation of network resources like buffers or links. The main reason for a deadlock[3] is the cyclic acquisition of channels in the network.[4] For example, consider there are four channels in a network. Four packets have filled up the input buffers of these four channels and needs to be forwarded to the next channel. Now assume that the output buffers of all these channels are also filled with packets that need to be transmitted to the next channel. If these four channels form a cycle, it is impossible to transmit packets any further because the output buffers and input buffers of all channels are already full. This is known as cyclic acquisition of channels and this results in a deadlock.


Solution to deadlock

Deadlocks can either be detected, broken or avoided from happening altogether.[5] Detecting and breaking deadlocks in the network is expensive in terms of latency and resources. So an easy and inexpensive solution is to avoid deadlocks by choosing routing techniques that prevent cyclic acquisition of channels.[6] All_turns.jpg


Logic behind turn restriction routing

Logic behind turn restriction routing derives from a key observation. A cyclic acquisition of channels can take place only if all the four possible clockwise (or anti-clockwise) turns have occurred. This means deadlocks can be avoided by prohibiting at least one of the clockwise turns and one of the anti-clockwise turns. All the clockwise and anti-clockwise turns that are possible in a non restricted routing algorithm are shown in fig 2. XY_Turns.jpg


Examples of turn restriction routing

A turn restriction routing can be obtained by prohibiting at least one of the four possible clockwise turns and at least one of the four possible anti-clockwise turns in the routing algorithm. This means there are at least 16 (4x4)[7] possible turn restriction routing techniques as you have 4 clockwise turns and 4 anti-clockwise turns to choose from. Some of these techniques have been listed below.West_First_Turns.jpgNorth_Last_Turns.jpgNegative_First_Turns.jpg

Dimension-ordered (X-Y) routing

Dimension ordered (X-Y) routing[8][9] (shown in fig 3) restricts all turns from y-dimension to x-dimension. This prohibits two anti-clockwise and two clockwise turns which is more than what is actually required. Even then since it restricts the number of turns that are allowed we can tell that this is an example for turn restriction routing.

West first routing

West first routing[10][11] (shown in fig 4) restricts all turns to the west direction. This means west direction should be taken first if needed in the proposed route.

North last routing

North last routing[12][13] (shown in fig 5) restricts turning to any other direction if the current direction is north. This means north direction should be taken last if needed in the proposed route.

Negative first routing

Negative first routing[14][15] (shown in fig 6) restricts turning to a negative direction while the current direction is positive. West is considered as the negative direction in X-dimension and south is considered as the negative direction in Y-dimension. This means any hop in one of the negative directions should be taken before taking any other turn.


Advantages of turn restriction routing

-   Avoiding deadlocks is less expensive to implement than deadlock detecting and breaking techniques.
-   Turn restrictions provide alternate minimum length paths as well as non minimum length paths from one node to another, which allows routing around congested or failed links.[16]

For example, consider figure 7 below. Say there are multiple routers, F1, F2 etc., that feed packets to a congested, but low-cost link from source router S to destination router D. Implementing Turn restriction routing means that some of the turns from any of the feeder routers to the congested router S may now be restricted. Those feeder routers may have to use a longer path to get to destination D, thereby decongesting the link from S to D to an extend. Feeder_router_example.png


See also

-   Policy-based routing
-   Deadlock
-   Heuristic algorithms


References

Category:Internet architecture Category:Routing Category:Heuristic algorithms Category:Concurrency (computer science) Category:Software bugs Category:Software anomalies

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