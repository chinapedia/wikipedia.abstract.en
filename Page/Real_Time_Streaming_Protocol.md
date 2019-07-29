The REAL TIME STREAMING PROTOCOL (RTSP) is a network control protocol designed for use in entertainment and communications systems to control streaming media servers. The protocol is used for establishing and controlling media sessions between end points. Clients of media servers issue VHS-style commands, such as _play_, _record_ and _pause_, to facilitate real-time control of the media streaming from the server to a client (Video On Demand) or from a client to the server (Voice Recording).

The transmission of streaming data itself is not a task of RTSP. Most RTSP servers use the Real-time Transport Protocol (RTP) in conjunction with Real-time Control Protocol (RTCP) for media stream delivery. However, some vendors implement proprietary transport protocols. The RTSP server software from RealNetworks, for example, also used RealNetworks' proprietary Real Data Transport (RDT).

RTSP was developed by RealNetworks, Netscape[1] and Columbia University, with the first draft submitted to IETF in 1996.[2] It was standardized by the Multiparty Multimedia Session Control Working Group (MMUSIC WG) of the Internet Engineering Task Force (IETF) and published as RFC 2326 in 1998.[3] RTSP 2.0 published as RFC 7826 in 2016 as a replacement of RTSP 1.0. RTSP 2.0 is based on RTSP 1.0 but is not backwards compatible other than in the basic version negotiation mechanism.


Protocol directives

While similar in some ways to HTTP, RTSP defines control sequences useful in controlling multimedia playback. While HTTP is stateless, RTSP has state; an identifier is used when needed to track concurrent sessions. Like HTTP, RTSP uses TCP to maintain an end-to-end connection and, while most RTSP control messages are sent by the client to the server, some commands travel in the other direction (i.e. from server to client).

Presented here are the basic RTSP requests. Some typical HTTP requests, like the OPTIONS request, are also available. The default transport layer port number is 554[4] for both TCP and UDP, the latter being rarely used for the control requests.

OPTIONS
    An OPTIONS request returns the request types the server will accept.

    C->S:  OPTIONS rtsp://example.com/media.mp4 RTSP/1.0
           CSeq: 1
           Require: implicit-play
           Proxy-Require: gzipped-messages

    S->C:  RTSP/1.0 200 OK
           CSeq: 1
           Public: DESCRIBE, SETUP, TEARDOWN, PLAY, PAUSE

