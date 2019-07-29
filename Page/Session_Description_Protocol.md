The SESSION DESCRIPTION PROTOCOL (SDP) is a format for describing streaming media communications parameters. The IETF published the original specification as an IETF Proposed Standard in April 1998,[1] and subsequently published a revised specification as an IETF Proposed Standard as RFC 4566 in July 2006.[2]

SDP is used for describing multimedia communication sessions for the purposes of session announcement, session invitation, and parameter negotiation. SDP does not deliver any media by itself but is used between endpoints for negotiation of media type, format, and all associated properties. The set of properties and parameters are often called a _session profile_.

SDP is designed to be extensible to support new media types and formats. SDP started off as a component of the Session Announcement Protocol (SAP),[3] but found other uses in conjunction with Real-time Transport Protocol (RTP), Real-time Streaming Protocol (RTSP), Session Initiation Protocol (SIP) and even as a standalone format for describing multicast sessions.


Session description

A session is described by a series of fields, one per line.[4] The form of each field is as follows.

    =

Where is a single case-sensitive character and is structured text whose format depends upon attribute type. Values are typically a UTF-8 encoding.[5] Whitespace is not allowed immediately to either side of the =.[6]

Within an SDP message there are three main sections, detailing the _session_, _timing_, and _media_ descriptions. Each message may contain multiple _timing_ and _media_ descriptions. Names are only unique within the associated syntactic construct, i.e. within the _session_, _time_, or _media_.[7]

Optional values are specified with =* and each field must appear in the order shown below.

Session description
    v=  (protocol version number, currently only 0)
    o=  (originator and session identifier : username, id, version number, network address)
    s=  (session name : mandatory with at least one UTF-8-encoded character)
    i=* (session title or short information)
    u=* (URI of description)
    e=* (zero or more email address with optional name of contacts)
    p=* (zero or more phone number with optional name of contacts)
    c=* (connection information—not required if included in all media)
    b=* (zero or more bandwidth information lines)
    _One or more Time descriptions ("t=" and "r=" lines; see below)_
    z=* (time zone adjustments)
    k=* (encryption key)
    a=* (zero or more session attribute lines)
    _Zero or more Media descriptions (each one starting by an "m=" line; see below)_

Time description (mandatory)
    t=  (time the session is active)
    r=* (zero or more repeat times)

Media description (if present)
    m=  (media name and transport address)
    i=* (media title or information field)
    c=* (connection information — optional if included at session level)
    b=* (zero or more bandwidth information lines)
    k=* (encryption key)
    a=* (zero or more media attribute lines — overriding the Session attribute lines)

Below is a sample session description from RFC 4566. This session is originated by the user 'jdoe', at IPv4 address 10.47.16.5. Its name is "SDP Seminar" and extended session information ("A Seminar on the session description protocol") is included along with a link for additional information and an email address to contact the responsible party, Jane Doe. This session is specified to last for two hours using NTP timestamps, with a connection address (which indicates the address clients must connect to or — when a multicast address is provided, as it is here — subscribe to) specified as IPv4 224.2.17.12 with a TTL of 127. Recipients of this session description are instructed to only receive media. Two media descriptions are provided, both using RTP Audio Video Profile. The first is an audio stream on port 49170 using RTP/AVP payload type 0 (defined by RFC 3551 as PCMU), and the second is a video stream on port 51372 using RTP/AVP payload type 99 (defined as "dynamic"). Finally, an attribute is included which maps RTP/AVP payload type 99 to format h263-1998 with a 90kHz clock rate. RTCP ports for the audio and video streams of 49171 and 51373, respectively, are implied.

    v=0
    o=jdoe 2890844526 2890842807 IN IP4 10.47.16.5
    s=SDP Seminar
    i=A Seminar on the session description protocol
    u=http://www.example.com/seminars/sdp.pdf
    e=j.doe@example.com (Jane Doe)
    c=IN IP4 224.2.17.12/127
    t=2873397496 2873404696
    a=recvonly
    m=audio 49170 RTP/AVP 0
    m=video 51372 RTP/AVP 99
    a=rtpmap:99 h263-1998/90000

The SDP specification does not incorporate any transport protocol; it is purely a format for session description. It is intended to use different transport protocols as necessary, including SAP, SIP, and RTSP. SDP could even be transmitted by email or as an HTTP payload.


Attributes

SDP uses attributes to extend the core protocol. Attributes can appear within the Session or Media sections and are scoped accordingly as _session-level_ or _media-level_. New attributes are added to the standard occasionally through registration with IANA.[8]

Attributes take two forms:

-   A property form: a=_flag_ conveys a simple boolean property of the media or session.
-   A value form: a=_attribute_:_value_ provides a named parameter.

Two of these attributes are specially defined:

-   a=charset:_encoding_
-   a=sdplang:_code_

The first one is used in the Session or Media sections to specify another character encoding (as registered in the IANA registry[9]) than the default one highly recommended (UTF-8) where it is used in standard protocol keys whose values are containing a text intended to be displayed to a user. The second one is used to specify in which language it is written (alternate texts in multiple languages may be carried in the protocol, and selected automatically by the user agent according to user preferences. In both cases, each textual field in the protocol which are not interpreted symbolically by the protocol itself, will be interpreted as opaque strings, but rendered to the user or application with the values indicated in the last occurrence of the charset and sdplang in the current Media section, or otherwise their last value in the Session section).

