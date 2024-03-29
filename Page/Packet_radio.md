PACKET RADIO is a digital radio communications mode used to send packets of data. Packet radio uses packet switching to transmit datagrams. This is very similar to how packets of data are transferred between nodes on the Internet. Packet radio can be used to transmit data long distances.

Packet radio is frequently used by amateur radio operators. The AX.25 (Amateur X.25) protocol was derived from the X.25 data link layer protocol and adapted for amateur radio use. Every AX.25 packet includes the sender's amateur radio callsign, which satisfies the US FCC requirements for amateur radio station identification. AX.25 allows other stations to automatically repeat packets to extend the range of transmissions. It is possible for any packet station to act as a digipeater, linking distant stations with each other through ad hoc networks. This makes packet radio especially useful for emergency communications.

Packet radio can be used in mobile communications. Some mobile packet radio stations transmit their location periodically using the Automatic Packet Reporting System (APRS). If the APRS packet is received by an "igate" station, position reports and other messages can be routed to an internet server, and made accessible on a public web page. This allows amateur radio operators to track the locations of vehicles, hikers, high-altitude balloons, etc., along with telemetry and other messages around the world.


Timeline

Earlier digital radio communications modes were telegraphy (using Morse code), teleprinter (using Baudot code) and facsimile.

Aloha and PRNET

Since radio circuits inherently possess a broadcast network topology (i.e., many or all nodes are connected to the network simultaneously), one of the first technical challenges faced in the implementation of packet radio networks was a means to control access to a shared communication channel. Professor Norman Abramson of the University of Hawaii led development a packet radio network known as ALOHAnet and performed a number of experiments beginning in the 1970s to develop methods to arbitrate access to a shared radio channel by network nodes. This system operated on UHF frequencies at 9,600 baud. From this work the Aloha multiple access protocol was derived. Subsequent enhancements in channel access techniques made by Leonard Kleinrock _et al._ in 1975 would lead Robert Metcalfe to use carrier sense multiple access (CSMA) protocols in the design of the now commonplace Ethernet local area network (LAN) technology.

Over 1973–76, DARPA created a packet radio network called PRNET in the San Francisco Bay area and conducted a series of experiments with SRI to verify the use of ARPANET (a precursor to the Internet) communications protocols (later known as IP) over packet radio links between mobile and fixed network nodes.[1] This system was quite advanced, as it made use of direct sequence spread spectrum (DSSS) modulation and forward error correction (FEC) techniques to provide 100 kbit/s and 400 kbit/s data channels. These experiments were generally considered to be successful, and also marked the first demonstration of Internetworking, as in these experiments data was routed between the ARPANET, PRNET, and SATNET (a satellite packet radio network) networks. Throughout the 1970s and 1980s, DARPA operated a number of terrestrial and satellite packet radio networks connected to the ARPANET at various military and government installations.

Amateur Packet Radio and the AMPRNet

Amateur radio operators began experimenting with packet radio in 1978, when—after obtaining authorization from the Canadian government—Robert Rouleau, VE2PY; Bram Frank, VE2BFH; Norm Pearl, VE2BQS; and Jacques Orsali, VE2EHP[2] of the Montreal Amateur Radio Club Montreal, Quebec began experimenting with transmitting ASCII encoded data over VHF amateur radio frequencies using homebuilt equipment.[3] In 1980, Doug Lockhart VE7APU, and the Vancouver Area Digital Communications Group (VADCG) in Vancouver, British Columbia began producing standardized equipment (Terminal Node Controllers) in quantity for use in amateur packet radio networks. In 2003, Rouleau was inducted into CQ Amateur Radio magazine's hall of fame for his work on the Montreal Protocol in 1978.[4]

Not long after this activity began in Canada, amateurs in the US became interested in packet radio. In 1980, the United States Federal Communications Commission (FCC) granted authorization for United States amateurs to transmit ASCII codes via amateur radio.[5] Repeaters may be designed for amateur packet radio, these are dubbed "digipeaters". The first known amateur packet radio activity in the US occurred in San Francisco during December 1980, when a packet repeater was put into operation on 2 meters by Hank Magnuski KA6M, and the Pacific Packet Radio Society (PPRS).[6] In keeping with the dominance of DARPA and ARPANET at the time, the nascent amateur packet radio network was dubbed the AMPRNet in DARPA style. Magnuski obtained IP address allocations in the 44.0.0.0 network for amateur radio use worldwide.

Many groups of amateur radio operators interested in packet radio soon formed throughout the country including the Pacific Packet Radio Society (PPRS) in California, the Tucson Amateur Packet Radio Corporation (TAPR) in Arizona and the Amateur Radio Research and Development Corporation (AMRAD) in Washington, D.C.[7]