DESCRIBE
    A DESCRIBE request includes an RTSP URL (rtsp://...), and the type of reply data that can be handled. This reply includes the presentation description, typically in Session Description Protocol (SDP) format. Among other things, the presentation description lists the media streams controlled with the aggregate URL. In the typical case, there is one media stream each for audio and video.

    C->S: DESCRIBE rtsp://example.com/media.mp4 RTSP/1.0
          CSeq: 2

    S->C: RTSP/1.0 200 OK
          CSeq: 2
          Content-Base: rtsp://example.com/media.mp4
          Content-Type: application/sdp
          Content-Length: 460

          m=video 0 RTP/AVP 96
          a=control:streamid=0
          a=range:npt=0-7.741000
          a=length:npt=7.741000
          a=rtpmap:96 MP4V-ES/5544
          a=mimetype:string;"video/MP4V-ES"
          a=AvgBitRate:integer;304018
          a=StreamName:string;"hinted video track"
          m=audio 0 RTP/AVP 97
          a=control:streamid=1
          a=range:npt=0-7.712000
          a=length:npt=7.712000
          a=rtpmap:97 mpeg4-generic/32000/2
          a=mimetype:string;"audio/mpeg4-generic"
          a=AvgBitRate:integer;65790
          a=StreamName:string;"hinted audio track"

SETUP
    A SETUP request specifies how a single media stream must be transported. This must be done before a PLAY request is sent. The request contains the media stream URL and a transport specifier. This specifier typically includes a local port for receiving RTP data (audio or video), and another for RTCP data (meta information). The server reply usually confirms the chosen parameters, and fills in the missing parts, such as the server's chosen ports. Each media stream must be configured using SETUP before an aggregate play request may be sent.

    C->S: SETUP rtsp://example.com/media.mp4/streamid=0 RTSP/1.0
          CSeq: 3
          Transport: RTP/AVP;unicast;client_port=8000-8001

    S->C: RTSP/1.0 200 OK
          CSeq: 3
          Transport: RTP/AVP;unicast;client_port=8000-8001;server_port=9000-9001;ssrc=1234ABCD
          Session: 12345678

PLAY
    A PLAY request will cause one or all media streams to be played. Play requests can be stacked by sending multiple PLAY requests. The URL may be the aggregate URL (to play all media streams), or a single media stream URL (to play only that stream). A range can be specified. If no range is specified, the stream is played from the beginning and plays to the end, or, if the stream is paused, it is resumed at the point it was paused.

    C->S: PLAY rtsp://example.com/media.mp4 RTSP/1.0
          CSeq: 4
          Range: npt=5-20
          Session: 12345678

    S->C: RTSP/1.0 200 OK
          CSeq: 4
          Session: 12345678
          RTP-Info: url=rtsp://example.com/media.mp4/streamid=0;seq=9810092;rtptime=3450012

PAUSE
    A PAUSE request temporarily halts one or all media streams, so it can later be resumed with a PLAY request. The request contains an aggregate or media stream URL. A range parameter on a PAUSE request specifies when to pause. When the range parameter is omitted, the pause occurs immediately and indefinitely.

    C->S: PAUSE rtsp://example.com/media.mp4 RTSP/1.0
          CSeq: 5
          Session: 12345678

    S->C: RTSP/1.0 200 OK
          CSeq: 5
          Session: 12345678

RECORD
    This method initiates recording a range of media data according to the presentation description. The time stamp reflects start and end time(UTC). If no time range is given, use the start or end time provided in the presentation description. If the session has already started, commence recording immediately. The server decides whether to store the recorded data under the request URI or another URI. If the server does not use the request URI, the response should be 201 and contain an entity which describes the states of the request and refers to the new resource, and a Location header.

    C->S: RECORD rtsp://example.com/media.mp4 RTSP/1.0
          CSeq: 6
          Session: 12345678

    S->C: RTSP/1.0 200 OK
          CSeq: 6
          Session: 12345678

ANNOUNCE
    The ANNOUNCE method serves two purposes:
    When sent from client to server, ANNOUNCE posts the description of a presentation or media object identified by the request URL to a server. When sent from server to client, ANNOUNCE updates the session description in real-time. If a new media stream is added to a presentation (e.g., during a live presentation), the whole presentation description should be sent again, rather than just the additional components, so that components can be deleted.

    C->S: ANNOUNCE rtsp://example.com/media.mp4 RTSP/1.0
          CSeq: 7
          Date: 23 Jan 1997 15:35:06 GMT
          Session: 12345678
          Content-Type: application/sdp
          Content-Length: 332

          v=0
          o=mhandley 2890844526 2890845468 IN IP4 126.16.64.4
          s=SDP Seminar
          i=A Seminar on the session description protocol
          u=http://www.cs.ucl.ac.uk/staff/M.Handley/sdp.03.ps
          e=mjh@isi.edu (Mark Handley)
          c=IN IP4 224.2.17.12/127
          t=2873397496 2873404696
          a=recvonly
          m=audio 3456 RTP/AVP 0
          m=video 2232 RTP/AVP 31

    S->C: RTSP/1.0 200 OK
          CSeq: 7

TEARDOWN
    A TEARDOWN request is used to terminate the session. It stops all media streams and frees all session related data on the server.

    C->S: TEARDOWN rtsp://example.com/media.mp4 RTSP/1.0
          CSeq: 8
          Session: 12345678

    S->C: RTSP/1.0 200 OK
          CSeq: 8

GET_PARAMETER
    The GET_PARAMETER request retrieves the value of a parameter of a presentation or stream specified in the URI. The content of the reply and response is left to the implementation. GET_PARAMETER with no entity body may be used to test client or server liveness ("ping").

    S->C: GET_PARAMETER rtsp://example.com/media.mp4 RTSP/1.0
          CSeq: 9
          Content-Type: text/parameters
          Session: 12345678
          Content-Length: 15

          packets_received
          jitter

    C->S: RTSP/1.0 200 OK
          CSeq: 9
          Content-Length: 46
          Content-Type: text/parameters

          packets_received: 10
          jitter: 0.3838

SET_PARAMETER
    This method requests to set the value of a parameter for a presentation or stream specified by the URI.

    C->S: SET_PARAMETER rtsp://example.com/media.mp4 RTSP/1.0
          CSeq: 10
          Content-length: 20
          Content-type: text/parameters

          barparam: barstuff

    S->C: RTSP/1.0 451 Invalid Parameter
          CSeq: 10
          Content-length: 10
          Content-type: text/parameters

          barparam

REDIRECT
    A REDIRECT request informs the client that it must connect to another server location. It contains the mandatory header Location, which indicates that the client should issue requests for that URL. It may contain the parameter Range, which indicates when the redirection takes effect. If the client wants to continue to send or receive media for this URI, the client MUST issue a TEARDOWN request for the current session and a SETUP for the new session at the designated host.

    S->C: REDIRECT rtsp://example.com/media.mp4 RTSP/1.0
          CSeq: 11
          Location: rtsp://bigserver.com:8001
          Range: clock=19960213T143205Z-

Embedded (Interleaved) Binary Data
    Certain firewall designs and other circumstances may force a server to interleave RTSP methods and stream data. This interleaving should generally be avoided unless necessary since it complicates client and server operation and imposes additional overhead. Interleaved binary data SHOULD only be used if RTSP is carried over TCP. Stream data such as RTP packets is encapsulated by an ASCII dollar sign (24 hexadecimal), followed by a one-byte channel identifier, followed by the length of the encapsulated binary data as a binary, two-byte integer in network byte order. The stream data follows immediately afterwards, without a CRLF, but including the upper-layer protocol headers. Each $ block contains exactly one upper-layer protocol data unit, e.g., one RTP packet.

    C->S: SETUP rtsp://example.com/media.mp4 RTSP/1.0
          CSeq: 3
          Transport: RTP/AVP/TCP;interleaved=0-1

    S->C: RTSP/1.0 200 OK
          CSeq: 3
          Date: 05 Jun 1997 18:57:18 GMT
          Transport: RTP/AVP/TCP;interleaved=0-1
          Session: 12345678

    C->S: PLAY rtsp://example.com/media.mp4 RTSP/1.0
          CSeq: 4
          Session: 12345678

    S->C: RTSP/1.0 200 OK
          CSeq: 4
          Session: 12345678
          Date: 05 Jun 1997 18:59:15 GMT
          RTP-Info: url=rtsp://example.com/media.mp4;seq=232433;rtptime=972948234

    S->C: $\000{2 byte length}{"length" bytes data, w/RTP header}
    S->C: $\000{2 byte length}{"length" bytes data, w/RTP header}
    S->C: $\001{2 byte length}{"length" bytes  RTCP packet}


Rate adaptation

RTSP using RTP and RTCP allows for the implementation of rate adaptation.[5]


Implementations

Server

-   Darwin Streaming Server: Open-sourced version of QuickTime Streaming Server maintained by Apple.
-   Erlyvideo[6] has RTSP client and can restream video to other protocols.
-   Feng: Lean and mean streaming server with focus on rfc compliance.
-   GStreamer based RTSP Server and client.
-   Helix DNA Server: RealNetworks' streaming server. Comes in both open-source and proprietary flavors.
-   Helix Universal Server: RealNetworks commercial streaming server for RTSP, RTMP, iOS, Silverlight and HTTP streaming media clients
-   LEADTOOLS Media Streaming Server SDK from LEAD Technologies supports RTSP/RTP, RTSP/RTP (MPEG-2 Transport), RTSP/RTP over HTTP.
-   LIVE555 liveMedia / openRTSP: Open source C++ server and client libraries used in well-known clients like VLC and mplayer.
-   Managed Media Aggregation: .NET C# RFC compliant implementation of RTSP written in completely managed code.
-   Nimble Streamer supports RTSP pull and announce input with TCP interleaved playback output.
-   pvServer: Formerly called PacketVideo Streaming Server, this is Alcatel-Lucent's streaming server product.
-   QuickTime Streaming Server: Apple's closed-source streaming server that ships with Mac OS X Server.
-   SharpRTSP: Open source C# RTSP streaming server.
-   TV Server: Multi-format streaming server for RTSP/RTP, HTTP, HTTPS (HLS, MSS, MPEG-DASH), this is Edgeware's streaming server product, in software and hardware versions
-   ViaMotion: Integrated RTSP server for Video On Demand by Anevia
-   VideoLAN: Open source media player and streaming server.
-   VX30: Streaming video server and embedded Java client from Maui X-Stream.
-   Windows Media Services: Microsoft streaming server previously included with Windows Server that uses RTSP modified with Windows Media extensions
-   Wowza Streaming Engine: Multi-format streaming server for RTSP/RTP, RTMP, MPEG-TS, ICY, HTTP (HTTP Live Streaming, HTTP Dynamic Streaming, Smooth Streaming, MPEG-DASH), WebRTC
-   Xenon Streaming Server: Mobile streaming server from Vidiator Technology (US) Inc.
-   YouTube: Available streaming option when viewing site through the mobile HTTPS version on a desktop.

Many CCTV / Security cameras, often called IP Cameras, support RTSP streaming too, especially these with ONVIF profiles G, S, T.

Client

-   Astra
-   cURL (beginning with version 7.20.0—9 February 2010[7])
-   FFmpeg[8]
-   GStreamer
-   JetAudio
-   LIVE555 liveMedia / openRTSP: Open source C++ server and client libraries used in well-known clients like VLC and mplayer.
-   Media Player Classic
-   MPlayer
-   MythTV via Freebox
-   Managed Media Aggregation: .NET C# RFC compliant implementation of RTSP written in completely managed code.
-   omxplayer
-   QuickTime
-   RealPlayer
-   SeeStreamSharp: RTSP client implementing recording of media streams to the ISO base media file format. (Open source, .NET, task-based asynchronous method invocation, pure managed C# code.)
-   SharpRTSP: Open source C# RTSP streaming client.
-   Skype
-   Spotify
-   VLC media player
-   Winamp
-   Windows Media Player
-   xine


References


External links

-   , a central information repository about RTSP.

-   , A standard solution to help RTSP work through firewalls and web proxies

-   "Managed Media Aggregation using Rtsp and Rtp", Walks a developer through the implementation of a standards compliant RtspClient and RtspServer.

Category:Application layer protocols

[1]

[2]

[3] RFC 2326, _Real Time Streaming Protocol (RTSP)_, IETF, 1998

[4]

[5]

[6] erlyvideo website

[7] cURL — Changes

[8]