In distributed computing, a REMOTE PROCEDURE CALL (RPC) is when a computer program causes a procedure (subroutine) to execute in a different address space (commonly on another computer on a shared network), which is coded as if it were a normal (local) procedure call, without the programmer explicitly coding the details for the remote interaction. That is, the programmer writes essentially the same code whether the subroutine is local to the executing program, or remote.[1] This is a form of client–server interaction (caller is client, executor is server), typically implemented via a request–response message-passing system. In the object-oriented programming paradigm, RPC calls are represented by remote method invocation (RMI). The RPC model implies a level of location transparency, namely that calling procedures is largely the same whether it is local or remote, but usually they are not identical, so local calls can be distinguished from remote calls. Remote calls are usually orders of magnitude slower and less reliable than local calls, so distinguishing them is important.

RPCs are a form of inter-process communication (IPC), in that different processes have different address spaces: if on the same host machine, they have distinct virtual address spaces, even though the physical address space is the same; while if they are on different hosts, the physical address space is different. Many different (often incompatible) technologies have been used to implement the concept.


History and origins

Response–request protocols date to early distributed computing in the late 1960s, theoretical proposals of remote procedure calls as the model of network operations date to the 1970s, and practical implementations date to the early 1980s. Bruce Jay Nelson is generally credited with coining the term "remote procedure call" in 1981.[2]

Remote procedure calls used in modern operating systems trace their roots back to the RC 4000 multiprogramming system,[3] which used a request-response communication protocol for process synchronization.[4] The idea of treating network operations as remote procedure calls goes back at least to the 1970s in early ARPANET documents.[5] In 1978, Per Brinch Hansen proposed Distributed Processes, a language for distributed computing based on "external requests" consisting of procedure calls between processes.[6]

One of the earliest practical implementations was in 1982 by Brian Randell and colleagues for their Newcastle Connection between UNIX machines.[7] This was soon followed by "Lupine" by Andrew Birrell and Bruce Nelson in the Cedar environment at Xerox PARC.[8][9][10] Lupine automatically generated stubs, providing type-safe bindings, and used an efficient protocol for communication.[11] One of the first business uses of RPC was by Xerox under the name "Courier" in 1981. The first popular implementation of RPC on Unix was Sun's RPC (now called ONC RPC), used as the basis for Network File System (NFS).

In the 1990s, with the popularity of object-oriented programming, the alternative model of remote method invocation (RMI) was widely implemented, such as in Common Object Request Broker Architecture (CORBA, 1991) and Java remote method invocation. RMIs in turn fell in popularity with the rise of the internet, particularly in the 2000s.


Message passing

RPC is a request–response protocol. An RPC is initiated by the _client_, which sends a request message to a known remote _server_ to execute a specified procedure with supplied parameters. The remote server sends a response to the client, and the application continues its process. While the server is processing the call, the client is blocked (it waits until the server has finished processing before resuming execution), unless the client sends an asynchronous request to the server, such as an XMLHttpRequest. There are many variations and subtleties in various implementations, resulting in a variety of different (incompatible) RPC protocols.

An important difference between remote procedure calls and local calls is that remote calls can fail because of unpredictable network problems. Also, callers generally must deal with such failures without knowing whether the remote procedure was actually invoked. Idempotent procedures (those that have no additional effects if called more than once) are easily handled, but enough difficulties remain that code to call remote procedures is often confined to carefully written low-level subsystems.

Sequence of events

1.  The client calls the client stub. The call is a local procedure call, with parameters pushed on to the stack in the normal way.
2.  The client stub packs the parameters into a message and makes a system call to send the message. Packing the parameters is called marshalling.
3.  The client's local operating system sends the message from the client machine to the server machine.
4.  The local operating system on the server machine passes the incoming packets to the server stub.
5.  The server stub unpacks the parameters from the message. Unpacking the parameters is called unmarshalling.
6.  Finally, the server stub calls the server procedure. The reply traces the same steps in the reverse direction.


Standard contact mechanisms

To let different clients access servers, a number of standardized RPC systems have been created. Most of these use an interface description language (IDL) to let various platforms call the RPC. The IDL files can then be used to generate code to interface between the client and servers.