By 1983, TAPR was offering the first TNC available in kit form. Packet radio started becoming more and more popular across North America and by 1984 the first packet-based bulletin board systems began to appear. Packet radio proved its value for emergency operations following the crash of an Aeromexico airliner in a neighborhood in Cerritos, California Labor Day weekend, 1986. Volunteers linked several key sites to pass text traffic via packet radio which kept voice frequencies clear.

For an objective description of early developments in amateur packet radio, refer to the article "Packet Radio in the Amateur Service".[8]

[9]


Commercial systems[10]

Many commercial operations, particularly those that make use of vehicle dispatch (i.e. taxis, tow trucks, police) were quick to note the value of packet radio systems to provide simple mobile data systems. This led to the rapid development of a number of commercial packet radio systems:

-   MDI (1979)
-   DCS (1984)
-   DRN (1986)
-   Mobitex (1986)
-   ARDIS (1990)
-   CDPD allowed packet data to be carried over AMPS analog cellular telephone networks
-   GPRS is the packet data facility provided by the GSM cellular telephone network


Technical Details

Voice not Data

One of the first challenges faced by amateurs implementing packet radio is that almost all amateur radio equipment (and most surplus commercial/military equipment) has historically been designed to transmit voice, not data. Like any other digital communications system that uses analog media, packet radio systems require a modem. Since the radio equipment to be used with the modem was intended for voice, early amateur packet systems used AFSK modems that followed telephone standards (notably the Bell 202 standard). While this approach worked, it was not optimal, because it used a 25 kHz FM channel to transmit at 1,200 baud. When using a direct FSK modulation like G3RUH's packet radio modem, a 9,600 baud transmission is easily made in the same channel.

In addition, the baseband characteristics of the audio channel provided by voice radios are often quite different from those of telephone audio channels. This led to the need in some cases to enable or disable pre-emphasis or de-emphasis circuits in the radios and/or modems.

Asynchronous framing

Another problem faced by early "packeteers" was the issue of asynchronous versus synchronous data transfer. At the time, most personal computers had asynchronous RS-232 serial ports for data communications between the computer and devices such as modems. The RS-232 standard specifies an asynchronous, start-stop mode of data transmission where data is sent in groups (characters) of 7 or 8 bits. Unfortunately, the simple AFSK modems typically used provide no timing signal to indicate the start of a packet frame. That led to the need for a mechanism to enable the receiver to know when to start assembling each packet frame. The method used is called asynchronous framing. The receiver looks for the "frame boundary octet," then begins decoding the packet data that follows it. Another frame boundary octet marks the end of the packet frame.

Sharing the channel

A number of data "conversations" are possible on a single radio channel over a finite period.

Station configuration

A basic packet radio station consists of a computer or dumb terminal, a modem, and a transceiver with an antenna. Traditionally, the computer and modem are combined in one unit, the terminal node controller (TNC), with a dumb terminal (or terminal emulator) used to input and display data. Increasingly, personal computers are taking over the functions of the TNC, with the modem either a standalone unit or implemented entirely in software. Alternatively, multiple manufacturers (including Kenwood and Alinco) now market handheld or mobile radios with built-in TNCs, allowing connection directly to the serial port of a computer or terminal with no other equipment required.

The computer is responsible for managing network connections, formatting data as AX.25 packets, and controlling the radio channel. Frequently it provides other functionality as well, such as a simple bulletin board system to accept messages while the operator is away.

Following the OSI model, packet radio networks can be described in terms of the physical, data link, and network layer protocols on which they rely.

Physical layer: modem and radio channel

-

Modems used for packet radio vary in throughput and modulation technique, and are normally selected to match the capabilities of the radio equipment in use. Most commonly used method is one using audio frequency-shift keying (AFSK) within the radio equipment's existing speech bandwidth. The first amateur packet radio stations were constructed using surplus Bell 202 1,200 bit/s modems, and despite its low data rate, Bell 202 modulation has remained the standard for VHF operation in most areas. More recently, 9,600 bit/s has become a popular, although more technically demanding, alternative. At HF frequencies, Bell 103 modulation is used, at a rate of 300 bit/s.

Due to historical reasons, all commonly used modulations are based on an idea of minimal modification of the radio itself, usually just connecting the external speaker or headphone output directly to the transmit microphone input and receiver audio output directly to the computer microphone input. Upon adding a _turn the transmitter on_ output signal ("PTT") for transmitter control, one has made a _radio modem_. Due to this simplicity, and just having suitable microchips at hand, the _Bell 202_ modulation became standard way to send the packet radio data over the radio as two distinct tones. The tones are 1,200 Hz for Mark and 2,200 Hz for space (1,000 Hz shift). In the case of _Bell 103_ modulation, a 200 Hz shift is used. The data is differentially encoded with a NRZI pattern, where a data zero bit is encoded by a change in tones and a data one bit is encoded by no change in tones.