Note that the first 3 mandatory parameters (V=, S= and O=), even though they seem to contain displayable text, are not intended to be displayed to users and translated. The fields present in their values are considered in the protocol as opaque strings, they are used as identifiers, just like paths in an URL or filenames in a file system: the SDP standard indicates that they must be all non empty and should be UTF-8 encoded.

A few other attributes (described as part the standard SDP specifications in the same RFC) are also shown in the example above, either as a session-level attribute (such as the attribute in property form a=recvonly) which also applies to the described medias unless they override their value, or as a media-level attribute (such as the attribute in value form a=rtpmap:99 h263-1998/90000 for the video media in the example).


Time formats and repetitions

Absolute times are represented in Network Time Protocol (NTP) format (the number of seconds since 1900). If the stop time is 0 then the session is "unbounded." If the start time is also zero then the session is considered "permanent." Unbounded and permanent sessions are discouraged but not prohibited. Intervals can be represented with Network Time Protocol times or in typed time: a value and time units (days ('d'), hours ('h'), minutes ('m') and seconds ('s')) sequence.

Thus an hour meeting from 10am UTC on 1 August 2010, with a single repeat time a week later at the same time can be represented as:

        t={{#time:U|2010-08-01T10:00Z}} {{#time:U|2010-08-08T11:00Z}}
        r=604800 3600 0

Or using typed time:

        t={{#time:U|2010-08-01T10:00Z}} {{#time:U|2010-08-08T11:00Z}}
        r=7d 1h 0

When repeat times are specified, the start time of each repetition may need to be adjusted so that it will occur at the same local time in a specific timezone throughout the period between the start time and the stop time (which are still specified in NTP format in an absolute UTC timezone.

Instead of specifying this timezone and having to support a database of timezones for knowing when and where daylight adjustments will be needed, the repeat times are assumed to be all defined within the same timezone, and SDP supports the indication of NTP absolute times when a daylight offset (expressed in seconds or using a type time) will need to be applied to the repeated start time or end time falling at or after each daylight adjustment. All these offsets are relative to the start time, they are not cumulative. NTP supports this with the z= field which indicates a series of pairs, whose first item is the NTP absolute time when a daylight adjustment will occur, and the second item indicates the offset to apply relative to the absolute times computed with the r= field.

For example, if a daylight adjustment will subtract 1 hour on 31 October 2010 at 03am UTC (i.e. 60 days minus 7 hours after the start time on Sunday 1 August 2010 at 10am UTC), and this will be the only daylight adjustment to apply in the scheduled period which would occur between 1 August 2010 up to the 28 November 2010 at 10am UTC (the stop time of the repeated 1h session which is repeated each week at the same local time, which occurs 88 days later), this can be specified as:

        t={{#time:U|2010-08-01T10:00Z}} {{#time:U|2010-11-28T10:00Z}}
        r=7d 1h 0
        z={{#time:U|2010-10-31T03:00Z}} -1h

If the weekly 1-hour session was repeated every Sunday for full one year, i.e. from Sunday 1 August 2010 03am UTC to Sunday 26 June 2011 04am UTC (stop time of the last repeat, i.e. 360 days plus 1 hour later, or 31107600 seconds later), so that it would include the transition back to Summer time on Sunday 27 March 2011 at 02am (1 hour is added again to local time, so that the second daylight transition would occur 209 days after the first start time):

        t={{#time:U|2010-08-01T10:00Z}} {{#time:U|2010-11-28T10:00Z}}
        r=7d 1h 0
        z={{#time:U|2010-10-31T03:00Z}} -1h {{#time:U|2010-03-27T02:00Z}} 0

As SDP announcements for repeated sessions should not be made to cover very long periods exceeding a few years, the number of daylight adjustments to include in the z= parameter should remain small.

Note also that sessions may be repeated irregularly over a week but scheduled the same way for all weeks in the period, by adding more tuples in the _r_ parameter. For example, to schedule the same event also on Saturday (at the same time of the day) you would use :

        t={{#time:U|2010-08-01T10:00Z}} {{#time:U|2010-11-28T10:00Z}}
        r=7d 1h 0 6d
        z={{#time:U|2010-10-31T03:00Z}} -1h {{#time:U|2010-03-27T02:00Z}} 0

The SDP protocol does not support repeating sessions monthly and yearly schedules with such simple repeat times, because they are irregularly spaced in time; instead, additional _t_/_r_ tuples may be supplied for each month or year.


Notes


References


External links

-

Category:Internet Standards Category:Java specification requests Category:VoIP protocols

[1]

[2]

[3]

[4] Each line is separated from the next by a carriage return/line feed sequence. Implementations are allowed to relax this to omit the carriage return and supply only the line feed.

[5] _session information_ and _session name_ values are subject to the encoding specified in any _charset_ attribute of the section.

[6]

[7] An In-Depth Overview of SDP

[8] Registry of the SDP Parameters, on the Internet Assigned Numbers Authority site

[9] Registry of the Character Sets Encodings, on the Internet Assigned Numbers Authority site