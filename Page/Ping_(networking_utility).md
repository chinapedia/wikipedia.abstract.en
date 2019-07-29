PING is a computer network administration software utility used to test the reachability of a host on an Internet Protocol (IP) network. It is available for virtually all operating systems that have networking capability, including most embedded network administration software.

Ping measures the round-trip time for messages sent from the originating host to a destination computer that are echoed back to the source. The name comes from active sonar terminology that sends a pulse of sound and listens for the echo to detect objects under water.[1]

Ping operates by sending Internet Control Message Protocol (ICMP) echo request packets to the target host and waiting for an ICMP echo reply. The program reports errors, packet loss, and a statistical summary of the results, typically including the minimum, maximum, the mean round-trip times, and standard deviation of the mean.

The command-line options of the ping utility and its output vary between the numerous implementations. Options may include the size of the payload, count of tests, limits for the number of network hops (TTL) that probes traverse, and interval between the requests. Many systems provide a companion utility ping6, for testing on Internet Protocol version 6 (IPv6) networks, which implement ICMPv6.


History

The ping utility was written by Mike Muuss in December 1983 during his employment at the Ballistic Research Laboratory, now the US Army Research Laboratory. Created as a tool to troubleshoot problems in an IP network, Mike Muuss was inspired by a remark by David Mills on using ICMP echo packets for IP network diagnosis and measurements.[2] The author named it after the sound that sonar makes, since its methodology is analogous to sonar's echo location.[3][4] The first released version was public domain software while all subsequent versions were licensed under the BSD license. Ping was first included in 4.3BSD [5].

RFC 1122 prescribes that any host must process ICMP echo requests and issue echo replies in return.[6]


Invocation example

The following is the output of running ping on Linux for sending five probes to the target host _www.example.com_:

    $ ping -c 5 www.example.com
    PING www.example.com (93.184.216.34): 56 data bytes
    64 bytes from 93.184.216.34: icmp_seq=0 ttl=56 time=11.632 ms
    64 bytes from 93.184.216.34: icmp_seq=1 ttl=56 time=11.726 ms
    64 bytes from 93.184.216.34: icmp_seq=2 ttl=56 time=10.683 ms
    64 bytes from 93.184.216.34: icmp_seq=3 ttl=56 time=9.674 ms
    64 bytes from 93.184.216.34: icmp_seq=4 ttl=56 time=11.127 ms

    --- www.example.com ping statistics ---
    5 packets transmitted, 5 packets received, 0.0% packet loss
    round-trip min/avg/max/stddev = 9.674/10.968/11.726/0.748 ms

The output lists each probe message and the results obtained. Finally it lists the statistics of the entire test. In this example, the shortest round trip time was 9.674 ms, the average was 10.968 ms, and the maximum value was 11.726 ms. The measurement had a standard deviation of 0.748 ms.


Error indications

In cases of no response from the target host, most implementations display either nothing or periodically print notifications about timing out. Possible ping results indicating a problem include the following:

-   or host, network or protocol unreachable

-   source route failed

-   fragmentation needed

-   or destination network/host unknown

-   source host is isolated

-   communication with destination network administratively prohibited

-   communication with destination host administratively prohibited

-   for this ToS the destination network is unreachable

-   for this ToS the destination host is unreachable

-   communication administratively prohibited

-   host precedence violation

-   precedence cutoff in effect

In case of error, the target host or an intermediate router sends back an ICMP error message, for example "host unreachable" or "TTL exceeded in transit". In addition, these messages include the first eight bytes of the original message (in this case header of the ICMP echo request, including the quench value), so the ping utility can match responses to originating queries.[7]


Message format

ICMP packet

+------------------------+----------------------+-----------------+------------+------------+
|                        | Bits 0–7             | Bits 8–15       | Bits 16–23 | Bits 24–31 |
+========================+======================+=================+============+============+
| Header                 | Version/IHL          | Type of service | Length     |            |
| (20 bytes)             |                      |                 |            |            |
+------------------------+----------------------+-----------------+------------+------------+
| Identification         | _flags_ and _offset_ |                 |            |            |
+------------------------+----------------------+-----------------+------------+------------+
| Time To Live (TTL)     | Protocol             | Header Checksum |            |            |
+------------------------+----------------------+-----------------+------------+------------+
| Source IP address      |                      |                 |            |            |
+------------------------+----------------------+-----------------+------------+------------+
| Destination IP address |                      |                 |            |            |
+------------------------+----------------------+-----------------+------------+------------+
| ICMP Header            | Type of message      | Code            | Checksum   |            |
| (8 bytes)              |                      |                 |            |            |
+------------------------+----------------------+-----------------+------------+------------+
| Header Data            |                      |                 |            |            |
+------------------------+----------------------+-----------------+------------+------------+
| | ICMP Payload         | Payload Data         |                 |            |            |
| (_optional_)           |                      |                 |            |            |
+------------------------+----------------------+-----------------+------------+------------+

: IPv4 Datagram