Analogues

Notable RPC implementations and analogues include:

Language-specific

-   Java's Java Remote Method Invocation (Java RMI) API provides similar functionality to standard Unix RPC methods.
-   Modula-3's network objects, which were the basis for Java's RMI[12]
-   RPyC implements RPC mechanisms in Python, with support for asynchronous calls.
-   Distributed Ruby (DRb) allows Ruby programs to communicate with each other on the same machine or over a network. DRb uses remote method invocation (RMI) to pass commands and data between processes.
-   Erlang is process oriented and natively supports distribution and RPCs via message passing between nodes and local processes alike.
-   Elixir builds on top of the Erlang VM and allows process communication (Elixir/Erlang processes, not OS processes) of the same network out-of-the-box via Agents and message passing.

Application-specific

-   Action Message Format (AMF) allows Adobe Flex applications to communicate with back-ends or other applications that support AMF.
-   Remote Function Call is the standard SAP interface for communication between SAP systems. RFC calls a function to be executed in a remote system.

General

-   NFS (Network File System) is one of the most prominent users of RPC
-   Open Network Computing Remote Procedure Call, by Sun Microsystems
-   D-Bus open source IPC program provides similar function to CORBA.
-   SORCER provides the API and exertion-oriented language (EOL) for a federated method invocation
-   XML-RPC is an RPC protocol that uses XML to encode its calls and HTTP as a transport mechanism.
-   JSON-RPC is an RPC protocol that uses JSON-encoded messages
-   JSON-WSP is an RPC protocol that uses JSON-encoded messages
-   SOAP is a successor of XML-RPC and also uses XML to encode its HTTP-based calls.
-   ZeroC's Internet Communications Engine (Ice) distributed computing platform.
-   Etch framework for building network services.
-   Apache Thrift protocol and framework.
-   CORBA provides remote procedure invocation through an intermediate layer called the _object request broker_.
-   Libevent provides a framework for creating RPC servers and clients.[13]
-   Windows Communication Foundation is an application programming interface in the .NET framework for building connected, service-oriented applications.
-   Microsoft .NET Remoting offers RPC facilities for distributed systems implemented on the Windows platform. It has been superseded by WCF.
-   The Microsoft DCOM uses MSRPC which is based on DCE/RPC
-   The Open Software Foundation DCE/RPC Distributed Computing Environment (also implemented by Microsoft).
-   Google Protocol Buffers (protobufs) package includes an interface definition language used for its RPC protocols[14] open sourced in 2015 as gRPC.[15]
-   WAMP combines RPC and Publish-Subscribe into a single, transport-agnostic protocol.
-   Google Web Toolkit uses an asynchronous RPC to communicate to the server service.[16]
-   Apache Avro provides RPC where client and server exchange schemas in the connection handshake and code generation is not required.
-   Embedded RPC is lightweight RPC implementation developed by NXP, targeting primary CortexM cores
-   KF Trusted Execution Environment uses proxy and objects marshaling to communicate objects across sandboxes


See also

-   9P
-   Microsoft RPC
-   Local Procedure Call
-   HTTP
-   ODBC
-   Remote evaluation
-   External Data Representation
-   Resource-oriented architecture
-   Distributed object middleware
-   Fragmented object
-   gRPC


References


External links

-   RFC 1057 - Specifies version 1 of ONC RPC
-   RFC 5531 - Specifies version 2 of ONC RPC
-   Remote Procedure Calls (RPC) — A tutorial on ONC RPC by Dr Dave Marshall of Cardiff University
-   Introduction to RPC Programming — A developer's introduction to RPC and XDR, from SGI IRIX documentation.

Category:Inter-process communication Category:Middleware Remote_procedure_call

[1]

[2]  PhD thesis.

[3]

[4]

[5]

[6]

[7]

[8]

[9]

[10]

[11]

[12] The A-Z of Programming Languages: Modula-3 - a-z of programming languages . Computerworld. Retrieved on 2013-07-17.

[13] libevent: Main Page. Monkey.org. Retrieved on 2013-07-17.

[14]

[15]

[16]