Ways to achieve higher speeds than 1,200 bits/s, include using telephone modem chips via the microphone and audio out connectors. This has been proven to work at speeds up to 4,800 bit/s using fax V.27 modems in half-duplex mode. These modems use phase shift keying which works fine when there is no amplitude shift keying, but at faster speeds such as 9,600 bit/s, signal levels become critical and they are extremely sensitive to group delay in the radio. These systems were pioneered by Simon Taylor (G1NTX) and Jerry Sandys (G8DXZ) in the 1980s. Other systems which involved small modification of the radio were developed by James Miller (G3RUH) and operated at 9,600 bit/s.

1,200 bit/s AFSK node controllers on 2 meters (144–148 MHz) are the most commonly found packet radio. For 1,200/2,400 bit/s UHF/VHF packet radio, amateurs use commonly available narrow band FM voice radios. For HF packet, 300 bit/s data is used over single sideband (SSB) modulation. For high speed packet (9,600 bit/s upwards), special radios or modified FM radios must be used.

Custom modems have been developed which allow throughput rates of 19.2 kbit/s, 56 kbit/s, and even 1.2 Mbit/s over amateur radio links on FCC permitted frequencies of 440 MHz and above. However, special radio equipment is needed to carry data at these speeds. The interface between the "modem" and the "radio" is at the _intermediate frequency_ part of the radio as opposed to the audio section used for 1,200 bit/s operation. The adoption of these high-speed links has been limited.

In many commercial data radio applications, audio baseband modulation is not used. Data is transmitted by altering the transmitter output frequency between two distinct frequencies (in the case of FSK modulation, other alternates exist).

High-speed multimedia radio

The 2.4 GHz "Wi-Fi" band partially overlaps an amateur radio band, so commercial Wi-Fi hardware can be adapted and used by licensed amateur radio operators at higher power levels, although restrictions on amateur radio limit the appeal of using packet radio to connect to the internet. US FCC regulations do not allow amateur radio communications to be encrypted or private, in addition to other content restrictions.[11]

Data link layer: AX.25

Packet radio networks rely on the AX.25 data link layer protocol, derived from the X.25 protocol suite and intended specifically for amateur radio use.[12] Despite its name, AX.25 defines both the physical and data link layers of the OSI model. (It also defines a network layer protocol, though this is seldom used.)

Network layer

Packet radio has most often been used for direct, keyboard-to-keyboard connections between stations, either between two live operators or between an operator and a bulletin board system. No network services above the data link layer are required for these applications.

To provide automated routing of data between stations (important for the delivery of electronic mail), several network layer protocols have been developed for use with AX.25. Most prominent among these network layer protocols are NET/ROM & TheNET, ROSE, FlexNet and TexNet.

In principle, any network layer protocol may be used, including the ubiquitous Internet protocol.


See also

-   Automatic Packet Reporting System
-   D-STAR
-   Mobile ad hoc network
-   Spartan Packet Radio Experiment - An experiment intended to test the tracking of satellites via amateur packet radio, flown on Space Shuttle mission STS-72
-   Tucson Amateur Packet Radio
-   Winlink
-   Wireless ad hoc network


References


Further reading

-   -   -   -


External links

-   "Packet Radio Physical Layer" Useful notes taken by N1VG during the development of the OpenTracker TNC/APRS node
-   Packet radio software
-   Fast Packet Systems
-   44.0.0.0
-   AMRAD

Packet_radio

[1] Okin,J.R. (2005). _The Internet Revolution: The Not-for-Dummies Guide to the History, Technology, and Use of the Internet_, p.81. Ironbound Press. .

[2] I wrote the code for the demo on May 31st 1978 at the M.A.R.C. meeting in Montreal

[3] Rouleau, Robert and Hodgson, Ian (1981). _Packet Radio_. Tab Books, Blue Ridge Summit, PA. .

[4]

[5]  See _FCC Gives The Nod_ and _Making Modifications_

[6] Kenney, Larry "Introduction to Packet Radio - Part 1", "A Short History - How it all began". Retrieved on 2009-08-09.

[7] American Radio Relay League (2008). "ARRL's VHF Digital Handbook", p 1-2, American Radio Relay League. .

[8] Karn, P. Price H. Diersing, R. (May 1985). "Packet Radio in the Amateur Service", pp 431-439, "IEEE Journal on Selected Areas in Communications". ISSN 0733-8716.

[9]

[10] DeRose, James F. (1999). "The Wireless Data Handbook", pp.3-7. Wiley-Interscience; 4th edition. .

[11] Security & Data Integrity On A Modern Amateur Radio Network - By: Paul J. Toth – NA4AR "HSMM and Information Security," by K8OCL CQ-VHF Fall 2004 - preview via CQ-VHF website "Data Encryption is Legal," N2IRZ, CQ Magazine Aug 2006 - preview from the Summer 2006 TAPR PSR https://www.scribd.com/doc/14005101/data-encryption-is-legal

[12] AX.25 Link Access Protocol for Amateur Packet Radio: the official specification, from Tucson Amateur Packet Radio