+---------------------+-----------------+---------------+------------+------------+------------+------------+
|                     | Bits 0–3        | Bits 4–7      | Bits 8–11  | Bits 12–15 | Bits 16–23 | Bits 24–31 |
+=====================+=================+===============+============+============+============+============+
| Header              | Version         | Traffic Class | Flow Label |            |            |            |
| (40 bytes)          |                 |               |            |            |            |            |
+---------------------+-----------------+---------------+------------+------------+------------+------------+
| Payload Length      | Next Header     | Hop Limit     |            |            |            |            |
+---------------------+-----------------+---------------+------------+------------+------------+------------+
| Source Address      |                 |               |            |            |            |            |
+---------------------+-----------------+---------------+------------+------------+------------+------------+
| Destination Address |                 |               |            |            |            |            |
+---------------------+-----------------+---------------+------------+------------+------------+------------+
| ICMP6 Header        | Type of message | Code          | Checksum   |            |            |            |
| (8 bytes)           |                 |               |            |            |            |            |
+---------------------+-----------------+---------------+------------+------------+------------+------------+
| Header Data         |                 |               |            |            |            |            |
+---------------------+-----------------+---------------+------------+------------+------------+------------+
| | ICMP6 Payload     | Payload Data    |               |            |            |            |            |
| (_optional_)        |                 |               |            |            |            |            |
+---------------------+-----------------+---------------+------------+------------+------------+------------+

: IPv6 Datagram

Generic composition of an ICMP packet:[8]

-   IPv4 Header (in blue): _protocol_ set to 1 (ICMP) and _Type of Service_ set to 0.
-   IPv6 Header (in blue): _Next Header_ set to 58 (ICMP6)
-   ICMP Header (in red):
    -   Type of ICMP message (8 bits)
    -   Code (8 bits)
    -   Checksum (16 bits), calculated with the ICMP part of the packet (the IP header is not used). It is the 16-bit one's complement of the one's complement sum of the ICMP message starting with the Type field[9]
    -   Header Data (32 bits) field, which in this case (ICMP echo request and replies), will be composed of identifier (16 bits) and sequence number (16 bits).
-   ICMP Payload: _payload_ for the different kind of answers; can be an arbitrary length, left to implementation detail. However, the packet including IP and ICMP headers must be less than the maximum transmission unit of the network or risk being fragmented.

Echo request

The _echo request_ ("ping") is an ICMP/ICMP6 message.

  00                                     01                02         03   04   05   06   07   08   09   10   11   12   13   14   15   16   17   18   19   20   21   22   23   24   25   26   27   28   29   30   31
  -------------------------------------- ----------------- ---------- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ----
  Type = 8(IPv4, ICMP) 128(IPv6,ICMP6)   Code = 0          Checksum
  Identifier                             Sequence Number
  Payload

The Identifier and Sequence Number can be used by the client to match the reply with the request that caused the reply. In practice, most Linux systems use a unique identifier for every ping process, and sequence number is an increasing number within that process. Windows uses a fixed identifier, which varies between Windows versions, and a sequence number that is only reset at boot time.

Echo reply

The _echo reply_ is an ICMP message generated in response to an echo request; it is mandatory for all hosts, and must include the exact payload received in the request.

  00                                    01                02         03   04   05   06   07   08   09   10   11   12   13   14   15   16   17   18   19   20   21   22   23   24   25   26   27   28   29   30   31
  ------------------------------------- ----------------- ---------- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ----
  Type = 0(IPv4,ICMP) 129(IPv6,ICMP6)   Code = 0          Checksum
  Identifier                            Sequence Number
  Payload

-   The _identifier_ and _sequence number_ can be used by the client to associate each echo request with its reply.

Payload

The payload of the packet is generally filled with ASCII characters, as the output of the tcpdump utility shows in the last 32 bytes of the following example (after the eight-byte ICMP header starting with ): The payload may include a timestamp indicating the time of transmission and a sequence number, which are not found in this example. This allows ping to compute the round trip time in a stateless manner without needing to record the time of transmission of each packet.

The payload may also include a _magic packet_ for the Wake-on-LAN protocol, but the minimum payload in that case is longer than shown. The _Echo Request_ typically does not receive any reply if the host was sleeping in hibernation state, but the host still wakes up from sleep state if its interface is configured to accept wakeup requests. If the host is already active and configured to allow replies to incoming ICMP _Echo Request_ packets, the returned reply should include the same payload. This may be used to detect that the remote host was effectively woken up, by repeating a new request after some delay to allow the host to resume its network services. If the host was just sleeping in low power active state, a single request wakes up that host just enough to allow its _Echo Reply_ service to reply instantly if that service was enabled. The host does not need to completely wake up all devices, and may return to low power mode after a short delay. Such configuration may be used to avoid a host to enter in hibernation state, with much longer wake up delay, after some time passed in low power active mode.


Security considerations

To conduct a denial-of-service attack, an attacker may send ping requests as fast as possible, possibly overwhelming the victim with ICMP echo requests. This technique is called a ping flood.

Ping requests to multiple addresses, ping sweeps, may be used to obtain a list of all hosts on a network.


See also

-   fping
-   Keepalive
-   nping
-   Ping of death
-   Ping-pong scheme
-   Security through obscurity
-   Smurf attack
-   Traceroute


References


External links

-   -   -

Category:Free network management software Category:Internet Protocol based network software Category:Network analyzers Category:OS/2 commands Category:Unix network-related software Category:Windows administration Category:Windows communication and services

[1]

[2] "The Story of the PING Program", Mike Muuss

[3]

[4]

[5] http://www.manpagez.com/man/8/ping/

[6]

[7]

[8]

[9]