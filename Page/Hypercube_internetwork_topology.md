Hypercube networks are a type of network topology used to connect multiple processors with memory modules and accurately route data. Hypercube networks consist of 2^(m) nodes. These nodes form the vertices of squares to create an internetwork connection. A hypercube is basically a multidimensional mesh network with two nodes in each dimension. Due to similarity, such topologies are usually grouped into a k-ary d-dimensional mesh topology family where d represents the number of dimensions and k represents the number of nodes in each dimension.[1] [2] Hypercube-construction-4d.png


Topology[3]

Hypercube interconnection network is formed by connecting N nodes that can be expressed as a power of 2. This means if the network has n nodes it can be expressed as :

N = 2^(m)

where m is the number of bits that are required to label the nodes in the network. So, if there are 4 nodes in the network, 2 bits are needed to represent all the nodes in the network. The network is constructed by connecting the nodes that just differ by one bit in their binary representation. This is commonly referred to as Binary labelling. A 3D hypercube internetwork would be a cube with 8 nodes and 12 edges. A 4D hypercube network can be created by duplicating two 3D networks, and adding a most significant bit. The new added bit should be ‘0’ for one 3D hypercube and ‘1’ for the other 3D hypercube. The corners of the respective one-bit changed MSBs are connected to create the higher hypercube network. This method can be used to construct any m-bit represented hypercube with (m-1)-bit represented hypercube.


E-Cube Routing[4]

Routing method for a hypercube network is referred to as E-Cube routing. The distance between two nodes in the network can be given by Hamming weight of (number of ones in) the XOR-operation between their respective binary labels.

The distance between Node 1 (represented as ‘01’) and Node 2 (represented as ‘10’) in the network given by:

(Hamming_weight(01⨁10) = Hamming_weight(11) = 2

E-Cube routing is a static routing method that employs XY-routing algorithm. This is commonly referred to as Deterministic, Dimension Ordered Routing model. E-Cube routing works by traversing the network in the k^(th) dimension where k is the least significant non-zero bit in the result of calculating distance.

For example, let the sender's label be ‘00’ and the receiver's label be ‘11’. So, the distance between them is 11 and the least significant non-zero bit is the LSB bit. Figuring out which way to go for a ‘0’ or ‘1’ is determined by XY routing algorithm.


Metrics[5]

Different measures of performance are used to evaluate the efficiency of a hypercube network connection against various other network topologies.

Degree

This defines the number of immediately adjacent nodes to a particular node. These nodes should be immediate neighbors. In case of a hypercube the degree is n.

Diameter

This defines the maximum number of nodes that a message must pass through on its way from the source to the destination. This basically gives us the delay in transmitting a message across a network. In case of a hypercube the diameter is n.

Average Distance

The distance between two nodes defined by the number of hops in the shortest path between two particular nodes. It is given by the formula -

$d_a= \sum_{d=1}^r{(d.N_d)\over N-1}$

In case of Hypercubes the average distance is given as n/2.

Bisection Width

This is the least number of wires that you should cut in order to divide the network into two equal halves. It is given as 2^(n-1) for Hypercubes.


References

Category:Network topology

[1]

[2]

[3]

[4]

[5]